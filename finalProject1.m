function [] = finalProject1()
    close all; %close all to close all other figures
    global gui;
    gui.fig = figure('numbertitle','off','name','Plot GUI'); %creating a gui figure 
    gui.plot = plot(0,0); %create a blank plot 
    gui.plot.Parent.Position = [0.2 0.25 0.8 0.8]; %specifiy the position of the parent plot
    %create a plot button and specifies the location 
    gui.plotBtn = uicontrol('style','pushbutton','units','normalized','position',[.85 .05 .07 .07],'string','Plot','callback',{@plot});

    %create a button group that will refer to the callback radioSelect1
    gui.btnGroup1 = uibuttongroup('visible','on','unit','normalized','position',[0 0.75 .15 .15],'selectionChangedfcn',{@radioSelect1});
    %create 3 radio buttons that allow the color of the plot marker to be
    %chosen by the user
    gui.radBtnC1 = uicontrol(gui.btnGroup1,'style','radiobutton','units','normalized','position',[.1 .8 1 .2],'HandleVisibility','off','string','marked by blue');
    gui.radBtnC2 = uicontrol(gui.btnGroup1,'style','radiobutton','units','normalized','position',[.1 .5 1 .2],'HandleVisibility','off','string','marked by red');
    gui.radBtnC3 = uicontrol(gui.btnGroup1,'style','radiobutton','units','normalized','position',[.1 .2 1 .2],'HandleVisibility','off','string','marked by green');
    
    %create an additional button group, specifiying location, that will
    %refer to the callback function radioSelect2
    gui.btnGroup2 = uibuttongroup('visible','on','unit','normalized','position',[0 0.5 .15 .15],'selectionChangedfcn',{@radioSelect2});
    %create three radio buttons that allow the user to choose the type of
    %plot marker that they would like to use
    gui.radBtnM1 = uicontrol(gui.btnGroup2,'style','radiobutton','units','normalized','position',[.1 .8 1 .2],'HandleVisibility','off','string','marked by *');
    gui.radBtnM2 = uicontrol(gui.btnGroup2,'style','radiobutton','units','normalized','position',[.1 .5 1 .2],'HandleVisibility','off','string','marked by o');
    gui.radBtnM3 = uicontrol(gui.btnGroup2,'style','radiobutton','units','normalized','position',[.1 .2 1 .2],'HandleVisibility','off','string','marked by --');
    
    %creating a reset push button on the figure that will refer to the
    %callback reset
    gui.resetBtn = uicontrol('style','pushbutton','units','normalized','position',[.75 .05 .07 .07],'string','Reset','callback',{@reset});
   
    
    
    
    
    %creates an edit box on the figure
    gui.edit1 = uicontrol('style','edit','units','normalized','position',[.02 .01 .05 .07]);
    %tells the edit box to refer to the specified callback function
    set(gui.edit1,'callback',{@edit1_cb,gui})
    %creates a string above the text box on the figure
    gui.edit1 = uicontrol('style','text','units','normalized','position',[.02 .07 .05 .09],'string','edit x coordinate','horizontalalignment','right');
    
    %creates an edit box on the figure
    gui.edit2 = uicontrol('style','edit','units','normalized','position',[.11 .01 .05 .07]);
    %tells the edit box to refer to the specified callback function
    set(gui.edit2,'callback',{@edit2_cb,gui})
    %creates a string above the text box on the figure
    gui.edit2 = uicontrol('style','text','units','normalized','position',[.11 .07 .05 .09],'string','edit y coordinate','horizontalalignment','right');

     %creates an edit box on the figure
     gui.edit3 = uicontrol('style','edit','units','normalized','position',[.18 .01 .05 .07]);
     %tells the edit box to refer to the specified callback function
     set(gui.edit3,'callback',{@edit3_cb,gui})
     %creates a string above the text box on the figure
     gui.edit3 = uicontrol('style','text','units','normalized','position',[.18 .07 .05 .09],'string','edit x lim','horizontalalignment','right');
     
      %creates an edit box on the figure
      gui.editx = uicontrol('style','edit','units','normalized','position',[.25 .01 .05 .07]);
      %tells the edit box to refer to the specified callback function
      set(gui.edit3,'callback',{@editx_cb,gui})
      
      %creates a text box for the work "to" between the first edit box for
      %the lim and the second
      gui.text = uicontrol('style','text','units','normalized','position',[.20 .07 .05 .07],'string','to','horizontalalignment','right');

     %creates an edit box on the figure
     gui.edit4 = uicontrol('style','edit','units','normalized','position',[.32 .01 .05 .07]);
     %tells the edit box to refer to the specified callback function
     set(gui.edit4,'callback',{@edit4_cb,gui})
     %creates a string above the text box on the figure
     gui.edit4 = uicontrol('style','text','units','normalized','position',[.32 .07 .05 .09],'string','edit y lim','horizontalalignment','right');
     
     %creates an edit box on the figure
     gui.edity = uicontrol('style','edit','units','normalized','position',[.39 .01 .05 .07]);
     %tells the edit box to refer to the specified callback function
      set(gui.edit4,'callback',{@edit4_cb,gui})
     
      %creates a text box for the work "to" between the first edit box for
      %the lim and the second
      gui.text = uicontrol('style','text','units','normalized','position',[.37 .07 .05 .07],'string','to','horizontalalignment','right');
     
     %creates an edit box on the figure
     gui.edit5 = uicontrol('style','edit','units','normalized','position',[.46 .01 .05 .07]);
     %tells the edit box to refer to the specified callback function
     set(gui.edit5,'callback',{@edit5_cb,gui})
     %creates a string above the text box on the figure
     gui.edit5 = uicontrol('style','text','units','normalized','position',[.46 .07 .05 .09],'string','edit plot title','horizontalalignment','right');
     
     %creates an edit box on the figure
     gui.edit6 = uicontrol('style','edit','units','normalized','position',[.53 .01 .05 .07]);
     %tells the edit box to refer to the specified callback function
     set(gui.edit6,'callback',{@edit6_cb,gui})
     %creates a string above the text box on the figure
     gui.edit6 = uicontrol('style','text','units','normalized','position',[.53 .07 .05 .09],'string','edit x axis title','horizontalalignment','right');
     
    %creates an edit box on the figure
    gui.edit7 = uicontrol('style','edit','units','normalized','position',[.60 .01 .05 .07]);
    %tells the edit box to refer to the specified callback function
    set(gui.edit7,'callback',{@edit7_cb,gui})
    %creates a string above the text box on the figure
    gui.edit7 = uicontrol('style','text','units','normalized','position',[.60 .07 .05 .09],'string','edit y axis title','horizontalalignment','right');
