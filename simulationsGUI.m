function varargout = simulationsGUI(varargin)
% SIMULATIONSGUI MATLAB code for simulationsGUI.fig
%      SIMULATIONSGUI, by itself, creates a new SIMULATIONSGUI or raises the existing
%      singleton*.
%
%      H = SIMULATIONSGUI returns the handle to a new SIMULATIONSGUI or the handle to
%      the existing singleton*.
%
%      SIMULATIONSGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIMULATIONSGUI.M with the given input arguments.
%
%      SIMULATIONSGUI('Property','Value',...) creates a new SIMULATIONSGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before simulationsGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to simulationsGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help simulationsGUI

% Last Modified by GUIDE v2.5 20-Apr-2019 15:38:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @simulationsGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @simulationsGUI_OutputFcn, ...
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


% --- Executes just before simulationsGUI is made visible.
function simulationsGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to simulationsGUI (see VARARGIN)

% Choose default command line output for simulationsGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes simulationsGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);

curBackground = .2;
axes(handles.layoutAxes1);
set(handles.layoutAxes1,'visible','off');
rectangle('position', [0,0,30,30],'FaceColor','blue');

axes(handles.layoutAxes2);
set(handles.layoutAxes2,'visible','off');
rectangle('position', [0,0,30,30],'FaceColor','white','Curvature',curBackground);

axes(handles.layoutAxes3);
set(handles.layoutAxes3,'visible','off');
rectangle('position', [0,0,30,30],'FaceColor','blue');

axes(handles.layoutAxes4);
set(handles.layoutAxes4,'visible','off');
rectangle('position', [0,0,30,30],'FaceColor','white','Curvature',curBackground);

axes(handles.layoutAxes5);
set(handles.layoutAxes5,'visible','off');
rectangle('position', [0,0,30,30],'FaceColor','black');
uistack(handles.layoutAxes5,'bottom');

axes(handles.layoutAxes6);
set(handles.layoutAxes6,'visible','off');
rectangle('position', [0,0,30,30],'FaceColor','white','Curvature',curBackground);


