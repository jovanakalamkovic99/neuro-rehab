function varargout = domaci1(varargin)
% DOMACI1 MATLAB code for domaci1.fig
%      DOMACI1, by itself, creates a new DOMACI1 or raises the existing
%      singleton*.
%
%      H = DOMACI1 returns the handle to a new DOMACI1 or the handle to
%      the existing singleton*.
%
%      DOMACI1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DOMACI1.M with the given input arguments.
%
%      DOMACI1('Property','Value',...) creates a new DOMACI1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before domaci1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to domaci1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help domaci1

% Last Modified by GUIDE v2.5 15-Jun-2021 17:19:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @domaci1_OpeningFcn, ...
                   'gui_OutputFcn',  @domaci1_OutputFcn, ...
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


% --- Executes just before domaci1 is made visible.
function domaci1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to domaci1 (see VARARGIN)

% Choose default command line output for domaci1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes domaci1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = domaci1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes when selected object is changed in uibuttongroupOdabirSignala.
function uibuttongroupOdabirSignala_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroupOdabirSignala 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global data

radioSignal1 = get(handles.radiobuttonSignal1,'Value');
radioSignal2 = get(handles.radiobuttonSignal2,'Value');
radioSignal3 = get(handles.radiobuttonSignal3,'Value');

%handles.t = 0:0.01:10;
%t = handles.t;

if radioSignal1 == 1
    load('EMG_signal1.mat');
    handles.ucitani = data;
    signal = handles.ucitani.signal;
    Fs = handles.ucitani.Fs;
    handles.t = 0:1/Fs:(length(signal)-1)/Fs;
    t = handles.t;
    axes(handles.axes1)
    plot(t,signal);
    msgbox('Ucitani podaci nacrtani.')
    handles.signal = signal;
    handles.Fs = Fs;
elseif radioSignal2 == 1
    load('EMG_signal2.mat');
    handles.ucitani = data;
    signal = handles.ucitani.signal;
    Fs = handles.ucitani.Fs;
    handles.t = 0:1/Fs:(length(signal)-1)/Fs;
    t = handles.t;
    axes(handles.axes1)
    plot(t,signal);
    msgbox('Ucitani podaci nacrtani.')
    handles.signal = signal;
    handles.Fs = Fs;
elseif radioSignal3 == 1
    load('EEG.mat');
    handles.ucitani = data;
    signal = handles.ucitani.EEG;
    Fs = handles.ucitani.Fs;
    handles.t = 0:1/Fs:(length(signal)-1)/Fs;
    t = handles.t;
    %axes(handles.axes1)
    %plot(t,signal);
    load('EMG_signal3.mat');
    handles.ucitani1 = data;
    signal1 = handles.ucitani1.EMG;
    Fs = handles.ucitani1.Fs;
    handles.t1 = 0:1/Fs:(length(signal1)-1)/Fs;
    t1 = handles.t1;
    axes(handles.axes1)
    plot(t,signal)
    hold on
    plot(t1,signal1,'r');
    msgbox('Ucitani podaci nacrtani.')
    
    handles.signal = signal;
    handles.signal1 = signal1;
    handles.Fs = Fs;
end
guidata(hObject, handles);

% --- Executes on button press in radiobuttonSignal1.
function radiobuttonSignal1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobuttonSignal1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobuttonSignal1


% --- Executes on button press in radiobuttonSignal2.
function radiobuttonSignal2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobuttonSignal2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobuttonSignal2


% --- Executes on button press in radiobuttonSignal3.
function radiobuttonSignal3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobuttonSignal3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobuttonSignal3


