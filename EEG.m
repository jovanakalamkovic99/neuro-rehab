function varargout = EEG(varargin)
% EEG MATLAB code for EEG.fig
%      EEG, by itself, creates a new EEG or raises the existing
%      singleton*.
%
%      H = EEG returns the handle to a new EEG or the handle to
%      the existing singleton*.
%
%      EEG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EEG.M with the given input arguments.
%
%      EEG('Property','Value',...) creates a new EEG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before EEG_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to EEG_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help EEG

% Last Modified by GUIDE v2.5 16-Jun-2021 15:57:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @EEG_OpeningFcn, ...
                   'gui_OutputFcn',  @EEG_OutputFcn, ...
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


% --- Executes just before EEG is made visible.
function EEG_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to EEG (see VARARGIN)

% Choose default command line output for EEG
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes EEG wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = EEG_OutputFcn(hObject, eventdata, handles) 
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
    load('EMG_signal3.mat');
    handles.ucitani1 = data;
    signal1 = handles.ucitani1.EMG;
    Fs1 = handles.ucitani1.Fs;
    handles.t1 = 0:1/Fs1:(length(signal1)-1)/Fs1;
    t1 = handles.t1;
    axes(handles.axes1)
    plot(t1,signal1);
    handles.signal1 = signal1;
    handles.Fs1 = Fs1;
    
    load('EEG.mat');
    handles.ucitani2 = data;
    signal2 = handles.ucitani2.EEG;
    Fs2 = handles.ucitani2.Fs;
    handles.t2 = 0:1/Fs2:(length(signal2)-1)/Fs2;
    t2 = handles.t1;
    axes(handles.axes2)
    plot(t2,signal2);
    handles.signal2 = signal2;
    handles.Fs2 = Fs2;
    
    guidata(hObject, handles)



function editWindow_Callback(hObject, eventdata, handles)
% hObject    handle to editWindow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editWindow as text
%        str2double(get(hObject,'String')) returns contents of editWindow as a double


% --- Executes during object creation, after setting all properties.
function editWindow_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editWindow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editNoverlap_Callback(hObject, eventdata, handles)
% hObject    handle to editNoverlap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editNoverlap as text
%        str2double(get(hObject,'String')) returns contents of editNoverlap as a double


% --- Executes during object creation, after setting all properties.
function editNoverlap_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editNoverlap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editNfft_Callback(hObject, eventdata, handles)
% hObject    handle to editNfft (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editNfft as text
%        str2double(get(hObject,'String')) returns contents of editNfft as a double


% --- Executes during object creation, after setting all properties.
function editNfft_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editNfft (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all Create4Fcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbuttonSpektrogram.
function pushbuttonSpektrogram_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonSpektrogram (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
window1 = get(handles.editWindow,'String');
window = str2num(window1);
noverlap1 = get(handles.editNoverlap,'String');
noverlap = str2num(noverlap1);
nfft1 = get(handles.editNfft,'String');
nfft = str2num(nfft1);
signal_EEG = handles.signal2;
Fs_EEG = handles.Fs2;
htoolbar = uitoolbar('Parent', ancestor(hObject, 'figure'));
uitoggletool('Parent', htoolbar, 'Tag', 'Exploration.Rotate', 'State', 'off');

axes(handles.axes3)
spectrogram(signal_EEG,window,noverlap,nfft,Fs_EEG,'yaxis');
title(['STFT' ]);

delete(htoolbar);

%WAVELET

fmin = 0.5;
fmax = 30;

result = [];
sigm = 0.7;
    
fo = 1;
pas = 0.5; 
number = fix(length(signal_EEG)/2)*2; 

y = fft(signal_EEG); 
brojac = 1;    
    
for fff=fmin:pas:fmax 
    
    a = 1/fff; 
    wavelet = exp(-2/sigm*(pi)^2*(([0:number/2-1,-number/2:-1]*(Fs_EEG*a/number))-(fo)).^2);
    
    g = wavelet.*y; 
    t = ifft(g); 
    result(brojac,:)=(a.^0.5).*t;
   
    brojac=brojac+1;
         
end

[F,T] = size(result); % F -vrsta T - kolona

f_novo = linspace(fmin,fmax,F);

time_novo = linspace(t(1),t(end),T);

axes(handles.axes4)
imagesc(time_novo,f_novo,abs(result)); 
colorbar;
ylabel('Frekvencija[Hz]');  
xlabel(' Vreme[s]'); 
ylim([0 fmax]);
title(['Wavelet t-f prezentacija' ]);

handles.result = result;
handles.time_novo = time_novo;
handles.f_novo = f_novo;

guidata(hObject, handles)


% --- Executes on button press in pushbuttonERD.
function pushbuttonERD_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonERD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jedan_sloj = handles.result(20,:);

%figure,
%plot(handles.time_novo,jedan_sloj)

%[b,a] = butter(1,0.01,'low');
%jedan_sloj_filt = filter(b,a,jedan_sloj.*jedan_sloj);
%anvelopa1 = sqrt(jedan_sloj_filt);
%handles.anvelopa1 = anvelopa1;

anvelopa1 = rms_sig(jedan_sloj,200, 100);
t1 = linspace(1.02,1.8,length(anvelopa1));
figure,
plot(handles.time_novo,jedan_sloj,'b');
hold on
plot(t1,anvelopa1,'g')

m = [];

for i = 1:length(anvelopa1)
    if 0.1 < anvelopa1(i) && anvelopa1(i) < 2.5
        m = [m i];
    end
end

m = flip(m);
n = [m(1)];

for i = 2:length(m)
    if abs(m(i) - m(i-1)) > 20
        n = [n m(i)];
    end
end

t = t1(n);
t = flip(t)

m1 = flip(m);
n2 = [m1(1)];

for i = 2:length(m1)
    if abs(m1(i) - m1(i-1)) > 20
        n2 = [n2 m1(i)];
    end
end

t2 = t1(n2)

%f1 = handles.f_novo(n)
%f2 = handles.f_novo(n2)

y_kvadrat = [7 12 12 7 7];

axes(handles.axes4)
imagesc(handles.time_novo,handles.f_novo,abs(handles.result)); 
colorbar;
ylabel('Frekvencija[Hz]');  
xlabel(' Vreme[s]'); 
%ylim([0 fmax]);
title(['Wavelet t-f prezentacija' ]);
hold on
for k = 1:length(n)
    x_kvadrat = [t(k) t(k) t2(k) t2(k) t(k)];
    plot(x_kvadrat,y_kvadrat,'r')
    text(t(k),7,'ERD','Color','Red')
end
hold off

%figure,
%plot(handles.time_novo,jedan_sloj,'b');
%hold on
%plot(handles.time_novo,anvelopa1,'r')

% --- Executes on button press in pushbuttonZatvori.
function pushbuttonZatvori_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonZatvori (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(EEG);
uiresume()
