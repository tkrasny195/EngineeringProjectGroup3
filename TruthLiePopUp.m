function varargout = TruthLiePopUp(varargin)
% TRUTHLIEPOPUP MATLAB code for TruthLiePopUp.fig
%      TRUTHLIEPOPUP, by itself, creates a new TRUTHLIEPOPUP or raises the existing
%      singleton*.
%
%      H = TRUTHLIEPOPUP returns the handle to a new TRUTHLIEPOPUP or the handle to
%      the existing singleton*.
%
%      TRUTHLIEPOPUP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRUTHLIEPOPUP.M with the given input arguments.
%
%      TRUTHLIEPOPUP('Property','Value',...) creates a new TRUTHLIEPOPUP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TruthLiePopUp_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TruthLiePopUp_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TruthLiePopUp

% Last Modified by GUIDE v2.5 13-Apr-2019 22:22:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TruthLiePopUp_OpeningFcn, ...
                   'gui_OutputFcn',  @TruthLiePopUp_OutputFcn, ...
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


% --- Executes just before TruthLiePopUp is made visible.
function TruthLiePopUp_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TruthLiePopUp (see VARARGIN)

% Choose default command line output for TruthLiePopUp
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TruthLiePopUp wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = TruthLiePopUp_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in menu1.
function menu1_Callback(hObject, eventdata, handles)
% hObject    handle to menu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns menu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menu1
iM = handles.menu1.Value;
if iM == 1
    currentVal = 3;
elseif iM == 2
    handles.p2.Value(1,1) = handles.p2.Value(1,1) + 1;
    currentVal = 2;
elseif iM == 3
    handles.p2.Value(1,2) = handles.p2.Value(1,2) + 1;
    currentVal = 1;
end
setappdata(0,'p2current',currentVal);
setappdata(0,'p2lies',handles.p2.Value(1,2));
setappdata(0,'p2truths',handles.p2.Value(1,1));
% --- Executes during object creation, after setting all properties.
function menu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in menu2.
function menu2_Callback(hObject, eventdata, handles)
% hObject    handle to menu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns menu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menu2
iM = handles.menu2.Value;
if iM == 1
    currentVal = 3;
elseif iM == 2
    handles.p3.Value(1,1) = handles.p3.Value(1,1) + 1;
    currentVal = 2;
elseif iM == 3
    handles.p3.Value(1,2) = handles.p3.Value(1,2) + 1;
    currentVal = 1;
end
setappdata(0,'p3current',currentVal);
setappdata(0,'p3lies',handles.p3.Value(1,2));
setappdata(0,'p3truths',handles.p3.Value(1,1));
% --- Executes during object creation, after setting all properties.
function menu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in menu3.
function menu3_Callback(hObject, eventdata, handles)
% hObject    handle to menu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns menu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menu3
iM = handles.menu3.Value;
if iM == 1
    currentVal = 3;
elseif iM == 2
    handles.p4.Value(1,1) = handles.p4.Value(1,1) + 1;
    currentVal = 2;
elseif iM == 3
    handles.p4.Value(1,2) = handles.p4.Value(1,2) + 1;
    currentVal = 1;
end

setappdata(0,'p4current',currentVal);
setappdata(0,'p4lies',handles.p4.Value(1,2));
setappdata(0,'p4truths',handles.p4.Value(1,1));
% --- Executes during object creation, after setting all properties.
function menu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in menu4.
function menu4_Callback(hObject, eventdata, handles)
% hObject    handle to menu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns menu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menu4
iM = handles.menu4.Value;
if iM == 1
    currentVal = 3;
elseif iM == 2
    handles.p5.Value(1,1) = handles.p5.Value(1,1) + 1;
    currentVal = 2;
elseif iM == 3
    handles.p5.Value(1,2) = handles.p5.Value(1,2) + 1;
    currentVal = 1;
end
setappdata(0,'p5current',currentVal);
setappdata(0,'p5lies',handles.p5.Value(1,2));
setappdata(0,'p5truths',handles.p5.Value(1,1));
% --- Executes during object creation, after setting all properties.
function menu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in menu5.
function menu5_Callback(hObject, eventdata, handles)
% hObject    handle to menu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns menu5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menu5
iM = handles.menu5.Value;
if iM == 1
    currentVal = 3;
elseif iM == 2
    handles.p6.Value(1,1) = handles.p6.Value(1,1) + 1;
    currentVal = 2;
elseif iM == 3
    handles.p6.Value(1,2) = handles.p6.Value(1,2) + 1;
    currentVal = 1;
end
setappdata(0,'p6current',currentVal);
setappdata(0,'p6lies',handles.p6.Value(1,2));
setappdata(0,'p6truths',handles.p6.Value(1,1));
% --- Executes during object creation, after setting all properties.
function menu5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
