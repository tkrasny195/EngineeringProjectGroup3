function varargout = playAGameGUI(varargin)
% PLAYAGAMEGUI MATLAB code for playAGameGUI.fig
%      PLAYAGAMEGUI, by itself, creates a new PLAYAGAMEGUI or raises the existing
%      singleton*.
%
%      H = PLAYAGAMEGUI returns the handle to a new PLAYAGAMEGUI or the handle to
%      the existing singleton*.
%
%      PLAYAGAMEGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PLAYAGAMEGUI.M with the given input arguments.
%
%      PLAYAGAMEGUI('Property','Value',...) creates a new PLAYAGAMEGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before playAGameGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to playAGameGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help playAGameGUI

% Last Modified by GUIDE v2.5 10-Apr-2019 23:39:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @playAGameGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @playAGameGUI_OutputFcn, ...
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


% --- Executes just before playAGameGUI is made visible.
function playAGameGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to playAGameGUI (see VARARGIN)

% Choose default command line output for playAGameGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes playAGameGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);

set(handles.dice1,'visible','off');
set(handles.dice2,'visible','off');
set(handles.dice3,'visible','off');
set(handles.dice4,'visible','off');
set(handles.dice5,'visible','off');

curBackground = .2;
axes(handles.layoutAxes1);
set(handles.layoutAxes1,'visible','off');
rectangle('position', [0,0,30,30],'FaceColor','white','Curvature',.1);

axes(handles.layoutAxes2);
set(handles.layoutAxes2,'visible','off');
rectangle('position', [0,0,30,30],'FaceColor','blue');

axes(handles.layoutAxes3);
set(handles.layoutAxes3,'visible','off');
rectangle('position', [0,0,30,30],'FaceColor','blue','Curvature',curBackground);

axes(handles.layoutAxes4);
set(handles.layoutAxes4,'visible','off');
rectangle('position', [0,0,30,30],'FaceColor','white','Curvature',curBackground);

axes(handles.arrowBackground);
set(handles.arrowBackground,'visible','off');
d = 2;
c = [0 0];
pos = [c-d/2 d d];
rectangle('Position',pos,'Curvature',[1 1],'FaceColor','black');

axes(handles.layoutAxes5);
set(handles.layoutAxes5,'visible','off');
rectangle('position', [0,0,30,30],'FaceColor','black');
uistack(handles.layoutAxes5,'bottom');


avatar = imread('avatar3.jpg');
redcup = imread('redcup1.png');
yellowcup = imread('yellowcup1.png');
greencup = imread('greencup1.png');
orangecup = imread('orangecup1.png');
dbluecup = imread('dbluecup1.png');
axes(handles.player1);
imshow(avatar);
axes(handles.player2);
imshow(yellowcup);
axes(handles.player3);
imshow(greencup);
axes(handles.player4);
imshow(redcup);
axes(handles.player5);
imshow(orangecup);
axes(handles.player6);
imshow(dbluecup);

arrow1 = imread('arrow3.png');
arrowG = rgb2gray(arrow1);
[nRow,nCol] = size(arrowG);
imageIntensity = arrowG;
for iRow = 1:nRow
    for iCol = 1:nCol
        if imageIntensity(iRow, iCol) > 246;
            imageIntensity(iRow, iCol) = 0;
        end
    end
end
arrow = repmat(imageIntensity,[1,1,3]);
for k = 1:3
    for iRow = 1:nRow
        for iCol = 1:nCol
            if arrow(iRow, iCol,k) > 0
                if k == 2
                    arrow(iRow, iCol,k) = 255;
                else
                    arrow(iRow, iCol,k) = 0;
                end
            end
        end
    end
end

axes(handles.arrow);
set(handles.arrow,'visible','off');
theta = 270;
arrow = imrotate(arrow,theta,'crop');
imshow(arrow);

% --- Outputs from this function are returned to the command line.
function varargout = playAGameGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in rollDice.
function rollDice_Callback(hObject, eventdata, handles)
% hObject    handle to rollDice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
valDice1 = randi(6);
valDice2 = randi(6);
valDice3 = randi(6);
valDice4 = randi(6);
valDice5 = randi(6);
dice1 = imread('dice1.png');
dice2 = imread('dice2.png');
dice3 = imread('dice3.png');
dice4 = imread('dice4.png');
dice5 = imread('dice5.png');
dice6 = imread('dice6.png');
redx = imread('redx3.jpg');

if handles.dice1Count.Value == 4
    valDice5 = 0;
elseif handles.dice1Count.Value == 3 
    valDice5 = 0;
    valDice4 = 0;
elseif handles.dice1Count.Value == 2
    valDice5 = 0;
    valDice4 = 0;
    valDice3 = 0;
elseif handles.dice1Count.Value == 1
    valDice5 = 0;
    valDice4 = 0;
    valDice3 = 0;
    valDice2 = 0;
elseif handles.dice1Count.Value == 0
    valDice5 = 0;
    valDice4 = 0;
    valDice3 = 0;
    valDice2 = 0;
    valDice1 = 0;
end

switch valDice1
    case 0
        axes(handles.dice1);
        imshow(redx);
    case 1
        axes(handles.dice1);
        imshow(dice1);
    case 2
        axes(handles.dice1);
        imshow(dice2);
    case 3
        axes(handles.dice1);
        imshow(dice3);
    case 4
        axes(handles.dice1);
        imshow(dice4);
    case 5
        axes(handles.dice1);
        imshow(dice5);
    case 6
        axes(handles.dice1);
        imshow(dice6);
end
switch valDice2
    case 0
        axes(handles.dice2);
        imshow(redx);
    case 1
        axes(handles.dice2);
        imshow(dice1);
    case 2
        axes(handles.dice2);
        imshow(dice2);
    case 3
        axes(handles.dice2);
        imshow(dice3);
    case 4
        axes(handles.dice2);
        imshow(dice4);
    case 5
        axes(handles.dice2);
        imshow(dice5);
    case 6
        axes(handles.dice2);
        imshow(dice6);
end
switch valDice3
    case 0
        axes(handles.dice3);
        imshow(redx);
    case 1
        axes(handles.dice3);
        imshow(dice1);
    case 2
        axes(handles.dice3);
        imshow(dice2);
    case 3
        axes(handles.dice3);
        imshow(dice3);
    case 4
        axes(handles.dice3);
        imshow(dice4);
    case 5
        axes(handles.dice3);
        imshow(dice5);
    case 6
        axes(handles.dice3);
        imshow(dice6);
end
switch valDice4
    case 0
        axes(handles.dice4);
        imshow(redx);
    case 1
        axes(handles.dice4);
        imshow(dice1);
    case 2
        axes(handles.dice4);
        imshow(dice2);
    case 3
        axes(handles.dice4);
        imshow(dice3);
    case 4
        axes(handles.dice4);
        imshow(dice4);
    case 5
        axes(handles.dice4);
        imshow(dice5);
    case 6
        axes(handles.dice4);
        imshow(dice6);
end
switch valDice5
    case 0
        axes(handles.dice5);
        imshow(redx);
    case 1
        axes(handles.dice5);
        imshow(dice1);
    case 2
        axes(handles.dice5);
        imshow(dice2);
    case 3
        axes(handles.dice5);
        imshow(dice3);
    case 4
        axes(handles.dice5);
        imshow(dice4);
    case 5
        axes(handles.dice5);
        imshow(dice5);
    case 6
        axes(handles.dice5);
        imshow(dice6);
end


% --- Executes on button press in callBS.
function callBS_Callback(hObject, eventdata, handles)
% hObject    handle to callBS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



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
