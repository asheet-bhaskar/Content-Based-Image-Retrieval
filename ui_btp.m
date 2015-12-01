function varargout = ui_btp(varargin)
% UI_BTP MATLAB code for ui_btp.fig
%      UI_BTP, by itself, creates a new UI_BTP or raises the existing
%      singleton*.
%
%      H = UI_BTP returns the handle to a new UI_BTP or the handle to
%      the existing singleton*.
%
%      UI_BTP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UI_BTP.M with the given input arguments.
%
%      UI_BTP('Property','Value',...) creates a new UI_BTP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ui_btp_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ui_btp_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ui_btp

% Last Modified by GUIDE v2.5 20-Nov-2015 20:16:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ui_btp_OpeningFcn, ...
                   'gui_OutputFcn',  @ui_btp_OutputFcn, ...
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


% --- Executes just before ui_btp is made visible.
function ui_btp_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ui_btp (see VARARGIN)

% Choose default command line output for ui_btp
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ui_btp wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ui_btp_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName,PathName] = uigetfile('*.jpg;*.png','Select the MATLAB code file');

L = imread(strcat(PathName,FileName));
axes(handles.axes1);
imshow(L);

set(handles.edit1,'String',PathName);
guidata(hObject, handles);

set(handles.edit3,'String',FileName);
guidata(hObject, handles);

set(handles.edit15,'String',getquerycat(handles));
guidata(hObject, handles);
disp(handles);

% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4


% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject, 'String', {'Canberra', 'Chi-Squared', 'Euclidean'});

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%disp(handles.popupmenu1);
% checking for feature (radio buttons)
%disp(get(handles.edit1,'String'));
%disp(get(handles.edit3,'String'));
flag =1;
if (get(handles.radiobutton1,'Value') == 0 && get(handles.radiobutton2,'Value') == 0 &&  get(handles.radiobutton3,'Value') == 0 && get(handles.radiobutton4,'Value') == 0 && get(handles.radiobutton5,'Value') == 0) 
    disp('No button is selected');
    set(handles.edit4,'String','Select at least one feature');
    guidata(hObject, handles);
    flag=0;
end
if(flag ==0)
    amp=15 ;
    fs=2050;  % sampling frequency
    duration=2;
    freq=100;
    values=0:1/fs:duration;
    a=amp*sin(2*pi* freq*values);
    sound(a);
else
    set(handles.edit4,'String','');
    guidata(hObject, handles);
end
images = dir('ResultImages\*.jpg');
% checking for distance metric
popup_sel_index = get(handles.popupmenu1, 'Value');
switch popup_sel_index
    case 1
% when distance metric is canberra distance
        if((get(handles.radiobutton5,'Value') == 0)&&(get(handles.radiobutton4,'Value') == 0)&&(get(handles.radiobutton3,'Value') == 0)&&(get(handles.radiobutton2,'Value') == 0)&&(get(handles.radiobutton1,'Value') == 1) )
% feature : CDH, distance metric : canberra
             set(handles.edit4,'String','CDH');
             locs = result_cnb_cdh(get(handles.edit3,'String'));
             common(hObject,handles,locs);
% for local binary pattern
        elseif((get(handles.radiobutton5,'Value') == 0)&&(get(handles.radiobutton4,'Value') == 0)&&(get(handles.radiobutton3,'Value') == 0)&&(get(handles.radiobutton2,'Value') == 1)&&(get(handles.radiobutton1,'Value') == 0))
% feature : LBP, distance metric : canberra
             set(handles.edit4,'String','LBP');
             locs = result_cnb_lbp(strcat(get(handles.edit3,'String'))); % argument is filename of query image
             common(hObject,handles,locs);
% for edge orientation histogram
        elseif((get(handles.radiobutton5,'Value') == 0)&&(get(handles.radiobutton4,'Value') == 1)&&(get(handles.radiobutton3,'Value') == 0)&&(get(handles.radiobutton2,'Value') == 0)&&(get(handles.radiobutton1,'Value') == 0))
% feature : eoh, distance metric : canberra
             set(handles.edit4,'String','EOH');
             locs = result_cnb_eoh(strcat(get(handles.edit3,'String'))); % argument is filename of query image
             common(hObject,handles,locs);
