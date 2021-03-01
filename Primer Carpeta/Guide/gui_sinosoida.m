function varargout = gui_sinosoida(varargin)
% GUI_SINOSOIDA MATLAB code for gui_sinosoida.fig
%      GUI_SINOSOIDA, by itself, creates a new GUI_SINOSOIDA or raises the existing
%      singleton*.
%
%      H = GUI_SINOSOIDA returns the handle to a new GUI_SINOSOIDA or the handle to
%      the existing singleton*.
%
%      GUI_SINOSOIDA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_SINOSOIDA.M with the given input arguments.
%
%      GUI_SINOSOIDA('Property','Value',...) creates a new GUI_SINOSOIDA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_sinosoida_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_sinosoida_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_sinosoida

% Last Modified by GUIDE v2.5 29-Jul-2019 10:51:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_sinosoida_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_sinosoida_OutputFcn, ...
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


% --- Executes just before gui_sinosoida is made visible.
function gui_sinosoida_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_sinosoida (see VARARGIN)

% Choose default command line output for gui_sinosoida
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_sinosoida wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_sinosoida_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in salir.
function salir_Callback(hObject, eventdata, handles)
close



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



function face_Callback(hObject, eventdata, handles)
% hObject    handle to face (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of face as text
%        str2double(get(hObject,'String')) returns contents of face as a double


% --- Executes during object creation, after setting all properties.
function face_CreateFcn(hObject, eventdata, handles)
% hObject    handle to face (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cantidad_Callback(hObject, eventdata, handles)
% hObject    handle to cantidad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cantidad as text
%        str2double(get(hObject,'String')) returns contents of cantidad as a double


% --- Executes during object creation, after setting all properties.
function cantidad_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cantidad (see GCBO)
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
%--DATOS--
A=str2num(get(handles.amplitud,'String'));        %Voltaje::Volts(v)
f=str2num(get(handles.frecuencia,'String'));     %Frecuencia::Hertz(hz)
cantper=str2num(get(handles.cantidad,'String')); 

%--PROCESOS--
phi_1=0;%fase:: radians(rad)
phi_2=pi/2;%fase:: radians(rad)
phi_3=pi;%fase:: radians(rad)
phi_4=3*pi/2;%fase:: radians(rad)
t=linspace(0,cantper*1/f,500);
xt_1=A*sin(2*pi*f*t + phi_1);
xt_2=A*sin(2*pi*f*t + phi_2);
xt_3=A*sin(2*pi*f*t + phi_3);
xt_4=A*sin(2*pi*f*t + phi_4);

%--RESULTADOS--
axes(handles.axes1)
plot(t,xt_1), title('sen'), grid on
axes(handles.axes2)
plot(t,xt_2), title('cos'), grid on
axes(handles.axes3)
plot(t,xt_3), title('-sen'), grid on
axes(handles.axes4)
plot(t,xt_4), title('-cos'), grid on



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
