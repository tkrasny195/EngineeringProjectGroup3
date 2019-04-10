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

% Last Modified by GUIDE v2.5 31-Mar-2019 15:13:00

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


% --- Outputs from this function are returned to the command line.
function varargout = playAGameGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
