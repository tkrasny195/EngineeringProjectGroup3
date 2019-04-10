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

% Last Modified by GUIDE v2.5 07-Apr-2019 17:44:24

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
rectangle('position', [0,0,30,30],'FaceColor','blue','Curvature',curBackground);

axes(handles.layoutAxes2);
set(handles.layoutAxes2,'visible','off');
rectangle('position', [0,0,30,30],'FaceColor','white');

axes(handles.layoutAxes3);
set(handles.layoutAxes3,'visible','off');
rectangle('position', [0,0,30,30],'FaceColor','blue');

axes(handles.layoutAxes4);
set(handles.layoutAxes4,'visible','off');
rectangle('position', [0,0,30,30],'FaceColor','black','Curvature',curBackground);

redcup = imread('redcup1.png');
yellowcup = imread('yellowcup1.png');
greencup = imread('greencup1.png');
lbluecup = imread('lbluecup1.png');
orangecup = imread('orangecup1.png');
dbluecup = imread('dbluecup1.png');
axes(handles.dice1);
imshow(redcup);
axes(handles.dice2);
imshow(yellowcup);
axes(handles.dice3);
imshow(greencup);
axes(handles.dice4);
imshow(lbluecup);
axes(handles.dice5);
imshow(orangecup);
axes(handles.dice6);
imshow(dbluecup);

axes(handles.arrowBackground);
set(handles.arrowBackground,'visible','off');
d = 2;
c = [0 0];
pos = [c-d/2 d d];
rectangle('Position',pos,'Curvature',[1 1],'FaceColor','black');


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

