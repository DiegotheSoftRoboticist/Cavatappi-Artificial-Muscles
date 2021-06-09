function [ ] = PUBFIGPREP(fig_hand,varargin)

%'heigh'
%'width'
%'ratio'        i.e. width/height
%'marin'        'on' or 'off' The specified width and height of the page
%will be expanded by 2x this value beyond the width and/or heigh specified
%so that the actual printed figure will have the proper height and width.
%The resutling page can then be cropped on all size by 0.25"  (0.635 cm) if
%margin is set to 'on'. Leaving 'margin' off will result in the page size
%being the same as the figure size, and the specified width and height will
%be the size of the page, not the figure. The figure will be 0.25"
%(0.635cm) small on all size. 


%% Notes on figure sizes to get the font sizes correct
% Times new roman cap size is:
%   1356/2048*font size*1/72"    or
%   1356/2048*font size*0.3528mm
%
%   If we want size 12 font on the page, it should be this tall
%   1356/2048*12*0.3528mm = 2.803 mm tall in the figure
%   We will likely specify the figure width on the page. 
%   When using the print command in matlab a 0.25" (0.635) margin is
%   printed around the figure, so the page dimensions need to be increased
%   by 2xmargin
%   margin = 0.25*2.54; %Use the later when specifying the page size
%   This means that when the figure is brought in to Latex, the trim option
%   will need to be set
%   \includegraphics[width=ACTUAL WIDTH WITHOUT MARGIN cm,trim={0.635cm 0.635cm 0.635cm 0.635cm}, clip=true]{FILENAME.pdf}
    %Latex trims and then resized the image, so triming off the margin and
    %then resizing to the orignally desired with will work if the width
    %specified here is oversized by 2x the margin. 
    %NOTE: if you want to use this program with saveas command rather than
    %print, exporting as eps or png, etc. this option isn't important. It
    %only changes the page size, which isn't needed when exporting to eps
    %or png. Page size is needed for pdf output though. 

%INFO ON PAGE AND COLUMN WIDTH
%https://writing.stackexchange.com/questions/21658/what-is-the-image-size-in-scientific-paper-if-indicated-as-a-single-1-5-or-2-c
    
%   An 8 cm figure width is about right for a for a single 
%   column figure. The max width is about 9 cm, but specifying 8
%   automatrically give the figures some space between them. Since we will
%   be trimming the margin on the page in Latex to get the font sizes just
%   right, we don't want to specify the maximum width of 9 cm or there
%   would be no room between the figures. If you don't need to worry about
%   margins between subfigures, then you could specify the entire column
%   width of 9 cm. 
%

%   Journal fonts are generally 10 pt, but we probably want about a 4-5 pt
%   reduction in pt size from the text. 

%
%   To create the figure use the following code
%           set(findall(gcf,'-property','FontSize'),'FontSize',6)
%           set(gca,'TickLabelInterpreter','latex')
%           PUBFIGPREP(h_figure,'Ratio',1.62,'width',8,'margin','on')
%           results_location = 'Result_figures';
%           print(FILENAMESTRING,'-dpdf','-fillpage')
%   Then bring into latex like this:  
%           \includegraphics[width=8cm,trim={0.635cm 0.635cm 0.635cm 0.635cm}, clip=true]{FILENAMESTRING.pdf}


% This produced a perfectly scaled plot in latex. The only problem is that
% it is hard to see these on screen in the matlab figure window. The figure
% ends up being too small. To fix this we could scale everything up by a
% factor of 2 and then simply specify the orginally desired width in latex 
% to scale everything back down. Note that you don't need to change the
% trim settings in latex, becasue regardless of the specified figure width,
% matlab will always use a 0.25" (0.635cm) margin

% See below where I have scaled up the font size by 2x on screen, as well
% as the figure width, but maintained the orignally sized width in the
% latex code. This will bring everyhing down to 1/2 the specified in the
% matlab code
%            real_fig_width = 8; %Desired with in latex
%            scale_factor = 3;   %Scaled figure up by this so it appears the large on screen in matlab
%            real_fig_font_size = 6;
%            scaled_width = scale_factor*real_fig_width;
%            scaled_font_size = real_fig_font_size * scale_factor;
%            set(findall(gcf,'-property','FontSize'),'FontSize',scaled_font_size)
%            PUBFIGPREP(h_figure,'Ratio',1.62,'width',scaled_width,'margin','on')
%            results_location = 'Result_figures';
%            print([results_location,'/','circ_test_error_list'],'-dpdf','-fillpage')

%   Then bring into latex like this:  
%           \includegraphics[width=8cm,trim={0.635cm 0.635cm 0.635cm 0.635cm}, clip=true]{FILENAMESTRING.pdf}





%% Parse the input variables
%Modeled from 
% https://www.mathworks.com/help/matlab/matlab_prog/parse-function-inputs.html
p = inputParser;


if ismac
    cmofonepix = 1/72*2.54;
elseif ispc
    cmofonepix = 1/96*2.54;
else
    warning('Platform not supported for 1 pixel offset')
    cmofonepix = 0;
end
set(gcf,'Units', 'centimeters')%Use centimeters throughout for consistency
orig_fig_pos = get(fig_hand,'Position');

%if the user specifies nothing, then the figure will remain the same size.
defaultRatio = orig_fig_pos(3)/orig_fig_pos(4);
defaultWidth = orig_fig_pos(3);%Centimeters
defaultHeight = orig_fig_pos(4);
defaultMargin = 'on';


