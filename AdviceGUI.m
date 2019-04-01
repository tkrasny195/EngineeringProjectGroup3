function varargout = AdviceGUI(varargin)
% ADVICEGUI MATLAB code for AdviceGUI.fig
%      ADVICEGUI, by itself, creates a new ADVICEGUI or raises the existing
%      singleton*.
%
%      H = ADVICEGUI returns the handle to a new ADVICEGUI or the handle to
%      the existing singleton*.
%
%      ADVICEGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ADVICEGUI.M with the given input arguments.
%
%      ADVICEGUI('Property','Value',...) creates a new ADVICEGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AdviceGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AdviceGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AdviceGUI

% Last Modified by GUIDE v2.5 31-Mar-2019 20:03:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AdviceGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @AdviceGUI_OutputFcn, ...
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


% --- Executes just before AdviceGUI is made visible.
function AdviceGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AdviceGUI (see VARARGIN)

% Choose default command line output for AdviceGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

smallDiceImage = imread('diceimage2.jpg');
axes(handles.dice1);
imshow(smallDiceImage);
axes(handles.dice2);
imshow(smallDiceImage);
axes(handles.dice3);
imshow(smallDiceImage);
axes(handles.dice4);
imshow(smallDiceImage);
axes(handles.dice5);
imshow(smallDiceImage);
axes(handles.dice6);
imshow(smallDiceImage);


axes(handles.layoutAxes1);
set(handles.layoutAxes1,'visible','off');
rectangle('position', [0,0,30,30]);

axes(handles.layoutAxes2);
set(handles.layoutAxes2,'visible','off');
rectangle('position', [0,0,30,30]);

axes(handles.layoutAxes3);
set(handles.layoutAxes3,'visible','off');
rectangle('position', [0,0,30,30]);

set(handles.nextPlayer, 'UserData',0);





% UIWAIT makes AdviceGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AdviceGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function userDice1_Callback(hObject, eventdata, handles)
% hObject    handle to userDice1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of userDice1 as text
%        str2double(get(hObject,'String')) returns contents of userDice1 as a double
dice1String = handles.userDice1.String;
dice1Val = str2double(dice1String);
handles.userDice1.Value = dice1Val;

% --- Executes during object creation, after setting all properties.
function userDice1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to userDice1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function userDice2_Callback(hObject, eventdata, handles)
% hObject    handle to userDice2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of userDice2 as text
%        str2double(get(hObject,'String')) returns contents of userDice2 as a double
dice2String = handles.userDice2.String;
dice2Val = str2double(dice2String);
handles.userDice2.Value = dice2Val;

% --- Executes during object creation, after setting all properties.
function userDice2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to userDice2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function userDice3_Callback(hObject, eventdata, handles)
% hObject    handle to userDice3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of userDice3 as text
%        str2double(get(hObject,'String')) returns contents of userDice3 as a double
dice3String = handles.userDice3.String;
dice3Val = str2double(dice3String);
handles.userDice3.Value = dice3Val;

% --- Executes during object creation, after setting all properties.
function userDice3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to userDice3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function userDice4_Callback(hObject, eventdata, handles)
% hObject    handle to userDice4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of userDice4 as text
%        str2double(get(hObject,'String')) returns contents of userDice4 as a double
dice4String = handles.userDice4.String;
dice4Val = str2double(dice4String);
handles.userDice4.Value = dice4Val;

% --- Executes during object creation, after setting all properties.
function userDice4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to userDice4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function userDice5_Callback(hObject, eventdata, handles)
% hObject    handle to userDice5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of userDice5 as text
%        str2double(get(hObject,'String')) returns contents of userDice5 as a double
dice5String = handles.userDice5.String;
dice5Val = str2double(dice5String);
handles.userDice5.Value = dice5Val;

% --- Executes during object creation, after setting all properties.
function userDice5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to userDice5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function userDice6_Callback(hObject, eventdata, handles)
% hObject    handle to userDice6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of userDice6 as text
%        str2double(get(hObject,'String')) returns contents of userDice6 as a double
dice6String = handles.userDice6.String;
dice6Val = str2double(dice6String);
handles.userDice6.Value = dice6Val;

% --- Executes during object creation, after setting all properties.
function userDice6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to userDice6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in roundReset.
function roundReset_Callback(hObject, eventdata, handles)
% hObject    handle to roundReset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.userDice1.Value = 0;
handles.userDice1.String = '';
handles.userDice2.Value = 0;
handles.userDice2.String = '';
handles.userDice3.Value = 0;
handles.userDice3.String = '';
handles.userDice4.Value = 0;
handles.userDice4.String = '';
handles.userDice5.Value = 0;
handles.userDice5.String = '';
handles.userDice6.Value = 0;
handles.userDice6.String = '';



function startingPlayer_Callback(hObject, eventdata, handles)
% hObject    handle to startingPlayer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of startingPlayer as text
%        str2double(get(hObject,'String')) returns contents of startingPlayer as a double
startingPosStr = handles.startingPlayer.String;
startingPos = str2double(startingPosStr);
handles.startingPlayer.Value = startingPos;
arrow = imread('arrow1.png');
axes(handles.arrow);
if startingPos == 1
    theta = 270;
elseif startingPos == 2
    theta = 320;
elseif startingPos == 3
    theta = 40;
elseif startingPos == 4
    theta = 90;
elseif startingPos == 5
    theta = 140;
elseif startingPos == 6
    theta = 210;
end
arrow = imrotate(arrow,theta);
imshow(arrow);




% --- Executes during object creation, after setting all properties.
function startingPlayer_CreateFcn(hObject, eventdata, handles)
% hObject    handle to startingPlayer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function currentBet_Callback(hObject, eventdata, handles)
% hObject    handle to currentBet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of currentBet as text
%        str2double(get(hObject,'String')) returns contents of currentBet as a double
unparsedBet = handles.currentBet.String;
if strcmp(unparsedBet(1), '(')
    unparsedBet = unparsedBet(2:end);
end
if strcmp(unparsedBet(2), ',')
    unparsedBet = [unparsedBet(1),unparsedBet(3:end)];
elseif length(unparsedBet) >= 3 && strcmp(unparsedBet(3), ',')
    unparsedBet = [unparsedBet(1:2),unparsedBet(4:end)];
end
if strcmp(unparsedBet(end),')')
    L = length(unparsedBet);
    unparsedBet = unparsedBet(1:(L-1));
end
handles.currentBet.Value = str2double(unparsedBet);

% --- Executes during object creation, after setting all properties.
function currentBet_CreateFcn(hObject, eventdata, handles)
% hObject    handle to currentBet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in nextPlayer.
function nextPlayer_Callback(hObject, eventdata, handles)
% hObject    handle to nextPlayer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.currentBet.Value = 0;
handles.currentBet.String = '';
axes(handles.arrow);
initialPosition = handles.startingPlayer.Value;
counter = get(hObject, 'UserData') + 1;
position = counter + initialPosition;
set(hObject, 'UserData', counter);
if position > 6
    position = 1;
    handles.startingPlayer.Value = 0;
    set(hObject, 'UserData', 1);
end
if position == 1
    theta = 270;
elseif position == 2
    theta = 320;
elseif position == 3
    theta = 40;
elseif position == 4
    theta = 90;
elseif position == 5
    theta = 140;
elseif position == 6
    theta = 210;
end
arrow = imread('arrow1.png');
arrow = imrotate(arrow,theta);
imshow(arrow);

