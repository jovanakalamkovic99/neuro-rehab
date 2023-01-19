function varargout = Butter(varargin)
% BUTTER MATLAB code for Butter.fig
%      BUTTER, by itself, creates a new BUTTER or raises the existing
%      singleton*.
%
%      H = BUTTER returns the handle to a new BUTTER or the handle to
%      the existing singleton*.
%
%      BUTTER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BUTTER.M with the given input arguments.
%
%      BUTTER('Property','Value',...) creates a new BUTTER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Butter_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Butter_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Butter

% Last Modified by GUIDE v2.5 09-May-2021 21:32:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Butter_OpeningFcn, ...
                   'gui_OutputFcn',  @Butter_OutputFcn, ...
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


% --- Executes just before Butter is made visible.
function Butter_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Butter (see VARARGIN)

% Choose default command line output for Butter
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Butter wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Butter_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes when selected object is changed in uibuttongroupTipSignala.
function uibuttongroupTipSignala_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroupTipSignala 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
radioNF = get(handles.radiobuttonNF,'Value');
radioVF = get(handles.radiobuttonVF,'Value');
radioBP = get(handles.radiobuttonBP,'Value');
radioBS = get(handles.radiobuttonBS,'Value');
handles.tip = '';

if radioNF == 1
    handles.tip = 'NF';
    set(handles.editFp2, 'enable', 'off');
    set(handles.editFa2, 'enable', 'off');
elseif radioVF == 1
    handles.tip = 'VF';
    set(handles.editFp2, 'enable', 'off');
    set(handles.editFa2, 'enable', 'off');
elseif radioBP == 1
    handles.tip = 'BP';
    set(handles.editFp2, 'enable', 'on');
    set(handles.editFa2, 'enable', 'on');
elseif radioBS == 1
    handles.tip = 'BS';
    set(handles.editFp2, 'enable', 'on');
    set(handles.editFa2, 'enable', 'on');
end
guidata(hObject, handles);


function editFp1_Callback(hObject, eventdata, handles)
% hObject    handle to editFp1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editFp1 as text
%        str2double(get(hObject,'String')) returns contents of editFp1 as a double


% --- Executes during object creation, after setting all properties.
function editFp1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editFp1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editFa1_Callback(hObject, eventdata, handles)
% hObject    handle to editFa1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editFa1 as text
%        str2double(get(hObject,'String')) returns contents of editFa1 as a double


% --- Executes during object creation, after setting all properties.
function editFa1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editFa1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editAlfaP_Callback(hObject, eventdata, handles)
% hObject    handle to editAlfaP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editAlfaP as text
%        str2double(get(hObject,'String')) returns contents of editAlfaP as a double


% --- Executes during object creation, after setting all properties.
function editAlfaP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editAlfaP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editAlfaA_Callback(hObject, eventdata, handles)
% hObject    handle to editAlfaA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editAlfaA as text
%        str2double(get(hObject,'String')) returns contents of editAlfaA as a double


% --- Executes during object creation, after setting all properties.
function editAlfaA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editAlfaA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editFp2_Callback(hObject, eventdata, handles)
% hObject    handle to editFp2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editFp2 as text
%        str2double(get(hObject,'String')) returns contents of editFp2 as a double


% --- Executes during object creation, after setting all properties.
function editFp2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editFp2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editFa2_Callback(hObject, eventdata, handles)
% hObject    handle to editFa2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editFa2 as text
%        str2double(get(hObject,'String')) returns contents of editFa2 as a double


% --- Executes during object creation, after setting all properties.
function editFa2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editFa2 (see GCBO)
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
str1 = get(handles.editFp1,'String');
Fp1 = str2num(str1);
str2 = get(handles.editFa1,'String');
Fa1 = str2num(str2);
str3 = get(handles.editAlfaP,'String');
AlfaP = str2num(str3);
str4 = get(handles.editAlfaA,'String');
AlfaA = str2num(str4);
str5 = get(handles.editFp2,'String');
Fp2 = str2num(str5);
str6 = get(handles.editFa2,'String');
Fa2 = str2num(str6);

guidata(hObject, handles);
data = struct('tip',handles.tip,'Fp1',Fp1,'Fa1',Fa1,'AlfaP',AlfaP,'AlfaA',AlfaA,'Fp2',Fp2,'Fa2',Fa2);
close(Butter);
uiresume()
