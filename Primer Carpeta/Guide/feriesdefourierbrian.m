function varargout = feriesdefourierbrian(varargin)
% FERIESDEFOURIERBRIAN MATLAB code for feriesdefourierbrian.fig
%      FERIESDEFOURIERBRIAN, by itself, creates a new FERIESDEFOURIERBRIAN or raises the existing
%      singleton*.
%
%      H = FERIESDEFOURIERBRIAN returns the handle to a new FERIESDEFOURIERBRIAN or the handle to
%      the existing singleton*.
%
%      FERIESDEFOURIERBRIAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FERIESDEFOURIERBRIAN.M with the given input arguments.
%
%      FERIESDEFOURIERBRIAN('Property','Value',...) creates a new FERIESDEFOURIERBRIAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before feriesdefourierbrian_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to feriesdefourierbrian_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help feriesdefourierbrian

% Last Modified by GUIDE v2.5 09-Aug-2019 13:41:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @feriesdefourierbrian_OpeningFcn, ...
                   'gui_OutputFcn',  @feriesdefourierbrian_OutputFcn, ...
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


% --- Executes just before feriesdefourierbrian is made visible.
function feriesdefourierbrian_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to feriesdefourierbrian (see VARARGIN)

% Choose default command line output for feriesdefourierbrian
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes feriesdefourierbrian wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = feriesdefourierbrian_OutputFcn(hObject, eventdata, handles) 
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
%---Datos---
A=str2num(get(handles.amplitud,'String'));  
f=str2num(get(handles.frecuencia,'String'));  
cp=str2num(get(handles.periodos,'String'));  
comp_freq=str2num(get(handles.frecuencia1,'String'));  
phi=0;

%---Procesos---
t=linspace(0,cp/f,500);
sinusoidal=A*sin(2*pi*f*t+phi);
%senal cuadrada
cuadrada=0;
for n=1:2:(comp_freq*2-1)
    cuadrada = cuadrada + (A/n)*sin(2*pi*n*f*t);
end
%senal  triangular
triangular=0;
for n=1:2:(2*comp_freq-1)
    triangular = triangular + (A/n^2)*cos(2*pi*n*f*t);
end
%Diente de Sierra
dsierra=0;
for n=1:(comp_freq)
    if(mod(n,2)==0)
        signo=-1;
    else
        signo=0;
    end
    dsierra = dsierra + signo*(A/n)*sin(2*pi*n*f*t);
end
%---Resultados---
figure(1)
subplot(3,2,1),
subplot(3,2,2),plot(t,cuadrada),title('señal cuadrada: 2CF'), grid on
subplot(3,2,3),plot(t,triangular),title('señal triangular: 3CF'), grid on
subplot(3,2,4),plot(t,dsierra),title('señal dientesSierra: 4CF'), grid on
%--RESULTADOS--
axes(handles.axes1)
plot(t,sinusoidal),title('señal sinosoidal: 1CF'), grid on
axes(handles.axes2)
plot(t,triangular),title('señal triangular: 3CF'), grid on
axes(handles.axes3)
plot(t,dsierra),title('señal dientesSierra: 4CF'), grid on

% --- Executes on button press in salir.
function salir_Callback(hObject, eventdata, handles)
close
