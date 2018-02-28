

function varargout = Image_processingGUI(varargin)
z=0;
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Image_processingGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @Image_processingGUI_OutputFcn, ...
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




function Image_processingGUI_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;


guidata(hObject, handles);




function varargout = Image_processingGUI_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;



function ECG_1_Callback(hObject, eventdata, handles)


set ( gcf, 'Color', [1 1 1] )


handles=guidata(hObject);

load('ECG_1');

plot(val(1,:), 'red');

%set(handles.axes1, x);

guidata(hObject,handles);


function ECG_1_CreateFcn(hObject, eventdata, handles)



function ECG_2_Callback(hObject, eventdata, handles)

handles=guidata(hObject);
load('ECG_1');
plot(val(2,:), 'red');
guidata(hObject,handles);


function ECG_3_Callback(hObject, eventdata, handles)

handles=guidata(hObject);




load('ECG_3');
plot(val(1,:), 'red');
guidata(hObject,handles);


function EEG_3_Callback(hObject, eventdata, handles)
handles=guidata(hObject);
load('EEG signal from RSVP task');
plot(val(1,:),'green');
guidata(hObject,handles);

function EEG_2_Callback(hObject, eventdata, handles)

handles=guidata(hObject);
load('EEG scalp');
plot(val(1,:), 'green');
guidata(hObject,handles);


function EEG_1_Callback(hObject, eventdata, handles)

handles=guidata(hObject);
load('EEG motor movement');
plot(val(1,:),'green');
guidata(hObject,handles);


function Gait_3_Callback(hObject, eventdata, handles)


handles=guidata(hObject);
load('gait physiological complexity');
plot(val(1,:),'black');
guidata(hObject,handles);

function Gait_2_Callback(hObject, eventdata, handles)

handles=guidata(hObject);
load('gait maturation');
plot(val(2,:),'black');
guidata(hObject,handles);

function Gait_1_Callback(hObject, eventdata, handles)


handles=guidata(hObject);
load('gait in neurodegenerative');
plot(val(1,:),'black');
guidata(hObject,handles);


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Slider4=get(handles.slider4,'Value');
load('EEG motor movement');

plot(handles.axes1,Slider4*val(1,:),'green');
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Slider3=get(handles.slider3,'Value');
load('ECG_3');
plot(handles.axes1,Slider3*val(1,:),'red');

% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Slider5=get(handles.slider5,'Value');
load('EEG scalp');
plot(handles.axes1,Slider5*val(1,:),'green');
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Slider6=get(handles.slider6,'Value');
load('EEG signal from RSVP task');
plot(handles.axes1,Slider6*val(1,:),'green');
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider8_Callback(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Slider8=get(handles.slider8,'Value');
load('gait maturation');
plot(handles.axes1,Slider8*val(1,:),'black');
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider10_Callback(hObject, eventdata, handles)
% hObject    handle to slider10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider9_Callback(hObject, eventdata, handles)
% hObject    handle to slider9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Slider9=get(handles.slider9,'Value');
load('gait physiological complexity');
plot(handles.axes1,Slider9*val(1,:),'black');
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Slider1=get(handles.slider1,'Value');
load('ECG_1');
plot(handles.axes1,Slider1*val(1,:),'red');
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



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



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Slider2=get(handles.slider2,'Value');
load('ECG_1');
plot(handles.axes1,Slider2*val(2,:),'red');
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function Slider7__Callback(hObject, eventdata, handles)
% hObject    handle to slider7_ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Slider7=get(handles.Slider7_,'Value');
%set(gca,'XLim',[0 200],'YLim',[0 200],'ZLim',[0 200]);
load('gait in neurodegenerative');
plot(handles.axes1,Slider7*val(1,:),'black');
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function Slider7__CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider7_ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbuttonsignals.
function pushbuttonsignals_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonsignals (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles=guidata(hObject);

reset(handles.axes10);

[filename, pathname] = uigetfile({'*.jpg'},'File Selector');

image1 = strcat(pathname, filename);

handles.imdata=imread(image1);

handles.imdata=imresize(handles.imdata, [500 500]);
%I2 = imresize(I1,[256 256]); 
handles.imdata=rgb2gray(handles.imdata);
axes(handles.axes10);

imshow(handles.imdata);

%[filename, pathname] = uigetfile({'*.jpg';'*.bmp'},'File Selector');
%image1 = strcat(pathname, filename);
%imdata1=imread(image1);

%imdataF=fft2(imdata1); %fourier of 2nd image
%imdata1=rgb2gray(imdata);

%axes(handles.axes10);
%imshow(imdata);%displaying of 1st image

%F=fft2(imdata);%fourier of 1st image

%Image1_Mag=abs(F);%Magnitude of 1st image
%Image1_Phase = exp(1i*angle(F)); %Phase of 1st image

%Image2_Mag=abs(imdataF); %Magnitude of 2nd image
%Image2_Phase=exp(1i*angle(imdataF)); %Phase of 2nd image

%axes(handles.axes9), imshow(imdata1);
 %displaying of 2nd image


%Combination1=((Image1_Mag).*(Image2_Mag));
%displaying=ifft2(Combination1);


%axes(handles.axes6);
%imshow(displaying); %displaying of product



guidata(hObject,handles);


%F=fft2(imdata);

%handles.Fsh=fftshift(F);
%S=log(1+abs(handles.Fsh));
%


%setappdata(Image_processingGUI,'FourierTransform1',image)

%image=rgb2gray(image);
%imshow(image);
%plot(handles.F_Mag);
%a=imgetfile;
%imshow(fullFileName);
%I = imread('eight.tif');
%J = imnoise(I,'salt & pepper',0.02);
 %imshow(I)
%imshow(fullFileName);
%plot(val(1,:));
%hold on;
%a=1;
%g=[getappdata(Image_processingGUI,'filtercontrol') getappdata(Image_processingGUI,'filtercontrol2') getappdata(Image_processingGUI,'filtercontrol3')];
%y = filter(g,a,val(1,:));
%plot(y);
%grid on;
%legend('Filtered Data','Input Data','Location','NorthWest');
%title('Plot of Input and Filtered Data');




%plot(handles.axes1,[FileName,PathName]*val(1,:));



function edit_Callback(hObject, eventdata, handles)
% hObject    handle to edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit as text
%        str2double(get(hObject,'String')) returns contents of edit as a double
 z = str2double(get(handles.edit,'String'));
 setappdata(Signalviewer,'filtercontrol',z);
 disp(z);
 
    
     
 
     
 


% --- Executes during object creation, after setting all properties.
function edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles=guidata(hObject);

reset(handles.axes3);

[filename pathname] = uigetfile({'*.jpg'},'File Selector');

image = strcat(pathname, filename);

handles.imdata2=imread(image);

handles.imdata2=imresize(handles.imdata2, [500 500]);
%handles.imdata=imresize(handles.imdata, [500 500]);
handles.imdata2=rgb2gray(handles.imdata2);
axes(handles.axes3);

imshow(handles.imdata2);

guidata(hObject,handles);


%reset(handles.axes3);
%handles=guidata(hObject);
%handles.stop = 0;
%guidata(hObject,handles);
% recObj = audiorecorder;
% recordblocking(recObj,0.3);
 %recordblocking(recObj,0.3);
 %recordblocking(recObj,0.3);
 %x = getaudiodata(recObj);
%A=[0];

%while 1

 %   recObj = audiorecorder;
  %  disp('Recording')
  
   % recordblocking(recObj,0.3);
    
   % y = getaudiodata(recObj);
    %C = y(80:end);
    %A=[A,y.'];
    %plot(A)
    
%subplot(2,1,1)       % add first plot in 2 x 1 grid
%plot(x)
%title('Subplot 1')

%subplot(2,1,2)       % add second plot in 2 x 1 grid
%plot(A)       % plot using + markers
%title('Subplot 2')
%handles = guidata(hObject);
%if handles.stop
 %   break;
%end


%end

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles=guidata(hObject);
handles.stop = 1;
guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


handles.aa=get(handles.pushbutton13,'Value');
if handles.aa~=0
   axes(handles.axes1)
   zoom on
end

if handles.aa==0
   axes(handles.axes1)
   zoom off;
end


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.aa=get(handles.pushbutton14,'Value');
if handles.aa~=0
   axes(handles.axes1)
   zoom out
   zoom(handles.aa);
end
if handles.aa==0
   axes(handles.axes1)
   zoom off;
end
guidata(hObject,handles);



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edittt_Callback(hObject, eventdata, handles)
% hObject    handle to edittt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
k = str2double(get(handles.edittt,'String'));
 setappdata(Signalviewer,'filtercontrol3',k);
 disp(k);
% Hints: get(hObject,'String') returns contents of edittt as text
%        str2double(get(hObject,'String')) returns contents of edittt as a double


% --- Executes during object creation, after setting all properties.
function edittt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edittt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editt_Callback(hObject, eventdata, handles)
% hObject    handle to editt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editt as text
%        str2double(get(hObject,'String')) returns contents of editt as a double

f = str2double(get(handles.editt,'String'));
 setappdata(Signalviewer,'filtercontrol2',f);
 disp(f);
% --- Executes during object creation, after setting all properties.
function editt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles=guidata(hObject);

reset(handles.axes9);

Fourier2=fft2(handles.imdata);

handles.Fsh=fftshift(Fourier2);

handles.F_Mag1=abs(Fourier2);

handles.S=log(1+abs(handles.Fsh));

handles.F_Phase1 = exp(1i*angle(Fourier2));

axes(handles.axes9);

imshow(handles.S,[]);

guidata(hObject,handles);

% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles=guidata(hObject);

handles.product=(handles.F_Mag1).*(handles.F_Phase2);

Combination1=ifft2(handles.product);

axes(handles.axes5);
reset(handles.axes5);

imagesc(100*log(1+abs(Combination1)));

guidata(hObject,handles);

% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles=guidata(hObject);
guidata(hObject,handles);

reset(handles.axes7);

%handles.imdata2= fftshift(handles.imdata2(:,:,2));

Fourier2=fft2(handles.imdata2);

handles.F_Mag2=abs(Fourier2);

handles.F_Phase2 = exp(1i*angle(Fourier2));
handles.Fsh3=fftshift(Fourier2);
handles.Fsh2=abs(fftshift(Fourier2));

handles.S2=log(1+abs(handles.Fsh2));

axes(handles.axes7);

imagesc(handles.S2); 

%imshow(handles.S2,[]);

guidata(hObject,handles);

% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles=guidata(hObject);
A=(handles.F_Mag2).*(handles.F_Phase1);
Combination1=ifft2(A);
axes(handles.axes6);
reset(handles.axes6);
imagesc(100*log(1+abs(Combination1)));
guidata(hObject,handles);




% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles=guidata(hObject);
reset(handles.axes5);
G=ifftshift(handles.Fsh1);
F=ifft2(G);
axes(handles.axes5);
imagesc(F);
guidata(hObject,handles);
% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles=guidata(hObject);
reset(handles.axes6);
G=ifftshift(handles.Fsh3);
F=ifft2(G);
axes(handles.axes6);
imagesc(F);
guidata(hObject,handles);


% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=(handles.Y).*(handles.F_Phase1);
Combination1=ifft2(A);
axes(handles.axes3);
reset(handles.axes3);
imshow(Combination1);


% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles=guidata(hObject);
handles.B=(handles.Fsh).*(handles.F_Phase1);
Combination1=ifft2(handles.B);
axes(handles.axes5);
reset(handles.axes5);
imshow(Combination1);
guidata(hObject,handles);


% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton25.
function pushbutton25_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=(handles.Fsh2).*(handles.F_Phase2);
Combination1=A;
axes(handles.axes6);
reset(handles.axes6);
imshow(Combination1);


% --- Executes on button press in pushbutton29.
function pushbutton29_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles=guidata(hObject);


reset(handles.axes9);

%handles.imdata= fftshift(handles.imdata(:,:,2));
Fourier1=fft2(handles.imdata);
handles.Fsh1=fftshift(Fourier1);
handles.Fsh=abs(fftshift(Fourier1));

handles.F_Mag1=abs(Fourier1);

handles.F_Phase1 = exp(1i*angle(Fourier1));

handles.S=log(1+handles.Fsh);



axes(handles.axes9);

imagesc(handles.S); 

%imshow(handles.S);

guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function pushbutton17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
