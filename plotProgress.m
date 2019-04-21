function plotProgress(handles,n)
axes(handles.progressBar);
set(handles.progressBar,'visible','off');
p = barh(handles.gameNum.Value);
set(p,'FaceColor','green');
set(p,'BarWidth',2);