end 
  

    
function [] = edit1_cb(~,~) %callback function for the gui.edit1 edit box (the x coordinate)
    global gui;
        gui.newX = char(get(str2num(gui.edit1,'String'))); %set variable to the string aquired from the edit box, convert the string to a number
        
end 
    
function [] = edit2_cb(~,~) %callback function for the gui.edit2 edit box (the y coordinate)
    global gui;
         gui.newY = char(get(str2num(gui.edit2,'String')));%set variable to the string aquired from the edit box, convert the string to a number
    
end 

function [] = edit3_cb(~,~) %callback function for the gui.edit3 edit box (first bound of the x lim)
    global gui;
        gui.newXLim1 = char(get(str2num(gui.edit3,'String'))); %set variable to the string aquired from the edit box, convert the string to a number  
     
end 

function [] = editx_cb(~,~) %callback function for the gui.edit4 edit box (second bound of the x lim)
    global gui;
         gui.newXLim2 = char(get(str2num(gui.editx,'String'))); %set variable to the string aquired from the edit box, convert the string to a number
       
end 

function [] = edit4_cb(~,~) %callback function for the gui.edit4 edit box (first bound of the y lim)
    global gui;
         gui.newYLim1 = char(get(str2num(gui.edit4,'String')));  %set variable to the string aquired from the edit box, convert the string to a number
    
end 