% --- Executes on button press in pushbuttonZoomPravoug.
function pushbuttonZoomPravoug_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonZoomPravoug (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

axes(handles.axes1)
plot(handles.t,handles.signal)
[x,y] = ginput(2);
x_kvadrat = [x(1) x(2) x(2) x(1) x(1)];
y_kvadrat = [y(1) y(1) y(2) y(2) y(1)];

try
    hold on
    axes(handles.axes1)
    plot(x_kvadrat,y_kvadrat,'r')
    hold off
    donja = (x(1));
    gornja = (x(2));
    donjay = (y(2));
    gornjay = (y(1));

indeksi = handles.t >= donja & handles.t <= gornja;
%indeksiy = handles.signal >= donjay & handles.signal <= gornjay;
handles.t_select = handles.t(indeksi);
handles.t(~indeksi) = nan;
handles.signal_select = handles.signal(indeksi);
handles.signal(~indeksi) = nan;

indeksiy = handles.signal_select >= donjay & handles.signal_select <= gornjay;
handles.signal_select(~indeksiy ) = nan;

guidata(hObject,handles);
axes(handles.axes2)
plot(handles.t_select,handles.signal_select)
xlim([min(x) max(x)])
ylim([min(y) max(y)])
catch
    msgbox('Prvo pritisnite gornju levu, pa donju desnu tacku.')
end

guidata(hObject,handles);


% --- Executes on button press in pushbuttonZoomKrug.
function pushbuttonZoomKrug_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonZoomKrug (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

try
axes(handles.axes1)
plot(handles.t,handles.signal)
[x,y] = ginput(2);
R = [x(1),y(1);x(2),y(2)];
r = pdist(R,'euclidean');
%hold on
%axes(handles.axes1)
%viscircles([x(1) y(1)],r)
%daspect([1,1,1])
%hold off

hold on
axes(handles.axes1)
th = 0:pi/50:2*pi;
xunit = r * cos(th) + x(1);
yunit = r * sin(th) + y(1);
plot(xunit, yunit);
daspect([1,1,1])
hold off

%d = r*2;
%px = x(1)-r;
%py = y(1)-r;
%h = rectangle('Position',[px py d d],'Curvature',[1,1]);
%daspect([1,1,1])

Xmin = x(1)-r;
Xmax = x(1)+r;
Ymin = y(1)-r;
Ymax = y(1)+r;

indeksi=handles.t >= Xmin & handles.t <= Xmax;
handles.t_select = handles.t(indeksi);
handles.t(~indeksi) = nan;
handles.signal_select = handles.signal(indeksi);
handles.signal(~indeksi) = nan;

indeks = handles.signal_select < r;
handles.signal_select(~indeks) = nan;

axes(handles.axes2)
plot(handles.t_select, handles.signal_select)
xlim([Xmin, Xmax])
ylim([Ymin, Ymax])

catch
    msgbox('Nesto nije kako treba.')
end


guidata(hObject,handles);

function editUnosImena_Callback(hObject, eventdata, handles)
% hObject    handle to editUnosImena (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editUnosImena as text
%        str2double(get(hObject,'String')) returns contents of editUnosImena as a double


% --- Executes during object creation, after setting all properties.
function editUnosImena_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editUnosImena (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbuttonSave.
function pushbuttonSave_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonSave (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

try
    str = get(handles.editUnosImena,'String');
    strMat = '.mat';
    strImeFajla = strcat(str,strMat);
    data.signal=handles.signal_select;
    data.Fs=handles.Fs;
    save(strImeFajla,'data');
    msgbox('Podaci sacuvani.');
catch
    msgbox('Nema podataka.');
end
guidata(hObject, handles);


% --- Executes on button press in pushbuttonZeroPole.
function pushbuttonZeroPole_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonZeroPole (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global data;
global data_f;
uiwait(ZeroPole)

rp1 = data.pppola;
teta_p1 = data.ugaopola;

rz1 = data.ppnule;
teta_z1 = data.ugaonule;

rp2 = data.pppola2;
teta_p2 = data.ugaopola2;

rz2 = data.ppnule2;
teta_z2 = data.ugaonule2;


if data.tip == 'NF'
    b = [1 -2*rz1*cos(teta_z1) rz1^2];
    a = [1 -2*rp1*cos(teta_p1) rp1^2];
elseif data.tip == 'VF'
    b = [1 -2*rz1*cos(teta_z1) rz1^2];
    a = [1 -2*rp1*cos(teta_p1) rp1^2];
elseif data.tip == 'BP'
    b = conv([1 -2*rz1*cos(teta_z1) rz1^2],[1 -2*rz2*cos(teta_z2) rz2^2]);
    a = conv([1 -2*rp1*cos(teta_p1) rp1^2],[1 -2*rp1*cos(teta_p2) rp2^2]);
elseif data.tip == 'BS'
    b1 = [1 -2*rz1*cos(teta_z1) rz1^2];
    b2 = [1 -2*rz2*cos(teta_z2) rz2^2];
    b = conv(b1,b2);


    a1 = [1 -2*rp1*cos(teta_p1) rp1^2];
    a2 = [1 -2*rp2*cos(teta_p2) rp2^2];
    a = conv(a1,a2);
end
[H,w] = freqz(b,a);

axes(handles.axes3)
zplane(b,a)
title('Nule i polovi funkcije prenosa filtra')
guidata(hObject, handles);
data_f.P = b;
data_f.Q = a;
data_f.H = H;
data_f.w = w;


% --- Executes on button press in pushbuttonButter.
function pushbuttonButter_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonButter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global data;
global data_f;
uiwait(Butter)

tip = data.tip;
if tip == 'NF'
    Fp = data.Fp1;
    Fa = data.Fa1;
    ap = data.AlfaP;
    aa = data.AlfaA;
    
    Rp = ap;
    Rs = aa-ap;
    Fs = 100;
    Wp = Fp*2/Fs;
    Wa = Fa*2/Fs;
    [n,Wn] = buttord(Wp, Wa, Rp, Rs);
    [P,Q] = butter(n,Wn,'low');
    
    [H,w] = freqz(P,Q,500); 
    f = 0:(Fs/2)/500:Fs/2-1/500;
    axes(handles.axes3)
    plot(f,20*log10(abs(H)))
    xlabel('Frekvencija [Hz]')
    title('Amplitudska karakteristika filtra u dB') 
elseif tip == 'VF'
    Fp = data.Fp1;
    Fa = data.Fa1;
    ap = data.AlfaP;
    aa = data.AlfaA;
    
    Rp = ap;
    Rs = aa-ap;
    Fs = 100;
    Wp = Fp*2/Fs;
    Wa = Fa*2/Fs;
    [n,Wn] = buttord(Wp, Wa, Rp, Rs);
    [P,Q] = butter(n,Wn,'high');
    
    [H,w] = freqz(P,Q,500); 
    f = 0:(Fs/2)/500:Fs/2-1/500;
    axes(handles.axes3)
    plot(f,20*log10(abs(H)))
    xlabel('Frekvencija [Hz]')
    title('Amplitudska karakteristika filtra u dB')
elseif tip == 'BP'
    Fp1 = data.Fp1;
    Fa1 = data.Fa1;
    ap = data.AlfaP;
    aa = data.AlfaA;
    Fp2 = data.Fp2;
    Fa2 = data.Fa2;
    
    Rp = ap;
    Rs = aa-ap;
    Fs = 100;
    Wp=[Fp1*2/Fs Fp2*2/Fs];
    Wa=[Fa1*2/Fs Fa2*2/Fs];
    [n,Wn] = buttord(Wp, Wa, Rp, Rs);
    [P,Q] = butter(n,Wn,'bandpass');
    
    [H,w] = freqz(P,Q,500); 
    f = 0:(Fs/2)/500:Fs/2-1/500;
    axes(handles.axes3)
    plot(f,20*log10(abs(H)))
    xlabel('Frekvencija [Hz]')
    title('Amplitudska karakteristika filtra u dB')
elseif tip == 'BS'
    Fp1 = data.Fp1;
    Fa1 = data.Fa1;
    ap = data.AlfaP;
    aa = data.AlfaA;
    Fp2 = data.Fp2;
    Fa2 = data.Fa2;
    
    Rp = ap;
    Rs = aa-ap;
    Fs = 100;
    Wp=[Fp1*2/Fs Fp2*2/Fs];
    Wa=[Fa1*2/Fs Fa2*2/Fs];
    [n,Wn] = buttord(Wp, Wa, Rp, Rs);
    [P,Q] = butter(n,Wn,'stop');
    
    [H,w] = freqz(P,Q,500); 
    f = 0:(Fs/2)/500:Fs/2-1/500;
    axes(handles.axes3)
    plot(f,20*log10(abs(H)))
    xlabel('Frekvencija [Hz]')
    title('Amplitudska karakteristika filtra u dB')
end
data_f.P = P;
data_f.Q = Q;
data_f.H = H;
data_f.w = w;
guidata(hObject, handles);

% --- Executes on button press in pushbuttonCheby.
function pushbuttonCheby_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonCheby (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global data;
global data_f;
uiwait(Cheby)

tip = data.tip;

if tip == 'NF'
    Fp = data.Fp1;
    Fa = data.Fa1;
    ap = data.AlfaP;
    aa = data.AlfaA;
    
    Rp = ap;
    Rs = aa-ap;
    Fs = 100;
    Wp = Fp*2/Fs;
    Wa = Fa*2/Fs;
    [n,Wn] = cheb1ord(Wp, Wa, Rp, Rs);
    [P,Q] = cheby1(n,Rs,Wn,'low');
    
    [H,w] = freqz(P,Q,500); 
    f = 0:(Fs/2)/500:Fs/2-1/500;
    axes(handles.axes3)
    plot(f,20*log10(abs(H)))
    xlabel('Frekvencija [Hz]')
    title('Amplitudska karakteristika filtra u dB') 
elseif tip == 'VF'
    Fp = data.Fp1;
    Fa = data.Fa1;
    ap = data.AlfaP;
    aa = data.AlfaA;
    
    Rp = ap;
    Rs = aa-ap;
    Fs = 100;
    Wp = Fp*2/Fs;
    Wa = Fa*2/Fs;
    [n,Wn] = cheb1ord(Wp, Wa, Rp, Rs);
    [P,Q] = cheby1(n,Rs,Wn,'high');
    
    [H,w] = freqz(P,Q,500); 
    f = 0:(Fs/2)/500:Fs/2-1/500;
    axes(handles.axes3)
    plot(f,20*log10(abs(H)))
    xlabel('Frekvencija [Hz]')
    title('Amplitudska karakteristika filtra u dB')
elseif tip == 'BP'
    Fp1 = data.Fp1;
    Fp2 = data.Fp2;
    Fa1 = data.Fa1;
    Fa2 = data.Fa2;

    ap = data.AlfaP;
    aa = data.AlfaA;

    Rp = ap;
    Rs = aa-ap;
    
    Fs = 100;
    Wp=[Fp1*2/Fs Fp2*2/Fs];
    Wa=[Fa1*2/Fs Fa2*2/Fs];

    [n,Wn] = cheb1ord(Wp, Wa, Rp, Rs);
    [P,Q] = cheby1(n,Rs,Wn,'bandpass'); 


    [H,w] = freqz(P,Q,500); 

    axes(handles.axes3)
    f = 0:(Fs/2)/500:Fs/2-1/500;
    plot(f,20*log10(abs(H)))
    xlabel('Frekvencija [Hz]')
    title('Amplitudska karakteristika filtra u dB') 
elseif tip == 'BS'
    Fp1 = data.Fp1;
    Fa1 = data.Fa1;
    ap = data.AlfaP;
    aa = data.AlfaA;
    Fp2 = data.Fp2;
    Fa2 = data.Fa2;
    
    Rp = ap;
    Rs = aa-ap;
    Fs = 100;
    Wp=[Fp1*2/Fs Fp2*2/Fs];
    Wa=[Fa1*2/Fs Fa2*2/Fs];
    [n,Wn] = cheb1ord(Wp, Wa, Rp, Rs);
    [P,Q] = cheby1(n,Rs,Wn,'stop');
    
    [H,w] = freqz(P,Q,500);
    f = 0:(Fs/2)/500:Fs/2-1/500;
    axes(handles.axes3)
    plot(f,20*log10(abs(H)))
    xlabel('Frekvencija [Hz]')
    title('Amplitudska karakteristika filtra u dB')
end
data_f.P = P;
data_f.Q = Q;
data_f.H = H;
data_f.w = w;
guidata(hObject, handles);


% --- Executes on button press in pushbuttonFiltriranje.
function pushbuttonFiltriranje_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonFiltriranje (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    s = handles.signal;
    global data_f;
    H = data_f.H;
    w = data_f.w;
    P = data_f.P;
    Q = data_f.Q;


    Fs = 100;
    f_osa=0:Fs/length(s):(Fs-Fs/length(s));
    f_pola=f_osa(1:end/2);

    S1=fft(s);
    S1=S1(1:end/2);

    axes(handles.axes1)
    plot(f_pola,abs(S1));
    title('Amplitudski spektar signala na ulazu u filtar');
    xlabel('Frekvencija [Hz]');

    signal_filt = filter(P,Q,s);

    S2=fft(signal_filt);
    S2=S2(1:end/2);

    axes(handles.axes2)
    plot(f_pola,abs(S2));
    title('Amplitudski spektar signala na izlazu iz filtra');
    xlabel('Frekvencija [Hz]');

    axes(handles.axes3)
    w = w*Fs/(2*pi);
    plot(w,abs(H));
    xlabel('Frekvencija[Hz]');
    title('Amplitudska karakteristika filtra');
catch
    msgbox('Doslo je do greske pri filtriranju.');
end

guidata(hObject, handles); 


% --- Executes on button press in pushbuttonSaveFilt.
function pushbuttonSaveFilt_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonSaveFilt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    global data_f;
try
    str = get(handles.editSaveFilt,'String');
    strMat = '.mat';
    strImeFajla = strcat(str,strMat);
    data.H = data_f.H;
    data.w = data_f.w;
    data.P = data_f.P;
    data.Q = data_f.Q;
    save(strImeFajla,'data');
    msgbox('Podaci sacuvani.');
catch
    msgbox('Nema podataka.');
end
guidata(hObject, handles);



function editSaveFilt_Callback(hObject, eventdata, handles)
% hObject    handle to editSaveFilt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editSaveFilt as text
%        str2double(get(hObject,'String')) returns contents of editSaveFilt as a double


% --- Executes during object creation, after setting all properties.
function editSaveFilt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editSaveFilt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbuttonLoadFilt.
function pushbuttonLoadFilt_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonLoadFilt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    s = handles.signal;
    name = get(handles.editLoadFilt,'String');
    name = [name '.mat'];
    data_filt = load(name);

    H = data_filt.data.H;
    w = data_filt.data.w;
    P = data_filt.data.P;
    Q = data_filt.data.Q;

    Fs = 100;
    f_osa=0:Fs/length(s):(Fs-Fs/length(s));
    f_pola=f_osa(1:end/2);

    S1=fft(s);
    S1=S1(1:end/2);

    axes(handles.axes1)
    plot(f_pola,abs(S1));
    title('Amplitudski spektar signala na ulazu u filtar');
    xlabel('Frekvencija [Hz]');

    signal_filt = filter(P,Q,s);

    S2=fft(signal_filt);
    S2=S2(1:end/2);

    axes(handles.axes2)
    plot(f_pola,abs(S2));
    title('Amplitudski spektar signala na izlazu iz filtra');
    xlabel('Frekvencija [Hz]');

    axes(handles.axes3)
    w = w*Fs/(2*pi);
    plot(w,abs(H));
    xlabel('Frekvencija[Hz]');
    title('Amplitudska karakteristika filtra');

    msgbox('Filtar ucitan i filtriranje izvrseno')
catch
    msgbox('Ne postoji filtar sa tim imenom.');
end

guidata(hObject, handles);



function editLoadFilt_Callback(hObject, eventdata, handles)
% hObject    handle to editLoadFilt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editLoadFilt as text
%        str2double(get(hObject,'String')) returns contents of editLoadFilt as a double


% --- Executes during object creation, after setting all properties.
function editLoadFilt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editLoadFilt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1EMG.
function pushbutton1EMG_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1EMG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uiwait(EMG)


% --- Executes on button press in pushbuttonEEG.
function pushbuttonEEG_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonEEG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uiwait(EEG)