% for hog
        elseif((get(handles.radiobutton5,'Value') == 1)&&(get(handles.radiobutton4,'Value') == 0)&&(get(handles.radiobutton3,'Value') == 0)&&(get(handles.radiobutton2,'Value') == 0)&&(get(handles.radiobutton1,'Value') == 0))
            % feature : HOG, distance metric : canberra
             set(handles.edit4,'String','HOG');
             locs = result_cnb_hog(strcat(get(handles.edit3,'String'))); % argument is filename of query image
             common(hObject,handles,locs);
% for cld
        elseif((get(handles.radiobutton5,'Value') == 0)&&(get(handles.radiobutton4,'Value') == 0)&&(get(handles.radiobutton3,'Value') == 1)&&(get(handles.radiobutton2,'Value') == 0)&&(get(handles.radiobutton1,'Value') == 0))
            % feature : cld, 
             locs = result_cld(strcat(get(handles.edit3,'String'))); % argument is filename of query image
             disp(size(locs));
             common(hObject,handles,locs);
             
             disp('Hello World!');
% for eoh and lbp
        elseif((get(handles.radiobutton5,'Value') == 0)&&(get(handles.radiobutton4,'Value') == 1)&&(get(handles.radiobutton3,'Value') == 0)&&(get(handles.radiobutton2,'Value') == 1)&&(get(handles.radiobutton1,'Value') == 0))
            % feature : eoh and lbp, distance metric : canberra
             set(handles.edit4,'String','EOH and LBP');
             
             n1 = get(handles.edit16,'String');
             ss = size(n1);
             p = str2num(n1(1:ss(2)-2));
             %disp(p);
             %disp(ss);
             n2 = get(handles.edit18,'String');
             sss = size(n2);
             q = str2num(n2(1:sss(2)-2));
             %disp(q);
             %disp(sss);
             locs = result_cnb_lbp_eoh(strcat(get(handles.edit3,'String')),p,q); % argument is filename of query image
             common(hObject,handles,locs);
% for eoh and lbp and cld
        elseif((get(handles.radiobutton5,'Value') == 0)&&(get(handles.radiobutton4,'Value') == 1)&&(get(handles.radiobutton3,'Value') == 1)&&(get(handles.radiobutton2,'Value') == 1)&&(get(handles.radiobutton1,'Value') == 0))
            % feature : eoh and lbp, distance metric : canberra
             set(handles.edit4,'String','CLD, EOH and LBP');
             
             n1 = get(handles.edit16,'String');
             ss = size(n1);
             p = str2num(n1(1:ss(2)-2));
             %disp(p);
             %disp(ss);
             n2 = get(handles.edit18,'String');
             sss = size(n2);
             q = str2num(n2(1:sss(2)-2));
             %disp(q);
             %disp(sss);
             n3 = get(handles.edit17,'String');
             ssss = size(n3);
             r = str2num(n3(1:ssss(2)-2));
             
             
             locs = result_cld_lbp_eoh(strcat(get(handles.edit3,'String')),p,q,r); % argument is filename of query image
             common(hObject,handles,locs);
        else
            set(handles.edit4,'String','Select anyone of the above');
            %{
            locs = [0001
1109
1035
2
42
1090
58
49
1053
790
78
625
287
599
1119
1066];
            common(hObject,handles,locs);
            %}
            guidata(hObject, handles);
        end
    case 2
% when distnace metric is chi-squared diatnce
        if((get(handles.radiobutton5,'Value') == 0)&&(get(handles.radiobutton4,'Value') == 0)&&(get(handles.radiobutton3,'Value') == 0)&&(get(handles.radiobutton2,'Value') == 0)&&(get(handles.radiobutton1,'Value') == 1))
% feature : CDH, distance metric : chi-squared
            locs = result_chi_cdh(get(handles.edit3,'String'));
            common(hObject,handles,locs);
% for local binary pattern
        elseif((get(handles.radiobutton5,'Value') == 0)&&(get(handles.radiobutton4,'Value') == 0)&&(get(handles.radiobutton3,'Value') == 0)&&(get(handles.radiobutton2,'Value') == 1)&&(get(handles.radiobutton1,'Value') == 0))
            % feature : LBP, distance metric : canberra
             locs = result_chi_lbp(strcat(get(handles.edit3,'String'))); % argument is filename of query image
             common(hObject,handles,locs);
