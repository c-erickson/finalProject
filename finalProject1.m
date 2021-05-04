function [] = finalProject1()
    close all; %close all to close all other figures
    global gui;
    gui.fig = figure('numbertitle','off','name','Plot GUI'); %creating a gui figure 
    gui.plot = plot(0,0); %create a blank plot 
    gui.plot.Parent.Position = [0.2 0.25 0.8 0.8]; %specifiy the position of the parent plot
    %create a plot button and specifies the location 
    gui.plotBtn = uicontrol('style','pushbutton','units','normalized','position',[.85 .05 .07 .07],'string','Plot','callback',{@plot});
