function varargout = ZeroPole(varargin)
% ZEROPOLE MATLAB code for ZeroPole.fig
%      ZEROPOLE, by itself, creates a new ZEROPOLE or raises the existing
%      singleton*.
%
%      H = ZEROPOLE returns the handle to a new ZEROPOLE or the handle to
%      the existing singleton*.
%
%      ZEROPOLE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ZEROPOLE.M with the given input arguments.
%
%      ZEROPOLE('Property','Value',...) creates a new ZEROPOLE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ZeroPole_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ZeroPole_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ZeroPole

% Last Modified by GUIDE v2.5 09-May-2021 19:50:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ZeroPole_OpeningFcn, ...
                   'gui_OutputFcn',  @ZeroPole_OutputFcn, ...
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


% --- Executes just before ZeroPole is made visible.
function ZeroPole_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ZeroPole (see VARARGIN)

% Choose default command line output for ZeroPole
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ZeroPole wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ZeroPole_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radiobuttonNF.
function radiobuttonNF_Callback(hObject, eventdata, handles)
% hObject    handle to radiobuttonNF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobuttonNF


% --- Executes on button press in radiobuttonVF.
function radiobuttonVF_Callback(hObject, eventdata, handles)
% hObject    handle to radiobuttonVF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobuttonVF


% --- Executes on button press in radiobuttonBandPass.
function radiobuttonBandPass_Callback(hObject, eventdata, handles)
% hObject    handle to radiobuttonBandPass (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobuttonBandPass


% --- Executes on button press in radiobuttonBandStop.
function radiobuttonBandStop_Callback(hObject, eventdata, handles)
% hObject    handle to radiobuttonBandStop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobuttonBandStop



function editPPNule_Callback(hObject, eventdata, handles)
% hObject    handle to editPPNule (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editPPNule as text
%        str2double(get(hObject,'String')) returns contents of editPPNule as a double


% --- Executes during object creation, after setting all properties.
function editPPNule_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editPPNule (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editUgaoNule_Callback(hObject, eventdata, handles)
% hObject    handle to editUgaoNule (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editUgaoNule as text
%        str2double(get(hObject,'String')) returns contents of editUgaoNule as a double


% --- Executes during object creation, after setting all properties.
function editUgaoNule_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editUgaoNule (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editPPPola_Callback(hObject, eventdata, handles)
% hObject    handle to editPPPola (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editPPPola as text
%        str2double(get(hObject,'String')) returns contents of editPPPola as a double


% --- Executes during object creation, after setting all properties.
function editPPPola_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editPPPola (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editUgaoPola_Callback(hObject, eventdata, handles)
% hObject    handle to editUgaoPola (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editUgaoPola as text
%        str2double(get(hObject,'String')) returns contents of editUgaoPola as a double


% --- Executes during object creation, after setting all properties.
function editUgaoPola_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editUgaoPola (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when selected object is changed in uibuttongroupTipFiltra.
function uibuttongroupTipFiltra_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroupTipFiltra 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
radioNF = get(handles.radiobuttonNF,'Value');
radioVF = get(handles.radiobuttonVF,'Value');
radioBandpass = get(handles.radiobuttonBandPass,'Value');
radioBandstop = get(handles.radiobuttonBandStop,'Value');
handles.tip = '';

if radioNF == 1
    handles.tip = 'NF';
    set(handles.editPPNule2, 'enable', 'off');
    set(handles.editPPPola2, 'enable', 'off');
    set(handles.editUgaoNule2, 'enable', 'off');
    set(handles.editUgaoPola2, 'enable', 'off');
elseif radioVF == 1
    handles.tip = 'VF';
    set(handles.editPPNule2, 'enable', 'off');
    set(handles.editPPPola2, 'enable', 'off');
    set(handles.editUgaoNule2, 'enable', 'off');
    set(handles.editUgaoPola2, 'enable', 'off');
elseif radioBandpass == 1
    handles.tip = 'BP';
    set(handles.editPPNule2, 'enable', 'on');
    set(handles.editPPPola2, 'enable', 'on');
    set(handles.editUgaoNule2, 'enable', 'on');
    set(handles.editUgaoPola2, 'enable', 'on');
elseif radioBandstop == 1
    handles.tip = 'BS';
    set(handles.editPPNule2, 'enable', 'on');
    set(handles.editPPPola2, 'enable', 'on');
    set(handles.editUgaoNule2, 'enable', 'on');
    set(handles.editUgaoPola2, 'enable', 'on');
end
guidata(hObject, handles);


function editPPNule2_Callback(hObject, eventdata, handles)
% hObject    handle to editPPNule2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editPPNule2 as text
%        str2double(get(hObject,'String')) returns contents of editPPNule2 as a double


% --- Executes during object creation, after setting all properties.
function editPPNule2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editPPNule2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editUgaoNule2_Callback(hObject, eventdata, handles)
% hObject    handle to editUgaoNule2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editUgaoNule2 as text
%        str2double(get(hObject,'String')) returns contents of editUgaoNule2 as a double


% --- Executes during object creation, after setting all properties.
function editUgaoNule2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editUgaoNule2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editPPPola2_Callback(hObject, eventdata, handles)
% hObject    handle to editPPPola2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editPPPola2 as text
%        str2double(get(hObject,'String')) returns contents of editPPPola2 as a double


% --- Executes during object creation, after setting all properties.
function editPPPola2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editPPPola2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editUgaoPola2_Callback(hObject, eventdata, handles)
% hObject    handle to editUgaoPola2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editUgaoPola2 as text
%        str2double(get(hObject,'String')) returns contents of editUgaoPola2 as a double


% --- Executes during object creation, after setting all properties.
function editUgaoPola2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editUgaoPola2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbuttonSaveNClose.
function pushbuttonSaveNClose_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonSaveNClose (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global data;
str1 = get(handles.editPPNule,'String');
ppNule = str2num(str1);
str2 = get(handles.editUgaoNule,'String');
ugaoNule = str2num(str2);
str3 = get(handles.editPPPola,'String');
ppPola = str2num(str3);
str4 = get(handles.editUgaoPola,'String');
ugaoPola = str2num(str4);

str5 = get(handles.editPPNule2,'String');
ppNule2 = str2num(str5);
str6 = get(handles.editUgaoNule2,'String');
ugaoNule2 = str2num(str6);
str7 = get(handles.editPPPola2,'String');
ppPola2 = str2num(str7);
str8 = get(handles.editUgaoPola2,'String');
ugaoPola2 = str2num(str8);

guidata(hObject, handles);
data = struct('tip',handles.tip,'ppnule',ppNule,'ugaonule',ugaoNule,'pppola',ppPola,'ugaopola',ugaoPola,'ppnule2',ppNule2,'ugaonule2',ugaoNule2,'pppola2',ppPola2,'ugaopola2',ugaoPola2);
    
close(ZeroPole);
uiresume()