% for edge orientation histogram
        elseif((get(handles.radiobutton5,'Value') == 0)&&(get(handles.radiobutton4,'Value') == 1)&&(get(handles.radiobutton3,'Value') == 0)&&(get(handles.radiobutton2,'Value') == 0)&&(get(handles.radiobutton1,'Value') == 0))
            % feature : LBP, distance metric : canberra
             locs = result_chi_eoh(strcat(get(handles.edit3,'String'))); % argument is filename of query image
             common(hObject,handles,locs);
% for hog
        elseif((get(handles.radiobutton5,'Value') == 1)&&(get(handles.radiobutton4,'Value') == 0)&&(get(handles.radiobutton3,'Value') == 0)&&(get(handles.radiobutton2,'Value') == 0)&&(get(handles.radiobutton1,'Value') == 0))
            % feature : hog, distance metric : canberra
             locs = result_chi_hog(strcat(get(handles.edit3,'String'))); % argument is filename of query image
             common(hObject,handles,locs);
% for cld
        elseif((get(handles.radiobutton5,'Value') == 0)&&(get(handles.radiobutton4,'Value') == 0)&&(get(handles.radiobutton3,'Value') == 1)&&(get(handles.radiobutton2,'Value') == 0)&&(get(handles.radiobutton1,'Value') == 0))
            % feature : cld, 
             %locs = result_cld(strcat(get(handles.edit3,'String'))); % argument is filename of query image
             %common(hObject,handles,locs);
             disp('Hello World!');
% for eoh and lbp
        elseif((get(handles.radiobutton5,'Value') == 0)&&(get(handles.radiobutton4,'Value') == 1)&&(get(handles.radiobutton3,'Value') == 0)&&(get(handles.radiobutton2,'Value') == 1)&&(get(handles.radiobutton1,'Value') == 0))
            % feature : HOG, distance metric : canberra
             set(handles.edit4,'String','EOH and LBP');
             
             n1 = get(handles.edit16,'String');
             ss = size(n1);
             p = str2num(n1(1:ss(2)-2));
             %disp(p);
             %disp(ss);
             n2 = get(handles.edit18,'String');
             sss = size(n2);
             q = str2num(n2(1:sss(2)-2));
             %disp(q);
             %disp(sss);
             
             locs = result_chi_lbp_eoh(strcat(get(handles.edit3,'String')),p,q); % argument is filename of query image
             common(hObject,handles,locs);
             
        else
            set(handles.edit4,'String','Select anyone of the above');
            guidata(hObject, handles);
        end
    case 3
% when distance metric is euclidean distance
% for color difference histogram        
        if((get(handles.radiobutton5,'Value') == 0)&&(get(handles.radiobutton4,'Value') == 0)&&(get(handles.radiobutton3,'Value') == 0)&&(get(handles.radiobutton2,'Value') == 0)&&(get(handles.radiobutton1,'Value') == 1))
            % feature : CDH, distance metric : euclidean
            set(handles.edit4,'String','CDH');
            locs = result_eu_cdh(get(handles.edit3,'String'));
            common(hObject,handles,locs);
            
% for local binary pattern
        elseif((get(handles.radiobutton5,'Value') == 0)&&(get(handles.radiobutton4,'Value') == 0)&&(get(handles.radiobutton3,'Value') == 0)&&(get(handles.radiobutton2,'Value') == 1)&&(get(handles.radiobutton1,'Value') == 0))
            % feature : LBP, distance metric : canberra
            set(handles.edit4,'String','LBP');
             locs = result_eu_lbp(strcat(get(handles.edit3,'String'))); % argument is filename of query image
             common(hObject,handles,locs);
             
% for edge orientation histogram
        elseif((get(handles.radiobutton5,'Value') == 0)&&(get(handles.radiobutton4,'Value') == 1)&&(get(handles.radiobutton3,'Value') == 0)&&(get(handles.radiobutton2,'Value') == 0)&&(get(handles.radiobutton1,'Value') == 0))
            % feature : LBP, distance metric : canberra
             set(handles.edit4,'String','EOH');
             locs = result_eu_eoh(strcat(get(handles.edit3,'String'))); % argument is filename of query image
             common(hObject,handles,locs);
