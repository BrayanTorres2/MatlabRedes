function varargout = analoga(varargin)
% ANALOGA MATLAB code for analoga.fig
%      ANALOGA, by itself, creates a new ANALOGA or raises the existing
%      singleton*.
%
%      H = ANALOGA returns the handle to a new ANALOGA or the handle to
%      the existing singleton*.
%
%      ANALOGA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ANALOGA.M with the given input arguments.
%
%      ANALOGA('Property','Value',...) creates a new ANALOGA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before analoga_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to analoga_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help analoga

% Last Modified by GUIDE v2.5 09-Aug-2019 16:14:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @analoga_OpeningFcn, ...
                   'gui_OutputFcn',  @analoga_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before analoga is made visible.
function analoga_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to analoga (see VARARGIN)

% Choose default command line output for analoga
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes analoga wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = analoga_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function amplitud_Callback(hObject, eventdata, handles)
% hObject    handle to amplitud (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of amplitud as text
%        str2double(get(hObject,'String')) returns contents of amplitud as a double


% --- Executes during object creation, after setting all properties.
function amplitud_CreateFcn(hObject, eventdata, handles)
% hObject    handle to amplitud (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function frecuencia_Callback(hObject, eventdata, handles)
% hObject    handle to frecuencia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of frecuencia as text
%        str2double(get(hObject,'String')) returns contents of frecuencia as a double


% --- Executes during object creation, after setting all properties.
function frecuencia_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frecuencia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function periodos_Callback(hObject, eventdata, handles)
% hObject    handle to periodos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of periodos as text
%        str2double(get(hObject,'String')) returns contents of periodos as a double


% --- Executes during object creation, after setting all properties.
function periodos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to periodos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function frecuencia1_Callback(hObject, eventdata, handles)
% hObject    handle to frecuencia1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of frecuencia1 as text
%        str2double(get(hObject,'String')) returns contents of frecuencia1 as a double


% --- Executes during object creation, after setting all properties.
function frecuencia1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frecuencia1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in generar.
function generar_Callback(hObject, eventdata, handles)
clc 

% datos de entrada

%datos del carrier
Ac=10;
fc=1000e3;%fc =1000KHz
cpc=18;
%datos analogos xt
Ax=str2num(get(handles.amplitud,'String'));  
fx=str2num(get(handles.frecuencia,'String'));  
cpx=str2num(get(handles.periodos,'String'));  
%datos de am
m=0.4
%indice de modulacion FM 
Nfm=2;
%indice de modulacion PM 
Npm=2;
%Proceso
tc=linspace(0,cpc/fc,500);
carrier=Ac*sin(2*pi*fc*tc);
%Construccion Carrier
tx=linspace(0,cpx/fx,500);
xt=Ax*sin(2*pi*fx*tx);
%modulacion AM
Xam=(1+m*xt).*carrier;
%modulacion FM
Xfm=Ac*sin(2*pi*fc*tc+Nfm*xt)
%moduacion PM
xt_diff=Ax*cos(2*pi*fx*tx);
Xpm=Ac*sin(2*pi*fc*tc+Npm*xt_diff)
%Salida
axes(handles.axes1)
plot(tc,Xam),title('Modulacion AM '),grid on
axes(handles.axes2)
plot(tc,Xfm),title('Modulacion Fm'),grid on
axes(handles.axes3)
plot(tc,Xpm),title('Modulacion PM'),grid on


% --- Executes on button press in salir.
function salir_Callback(hObject, eventdata, handles)
close