% --- Outputs from this function are returned to the command line.
function varargout = simulationsGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function numGames_Callback(hObject, eventdata, handles)
% hObject    handle to numGames (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numGames as text
%        str2double(get(hObject,'String')) returns contents of numGames as a double
numGamesStr = handles.numGames.String;
numGamesVal = str2double(numGamesStr);
handles.numGames.Value = numGamesVal;

% --- Executes during object creation, after setting all properties.
function numGames_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numGames (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in startSim.
function startSim_Callback(hObject, eventdata, handles)
% hObject    handle to startSim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
winner = runGames();
n = handles.numGames.Value;
wins1 = 0;
wins2 = 0;
wins3 = 0;
wins4 = 0;
wins5 = 0;
wins6 = 0;
rColor = 1;
gColor = 0;

set(handles.prog1,'BackgroundColor',[1 0 0]);
axes(handles.barGraph);
upperBound = n/6 + (.20 * n);
v1 = handles.v1s.Value;
v2 = handles.v2s.Value;
v3 = handles.v3s.Value;
v4 = handles.v4s.Value;
v5 = handles.v5s.Value;
v6 = handles.v6s.Value;

axis([0 7 0 upperBound]);
hold on;

for i= 1:n
    winner = simulationGame1(v1,v2,v3,v4,v5,v6);
    if winner == 1
        wins1 = wins1 + 1;
        handles.p1Wins.Value = handles.p1Wins.Value + 1;
        handles.p1Wins.String = handles.p1Wins.Value;
    elseif winner == 2
        wins2 = wins2 + 1;
        handles.p2Wins.Value = handles.p2Wins.Value + 1;
        handles.p2Wins.String = handles.p2Wins.Value;
    elseif winner == 3
        wins3 = wins3 + 1;
        handles.p3Wins.Value = handles.p3Wins.Value + 1;
        handles.p3Wins.String = handles.p3Wins.Value;
    elseif winner == 4
        wins4 = wins4 + 1;
        handles.p4Wins.Value = handles.p4Wins.Value + 1;
        handles.p4Wins.String = handles.p4Wins.Value;
    elseif winner == 5
        wins5 = wins5 + 1;
        handles.p5Wins.Value = handles.p5Wins.Value + 1;
        handles.p5Wins.String = handles.p5Wins.Value;
    else 
        wins6 = wins6 + 1;
        handles.p6Wins.Value = handles.p6Wins.Value + 1;
        handles.p6Wins.String = handles.p6Wins.Value;
    end

    nDigits = 3;
    f = 10.^nDigits;
    A = wins6/(wins1 + wins2 + wins3 + wins4 + wins5 + wins6);
    A = round(f*A)/f;
   
    handles.winPct.Value = A;
    handles.winPct.String = [num2str(handles.winPct.Value * 100),'%'];

    drawnow
    x = linspace(1,6,6);
    g1 = bar(x(1),wins1);
    g2 = bar(x(2),wins2);
    g3 = bar(x(3),wins3);
    g4 = bar(x(4),wins4);
    g5 = bar(x(5),wins5);
    g6 = bar(x(6),wins6);
    set(g1,'FaceColor','red');
    set(g2,'FaceColor','yellow');
    set(g3,'FaceColor',[0,.5,0]);
    set(g4,'FaceColor',[.3010, .7450,.9330]);
    set(g5,'FaceColor',[1,.325,.098]);
    set(g6,'FaceColor',[1, 0, 1]);
    B = (handles.gameNum.Value / n);
    B = round(f*B)/f;
    handles.progress.Value = B;
    handles.progress.String = [num2str(handles.progress.Value*100),'%'];

    handles.gameNum.String = handles.gameNum.Value;
    handles.gameNum.Value = handles.gameNum.Value + 1;

    colorI = linspace(0, 1, n);
    colorInc = colorI(2);
    rColor = rColor - colorInc;
    gColor = gColor + colorInc;
    if rColor < 0
        rColor = 0;
    end
    if gColor > 1
        gColor = 1;
    end

    set(handles.prog1,'BackgroundColor',[rColor gColor 0]);
    set(handles.progress,'BackgroundColor',[rColor gColor 0]);
end

hold off;



% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.numGames.Value = 1;
handles.numGames.String = '';
handles.gameNum.Value = 1;
handles.gameNum.String = '0';
handles.p1Wins.String = '0';
handles.p2Wins.String = '0';
handles.p3Wins.String = '0';
handles.p4Wins.String = '0';
handles.p5Wins.String = '0';
handles.p6Wins.String = '0';

handles.p1Wins.Value = 0;
handles.p2Wins.Value = 0;
handles.p3Wins.Value = 0;
handles.p4Wins.Value = 0;
handles.p5Wins.Value = 0;
handles.p6Wins.Value = 0;

handles.winPct.Value = 0;
handles.winPct.String = '';

set(handles.prog1,'BackgroundColor','white');
set(handles.progress,'BackgroundColor','white');
handles.progress.Value = 0;
handles.progress.String = '';

axes(handles.barGraph);
cla reset;
%axes(handles.progressBar);
%cla reset;


% --- Executes on slider movement.
function v1s_Callback(hObject, eventdata, handles)
% hObject    handle to v1s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
v1string = handles.v1s.Value;
handles.v1txt.String = num2str(v1string);
% --- Executes during object creation, after setting all properties.
function v1s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v1s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function v2s_Callback(hObject, eventdata, handles)
% hObject    handle to v2s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
v2string = handles.v2s.Value;
handles.v2txt.String = num2str(v2string);

% --- Executes during object creation, after setting all properties.
function v2s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v2s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function v3s_Callback(hObject, eventdata, handles)
% hObject    handle to v3s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
v3string = handles.v3s.Value;
handles.v3txt.String = num2str(v3string);

% --- Executes during object creation, after setting all properties.
function v3s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v3s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function v4s_Callback(hObject, eventdata, handles)
% hObject    handle to v4s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
v4string = handles.v4s.Value;
handles.v4txt.String = num2str(v4string);

% --- Executes during object creation, after setting all properties.
function v4s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v4s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function v5s_Callback(hObject, eventdata, handles)
% hObject    handle to v5s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
v5string = handles.v5s.Value;
handles.v5txt.String = num2str(v5string);

% --- Executes during object creation, after setting all properties.
function v5s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v5s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function v6s_Callback(hObject, eventdata, handles)
% hObject    handle to v6s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
v6string = handles.v6s.Value;
handles.v6txt.String = num2str(v6string);

% --- Executes during object creation, after setting all properties.
function v6s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v6s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function v1txt_Callback(hObject, eventdata, handles)
% hObject    handle to v1txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v1txt as text
%        str2double(get(hObject,'String')) returns contents of v1txt as a double
v1num= handles.v1txt.String;
handles.v1s.Value = str2double(v1num);

% --- Executes during object creation, after setting all properties.
function v1txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v1txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v2txt_Callback(hObject, eventdata, handles)
% hObject    handle to v2txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v2txt as text
%        str2double(get(hObject,'String')) returns contents of v2txt as a double
v2num= handles.v2txt.String;
handles.v2s.Value = str2double(v2num);

% --- Executes during object creation, after setting all properties.
function v2txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v2txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v3txt_Callback(hObject, eventdata, handles)
% hObject    handle to v3txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v3txt as text
%        str2double(get(hObject,'String')) returns contents of v3txt as a double
v3num= handles.v3txt.String;
handles.v3s.Value = str2double(v3num);

% --- Executes during object creation, after setting all properties.
function v3txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v3txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v4txt_Callback(hObject, eventdata, handles)
% hObject    handle to v4txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v4txt as text
%        str2double(get(hObject,'String')) returns contents of v4txt as a double
v4num= handles.v4txt.String;
handles.v4s.Value = str2double(v4num);

% --- Executes during object creation, after setting all properties.
function v4txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v4txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v5txt_Callback(hObject, eventdata, handles)
% hObject    handle to v5txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v5txt as text
%        str2double(get(hObject,'String')) returns contents of v5txt as a double
v5num= handles.v5txt.String;
handles.v5s.Value = str2double(v5num);

% --- Executes during object creation, after setting all properties.
function v5txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v5txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v6txt_Callback(hObject, eventdata, handles)
% hObject    handle to v6txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v6txt as text
%        str2double(get(hObject,'String')) returns contents of v6txt as a double
v6num= handles.v6txt.String;
handles.v6s.Value = str2double(v6num);

% --- Executes during object creation, after setting all properties.
function v6txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v6txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.v1s.Value = .2;
handles.v2s.Value = .1;
handles.v3s.Value = .6;
handles.v4s.Value = .55;
handles.v5s.Value = .99;
handles.v6s.Value = .92;
handles.v1txt.String = '.2';
handles.v2txt.String = '.1';
handles.v3txt.String = '.6';
handles.v4txt.String = '.55';
handles.v5txt.String = '.99';
handles.v6txt.String = '.92';