function [] = edity_cb(~,~) %callback function for the gui.edity edit box (second bound of the y lim)
    global gui;
         gui.newYLim2 = char(get(str2num(gui.edity,'String')));%set variable to the string aquired from the edit box, convert the string to a number
    
end 
    
function [] = edit5_cb(~,~) %callback function for the gui.edit5 edit box (new plot title)
   global gui; 
         gui.newPlotTitle = char(get(gui.edit5,'String')); %set variable to the string aquired from the edit box
       
end

function [] = edit6_cb(~,~) %callback function for the gui.edit6 edit box (new x axis label)
    global gui;
         gui.newXAxis = char(get(gui.edit6,'String')); %set variable to the string aquired from the edit box
       
end 

function [] = edit7_cb(~,~) %callback function for the gui.edit7 edit box (new y axis label)
    global gui;
         gui.newYAxis = char(get(gui.edit7,'String')); %set variable to the string aquired from the edit box
       
end 

% %this function is commented because when it is run, it causes the figure to
% %appear blank
% function [] = plot(~,~)
%   global gui; 
%       figure;
%       gui.plot = plot(gui.newX, gui.newY,'gui.radioSelect1 gui.radioSelect2');
%       xlabel(gui.newXAxis);
%       ylabel(gui.newYAxis);
%       title(gui.newPlotTitle);
%       xlim([gui.newXLim1 gui.newXLim2]);
%       ylim([gui.newYLim1 gui.newYLim2]);
%       if strcmp(gui.color,'green') %if statment that specifies what to plot if 
%           %green is selected
%           plot(gui.newX, gui.newY, 'g'); 
%       elseif strcmp(gui.color,'blue') %if statement that specifies what to 
%           %plot if blue is selected
%           plot(gui.newX, gui.newY, 'b')
%       else 
%           plot(gui.newX, gui.newY, 'r'); %if statement that specifies what 
%           %to plot if red is selected
%       end 
%       
%       if strcmp(gui.symbol,'*') %if statement that specifies what to plot 
%           %if * is selected
%           plot(gui.newX, gui.newY, '*');
%       elseif strcmp(symbol,'o') %if statement that specifies what to plot 
%           %if o is selected
%           plot(gui.newX, gui.newY,'o');
%       else 
%           plot(gui.newX, gui.newY,'--'); %if statement that specifies what 
%           %to plot if -- is selected
%       end 
% 
%       
% end     



function [] = plotMsg(~, ~) %this function uses if statements to determine if the inputs in the edit boxes are valid 
    
global gui;

    if isempty(gui.edit1) || isempty(gui.edit2) %if the edit box for gui.edit1 or gui.edit2 is empty, then...
    msgbox('Enter a number to plot','Ploting Error','error','modal')    %use this message box to return this error
    elseif isnan(gui.edit1) || isnan(gui.edit2) %if the input is not a number in either gui.edit1 or 2, then...
    msgbox('Either the X or Y coordindate is not a number. Insert a number within the xlim and ylim to plot','Ploting Error','error','modal') %use this message box to return this error
    elseif isnum(gui.edit1) && isnum(gui.edit2) %if the input is a number in both, then plot
    plot(gui.newX, gui.newY);
    title(gui.newPlotTitle);
    xlabel(gui.newXAxis);
    ylabel(gui.newYAxis);
    xlim([gui.newXLim1 gui.newXLim2]);
    ylim([gui.newYLim1 gui.newYLim2]);
    end 
        
end 

function [] = reset(~,~) %this is the callback function for reset pushbutton created previously
     global gui;    
            gui.reset = cla(gui.plot,'reset'); %uses the cla function to clear the plot 
            msgbox('Complete','Reset','modal'); %displays the message "complete" in a text box entitled "Reset"
               
end 


function [] = radioSelect1(~,~) %callback function for the first set of radio buttons
    global gui;
    gui.color = gui.btnGroup1.selectionChangedfcn.String; %THIS DOESNT MAKE SENSE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    plot(gui.color);
end 


function [] = radioSelect2(~,~)
    global gui;
    gui.symbol = gui.btnGroup2.selectedChangedfcn.String; %THIS DOESNT MAKE SENSE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    plot(gui.symbol)
end 