addRequired(p,'figure_handle',@ishandle);
addOptional(p,'ratio',defaultRatio,@isnumeric);
addOptional(p,'height',defaultHeight,@isnumeric);
addOptional(p,'width',defaultWidth,@isnumeric);
addOptional(p,'margin',defaultMargin,@ischar);

parse(p,fig_hand,varargin{:})

if ~isempty(fieldnames(p.Unmatched))
   disp('Extra inputs:')
   disp(p.Unmatched)
end
if ~isempty(p.UsingDefaults)
   disp('Using defaults: ')
   disp(p.UsingDefaults)
end

h_fig = p.Results.figure_handle;
height = p.Results.height;
width = p.Results.width;
ratio = p.Results.ratio;
margincontrol = p.Results.margin;

if strcmp(margincontrol,'on')
    margin = 0.25*2.54;%convert standard pdf margin matlab uses in print.m to centimeters to expand the page size by 2x this value
else
    margin = 0;
end

h = 1;r = 1; w = 1;
for i = 1:length(p.UsingDefaults)
    if strcmp(p.UsingDefaults{i},'height')
        h = 0;
    end
    if strcmp(p.UsingDefaults{i},'ratio')
        r = 0;
    end
    if strcmp(p.UsingDefaults{i},'width')
        w = 0;
    end
end

%Implementing the following truth table

%    ratio          height          width
%-------------------------------------------
%    input          calculated         default
%    input          input           calculated
%    input          calculated       input
%    input          input           input
%    default        input         	calculated
%    calculated     input         	input
%    default        calculated      input

if r==1 && h == 0 && w==0
    ratio =  p.Results.ratio;
    height = p.Results.width/p.Results.ratio;
    width =  p.Results.width;
elseif  r==1 && h == 1 && w==0
    ratio =  p.Results.ratio;
    height = p.Results.height;
    width =  p.Results.ratio*p.Results.height;
elseif  r==1 && h == 0 && w==1
    ratio =  p.Results.ratio;
    height = p.Results.width/p.Results.ratio;
    width =  p.Results.width;
elseif  r==1 && h == 1 && w==1
    ratio =  p.Results.ratio;
    height =  p.Results.height;
    width =  p.Results.width;
elseif  r==0 && h == 1 && w==0
    ratio =  p.Results.ratio;
    height = p.Results.height;
    width =  p.Results.ratio*p.Results.height;
elseif  r==0 && h == 1 && w==1
    ratio =  p.Results.width/p.Results.height;
    height = p.Results.height;
    width =  p.Results.width;
elseif  r==0 && h == 0 && w==1
    ratio =  p.Results.ratio;
    height = p.Results.width/p.Results.ratio;
    width =  p.Results.width;
end
    
   

%%


%width_over_height_ratio,width_in_centimeters)

%pass me a figure handle and I will resize it to the golden ratio and make
%sure there is no margins so when you use the print command it comes out
%like you want it. 



% %h_fig = figure;
% plot(rand(4))
% ylabel('lasklasjf')
% xlabel('lasklasjf')
%  title('tafs')


%orig_fig_pos = get(h_fig,'Position');

%set(gcf,'Position', [orig_fig_pos(1) orig_fig_pos(2) ratio*orig_fig_pos(4) orig_fig_pos(4)]); %set up the figure window to have the proper ratio using the original plot height and position
set(gcf,'Position', [orig_fig_pos(1) orig_fig_pos(2) width height]); %set up the figure window to have the proper ratio using the original plot height and position
set(gcf,'Paperunits', 'centimeters')

%new_fig_pos = get(h_fig,'Position');
%set(gcf,'Papersize', [new_fig_pos(3)+2*margin new_fig_pos(4)+2*margin])
set(gcf,'Papersize', [width+2*margin height+2*margin])


%Need to get a list of all the axes. Works for both cartesian and polar
%plots
ax_list_cart = findall(gcf,'Type','axes'); %create a list of all the axes we need to deal with rescaling. 
ax_list_pol = findall(gcf,'Type','Polaraxes'); 
ax_list = [ax_list_cart,ax_list_pol];

fig_pos = get(gcf,'Position');
    fig_width = fig_pos(3);
    fig_height = fig_pos(4);
    
for i = 1:length(ax_list)
    ax_list(i).Units = 'centimeter';%Switch the units to centimeters to be consistent with figure units so we can do some math. 
    
    INST(i,:) = ax_list(i).TightInset;
end

MAX_INST = max(INST,[],1);%Select the max inset of all the axes. If only one, this is the same as the inset

for i = 1:length(ax_list)
    
    %I want to make the outer position of the each axis match the size of
    %the figure window
    
%See the "control axes layout" help file for to understand position,
%outerposition, and tightinset properties. 
    %First set the outer position of the axis to the previously specified
    %figure size
    ax_list(i).OuterPosition(3) = fig_width;
    ax_list(i).OuterPosition(4) = fig_height;
    
    %Then offset the lower left position of the inner axis boundary to be
    %as small as possible. 
    ax_list(i).Position(1) = 0 + MAX_INST(1)+cmofonepix; %Offset by one pixel for some buffer;  
    ax_list(i).Position(2) = 0 + MAX_INST(2)+cmofonepix; %Offset by one pixel for some buffer;    
    
    %Then set the width and height of the inner axes to be the figure width
    %minues the tightinset left+right and top+bottom, respectively. 
   
    ax_list(i).Position(3) = fig_width - MAX_INST(1) - MAX_INST(3)- 2*cmofonepix; %Offset by one pixel for some buffer, but two here because we have on on the other side. 
    ax_list(i).Position(4) = fig_height - MAX_INST(2) - MAX_INST(4)- 2*cmofonepix; %Offset by one pixel for some buffer, but two here because we have on on the other side.
end



end