% for hog
        elseif((get(handles.radiobutton5,'Value') == 1)&&(get(handles.radiobutton4,'Value') == 0)&&(get(handles.radiobutton3,'Value') == 0)&&(get(handles.radiobutton2,'Value') == 0)&&(get(handles.radiobutton1,'Value') == 0))
            % feature : hog, distance metric : canberra
             set(handles.edit4,'String','HOG');
             locs = result_eu_hog(strcat(get(handles.edit3,'String'))); % argument is filename of query image
             common(hObject,handles,locs);
% for cld
        elseif((get(handles.radiobutton5,'Value') == 0)&&(get(handles.radiobutton4,'Value') == 0)&&(get(handles.radiobutton3,'Value') == 1)&&(get(handles.radiobutton2,'Value') == 0)&&(get(handles.radiobutton1,'Value') == 0))
            % feature : cld, 
             %locs = result_cld(strcat(get(handles.edit3,'String'))); % argument is filename of query image
             %common(hObject,handles,locs);
             disp('Hello World!');
% for eoh and lbp
        elseif((get(handles.radiobutton5,'Value') == 0)&&(get(handles.radiobutton4,'Value') == 1)&&(get(handles.radiobutton3,'Value') == 0)&&(get(handles.radiobutton2,'Value') == 1)&&(get(handles.radiobutton1,'Value') == 0))
            % feature : HOG, distance metric : canberra
             set(handles.edit4,'String','EOH and LBP');
             
             n1 = get(handles.edit16,'String');
             ss = size(n1);
             p = str2num(n1(1:ss(2)-2));
             %disp(p);
             %disp(ss);
             n2 = get(handles.edit18,'String');
             sss = size(n2);
             q = str2num(n2(1:sss(2)-2));
             %disp(q);
             %disp(sss);
             
             locs = result_eu_lbp_eoh(strcat(get(handles.edit3,'String')),p,q); % argument is filename of query image
             common(hObject,handles,locs);
             
        else
            set(handles.edit4,'String','Select anyone of the above');
            guidata(hObject, handles);
        end
end

%disp(getquerycat(handles));

function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



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



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, ~)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function n =  getquerycat(handles)
File = get(handles.edit3,'String');
p = str2num(File(7:10));
n = floor(p/80)+1;

function common(hObject,handles,locs)
% common function for all type of queries to render result on the screen
              images = dir('ResultImages\*.jpg');
              handles.hAxes = [ handles.axes2, handles.axes3,handles.axes4,handles.axes5,handles.axes6,handles.axes7,handles.axes8,handles.axes9,handles.axes10,handles.axes11];
              handles.edit = [handles.edit5,handles.edit6,handles.edit7,handles.edit8,handles.edit9,handles.edit10,handles.edit11,handles.edit12,handles.edit13,handles.edit14];
             for i=1:10%size(locs)
                 filename = strcat('ResultImages\',images(locs(i)).name);
                 I  = imread(filename);
                 axes( handles.hAxes(i) )
                 imshow(I);
                 %set(handles.edit(i),'String',floor(locs(i)/80)+1);
                 %guidata(hObject, handles);
                 if(getquerycat(handles) == floor(locs(i)/80)+1)
                     set(handles.edit(i),'String',locs(i));
                     set(handles.edit(i),'BackgroundColor','green');
                     guidata(hObject, handles);
                 else
                     set(handles.edit(i),'String',locs(i));
                     set(handles.edit(i),'BackgroundColor','red');
                     guidata(hObject, handles);
                 end
             end


function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear all;
clc;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
updateEdit16(handles);

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
updateEdit17(handles);

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
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
updateEdit18(handles);

% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% weights to feature descriptors.
function updateEdit16(handles)
var = get(handles.slider1,'Value');

var = var*100;
var = sprintf('%.0f',var);
var = strcat(var,' %');
set(handles.edit16,'String',var);

function updateEdit17(handles)
var = get(handles.slider2,'Value');

var = var*100;
var = sprintf('%.0f',var);
var = strcat(var,' %');
set(handles.edit17,'String',var);

function updateEdit18(handles)
var = get(handles.slider3,'Value');

var = var*100;
var = sprintf('%.0f',var);
var = strcat(var,' %');
set(handles.edit18,'String',var);



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','gray');
end



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','gray');
end
