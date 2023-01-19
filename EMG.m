function varargout = EMG(varargin)
% EMG MATLAB code for EMG.fig
%      EMG, by itself, creates a new EMG or raises the existing
%      singleton*.
%
%      H = EMG returns the handle to a new EMG or the handle to
%      the existing singleton*.
%
%      EMG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EMG.M with the given input arguments.
%
%      EMG('Property','Value',...) creates a new EMG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before EMG_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to EMG_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help EMG

% Last Modified by GUIDE v2.5 16-Jun-2021 11:49:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @EMG_OpeningFcn, ...
                   'gui_OutputFcn',  @EMG_OutputFcn, ...
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


% --- Executes just before EMG is made visible.
function EMG_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to EMG (see VARARGIN)

% Choose default command line output for EMG
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes EMG wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = EMG_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in pushbuttonPrikazi.
function pushbuttonPrikazi_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonPrikazi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    load('EMG_signal1.mat');
    handles.ucitani1 = data;
    signal1 = handles.ucitani1.signal;
    Fs1 = handles.ucitani1.Fs;
    handles.t1 = 0:1/Fs1:(length(signal1)-1)/Fs1;
    t1 = handles.t1;
    axes(handles.axes1)
    plot(t1,signal1);
    handles.signal1 = signal1;
    handles.Fs1 = Fs1;
    
    load('EMG_signal2.mat');
    handles.ucitani2 = data;
    signal2 = handles.ucitani2.signal;
    Fs2 = handles.ucitani2.Fs;
    handles.t2 = 0:1/Fs2:(length(signal2)-1)/Fs2;
    t2 = handles.t1;
    axes(handles.axes2)
    plot(t2,signal2);
    handles.signal2 = signal2;
    handles.Fs2 = Fs2;
    
    guidata(hObject, handles)

% --- Executes on button press in pushbuttonAnvelopa.
function pushbuttonAnvelopa_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonAnvelopa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[b,a] = butter(5,0.003,'low');
signal1_filt = filter(b,a,(handles.signal1.*handles.signal1));
anvelopa1 = sqrt(signal1_filt);
handles.anvelopa1 = anvelopa1;

axes(handles.axes1)
plot(handles.t1,handles.signal1,'b');
hold on
plot(handles.t1,anvelopa1,'r')
%legend('EMG signal 1','Anvelopa')

signal2_filt = filter(b,a,(handles.signal2.*handles.signal2));
anvelopa2 = sqrt(signal2_filt);
handles.anvelopa2 = anvelopa2;

axes(handles.axes2)
plot(handles.t2,handles.signal2,'b');
hold on
plot(handles.t2,anvelopa2,'r')
%legend('EMG signal 2','Anvelopa')

guidata(hObject, handles)

% --- Executes on button press in pushbuttonFleksEks.
function pushbuttonFleksEks_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonFleksEks (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1)
plot(handles.t1,handles.signal1,'b');
hold on
plot(handles.t1,handles.anvelopa1,'r')

axes(handles.axes2)
plot(handles.t2,handles.signal2,'b');
hold on
plot(handles.t2,handles.anvelopa2,'r')

m = [];

for i = 1:length(handles.anvelopa1)
    if handles.anvelopa1(i) > 0.2
        m = [m i];
    end
end

m = flip(m);
n = [m(1)];

for i = 2:length(m)
    if abs(m(i) - m(i-1)) > 1700
        n = [n m(i)];
    end
end

t = handles.t2(n);
t = flip(t)

m1 = flip(m);
n2 = [m1(1)];

for i = 2:length(m1)
    if abs(m1(i) - m1(i-1)) > 1700
        n2 = [n2 m1(i)];
    end
end

t2 = handles.t2(n2)
%t2 = flip(t2)

%y11 = sum(abs(diff(handles.anvelopa1(t2(1):t(1)))));
%y21 = sum(abs(diff(handles.anvelopa2(t2(1):t(1)))));
%y11 = rms(handles.anvelopa1(t2(1):t(1)))^2;
%y21 = rms(handles.anvelopa2(t2(1):t(1)))^2;
%y11 = trapz(handles.anvelopa1(t2(1):t(1)))
%y21 = trapz(handles.anvelopa2(t2(1):t(1)))
%y11 = integral(handles.anvelopa1,t2(1),t(1));
%y21 = integral(handles.anvelopa2,t2(1),t(1));
y11 = findpeaks(handles.signal1,'MinPeakDistance',3500)
y21 = findpeaks(handles.signal2,'MinPeakDistance',4000)

for j = 1:length(y11)
    if y11(j) > y21(j)
        text(t(j),0,'Flexion','Color','Yellow')
    else
        text(t(j),0,'Extention','Color','Yellow')
    end
end

guidata(hObject, handles)

% --- Executes on button press in pushbuttonZatvori.
function pushbuttonZatvori_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonZatvori (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(EMG);
uiresume()
