clc;
hf = figure('units','normalized','outerposition',[0 0 1 1]);

writeobj = VideoWriter('Single_RL_Inverter','Motion JPEG AVI');
open(writeobj);

xref=0;
yref=4;

[M1Gx,M1Gy,M1Sx,M1Dy,M1Sx1,M1Dx1,M1Sx2,M1Dx2,M1Sx3,M1Dx3,M1Sx4,M1Dx4]=draw_mosfet(xref,yref);
MOS1 = plot(M1Gx,M1Gy,'k', M1Sx,M1Dy,'k', M1Sx1,M1Dx1,'k', M1Sx2,M1Dx2,'k', M1Sx3,M1Dx3,'k', M1Sx4,M1Dx4,'k');
text(M1Gx(:,3)-0.75,M1Gy(:,3)+0.3,'S1','FontSize',10);
set(MOS1,'LineWidth',1.5);
hold on
MOS11=plot([M1Sx(:,6),M1Sx(:,6)],[M1Dy(:,6),M1Dy(:,6)+0.5],'k');
set(MOS11,'LineWidth',1.5);
title('SINGLE PHASE H BRIDGE INVERER','Color','r');
subtitle('OPERATION AND WAVEFORMS FOR RL LOAD-ASYMMETRIC PWM','Color','r');

hold on
xref=1.0;
yref=6;
mp=2;
[D1x1,D1x2,D1y1,D1y2]=draw_diode_mos(xref,yref,mp);
D1 = plot(D1x1,D1y1,'k', D1x2,D1y2,'k');
set(D1,'LineWidth',1.5);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

hold on
xref=0;
yref=0;

[M4Gx,M4Gy,M4Sx,M4Dy,M4Sx1,M4Dx1,M4Sx2,M4Dx2,M4Sx3,M4Dx3,M4Sx4,M4Dx4]=draw_mosfet(xref,yref);
MOS4 = plot(M4Gx,M4Gy,'k', M4Sx,M4Dy,'k', M4Sx1,M4Dx1,'k', M4Sx2,M4Dx2,'k', M4Sx3,M4Dx3,'k', M4Sx4,M4Dx4,'k');
text(M4Gx(:,3)-0.75,M4Gy(:,3)+0.3,'S4','FontSize',10);
set(MOS4,'LineWidth',1.5);

hold on
MOS41=plot([M1Sx(:,6),M1Sx(:,6)],[M4Dx1(:,4),M4Dx1(:,4)-0.5],'k');
set(MOS41,'LineWidth',1.5);

hold on
xref=1.0;
yref=2;
mp=2;
[D1x1,D1x2,D1y1,D1y2]=draw_diode_mos(xref,yref,mp);
D4 = plot(D1x1,D1y1,'k', D1x2,D1y2,'k');
set(D4,'LineWidth',1.5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

hold on
xref=4;
yref=0;

[M2Gx,M2Gy,M2Sx,M2Dy,M2Sx1,M2Dx1,M2Sx2,M2Dx2,M2Sx3,M2Dx3,M2Sx4,M2Dx4]=draw_mosfet(xref,yref);
MOS2 = plot(M2Gx,M2Gy,'k', M2Sx,M2Dy,'k', M2Sx1,M2Dx1,'k', M2Sx2,M2Dx2,'k', M2Sx3,M2Dx3,'k', M2Sx4,M2Dx4,'k');
text(M2Gx(:,3)-0.75,M2Gy(:,3)+0.3,'S2','FontSize',10);
set(MOS2,'LineWidth',1.5);

hold on
MOS21=plot([M2Sx1(:,4),M2Sx1(:,4)],[M2Dx1(:,4)-0.5,M2Dx1(:,4)],'k');
set(MOS21,'LineWidth',1.5);

hold on
xref=5.0;
yref=2;
mp=2;
[D1x1,D1x2,D1y1,D1y2]=draw_diode_mos(xref,yref,mp);
D2 = plot(D1x1,D1y1,'k', D1x2,D1y2,'k');
set(D2,'LineWidth',1.5);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hold on
xref=4;
yref=4;

[M3Gx,M3Gy,M3Sx,M3Dy,M3Sx1,M3Dx1,M3Sx2,M3Dx2,M3Sx3,M3Dx3,M3Sx4,M3Dx4]=draw_mosfet(xref,yref);
MOS3 = plot(M3Gx,M3Gy,'k', M3Sx,M3Dy,'k', M3Sx1,M3Dx1,'k', M3Sx2,M3Dx2,'k', M3Sx3,M3Dx3,'k', M3Sx4,M3Dx4,'k');
text(M3Gx(:,3)-0.75,M3Gy(:,3)+0.3,'S3','FontSize',10);
set(MOS3,'LineWidth',1.5);

hold on
MOS31=plot([M3Sx(:,6),M3Sx(:,6)],[M3Dy(:,6)+0.5,M3Dy(:,6)],'k');
set(MOS31,'LineWidth',1.5);

hold on
xref=5.0;
yref=6;
mp=2;
[D1x1,D1x2,D1y1,D1y2]=draw_diode_mos(xref,yref,mp);
D3 = plot(D1x1,D1y1,'k', D1x2,D1y2,'k');
set(D3,'LineWidth',1.5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hold on
L141=plot([M1Sx1(:,4),M4Sx(:,6)],[M1Dx1(:,4),M1Dx1(:,4)-(M1Dx1(:,4)-M4Dy(:,6))/2],'k');
L142=plot([M1Sx1(:,4),M4Sx(:,6)],[M1Dx1(:,4)-(M1Dx1(:,4)-M4Dy(:,6))/2,M4Dy(:,6)],'k');
set(L141,'LineWidth',1.5);
set(L142,'LineWidth',1.5);

hold on
L231=plot([M3Sx1(:,4),M2Sx(:,6)],[M3Dx1(:,4),M3Dx1(:,4)-(M3Dx1(:,4)-M2Dy(:,6))/2],'k');
L232=plot([M3Sx1(:,4),M2Sx(:,6)],[M3Dx1(:,4)-(M3Dx1(:,4)-M2Dy(:,6))/2,M2Dy(:,6)],'k');
set(L231,'LineWidth',1.5);
set(L232,'LineWidth',1.5);

hold on
% L13=plot([M1Sx(:,6),M1Sx(:,6),M3Sx(:,6),M3Sx(:,6)],[M1Dy(:,6),M1Dy(:,6)+0.5,M3Dy(:,6)+0.5,M3Dy(:,6)],'k');
L13=plot([M1Sx(:,6),M3Sx(:,6)],[M1Dy(:,6)+0.5,M3Dy(:,6)+0.5],'k');
set(L13,'LineWidth',1.5);


hold on
%L24=plot([M4Sx1(:,4),M4Sx1(:,4),M2Sx1(:,4),M2Sx1(:,4)],[M4Dx1(:,4),M4Dx1(:,4)-0.5,M2Dx1(:,4)-0.5,M2Dx1(:,4)],'k');
L24=plot([M4Sx1(:,4),M2Sx1(:,4)],[M4Dx1(:,4)-0.5,M2Dx1(:,4)-0.5],'k');
set(L24,'LineWidth',1.5);

hold on
DCP=plot([M1Sx(:,6),M1Sx(:,6)-3],[M1Dy(:,6)+0.5,M1Dy(:,6)+0.5],'k');
set(DCP,'color',[1 0 0]);
set(DCP,'LineWidth',1.5);

hold on
DCN=plot([M4Sx1(:,4),M4Sx1(:,4)-3],[M4Dx1(:,4)-0.5,M4Dx1(:,4)-0.5],'k');
set(DCN,'color',[1 0 0]);
set(DCN,'LineWidth',1.5);

hold on

%%%%%%%%%%%%%%%% Drawing DC source
DCB=plot([M1Sx(:,6)-3,M1Sx(:,6)-3],[M1Dy(:,6)+0.5,((M1Dy(:,6)+0.5)-(M4Dx1(:,4)-0.5))*0.45],'k');
set(DCB,'color',[1 0 0]);
DCB1=plot([M4Sx1(:,4)-3,M4Sx1(:,4)-3],[M4Dx1(:,4)-0.5,((M1Dy(:,6)+0.5)-(M4Dx1(:,4)-0.5))*0.43],'k');
set(DCB1,'color',[1 0 0]);
DCPLUS=plot([M1Sx(:,6)-3.5,M1Sx(:,6)-2.5],[((M1Dy(:,6)+0.5)-(M4Dx1(:,4)-0.5))*0.45, ((M1Dy(:,6)+0.5)-(M4Dx1(:,4)-0.5))*0.45],'k');
set(DCPLUS,'color',[1 0 0]);
text(M1Sx(:,6)-2.75,((M1Dy(:,6)+0.5)-(M4Dx1(:,4)-0.5))*0.48,'V_{dc}','FontSize',10);

DCNEG=plot([M4Sx1(:,4)-3.2,M4Sx1(:,4)-2.8],[((M1Dy(:,6)+0.5)-(M4Dx1(:,4)-0.5))*0.43, ((M1Dy(:,6)+0.5)-(M4Dx1(:,4)-0.5))*0.43],'k');
set(DCNEG,'color',[1 0 0]);
set(DCB,'LineWidth',1.5);
set(DCB1,'LineWidth',1.5);
set(DCPLUS,'LineWidth',1.5);
set(DCNEG,'LineWidth',1.5);

hold on

%%%%%%%%%%%%%%%%%%%%%%% Drawing Resistor
xrefs=1.5;
yrefs=2.0;
xrefe=5.5;
yrefe=1.5;
xshift=0;
yshift=0.8;

[rx1,ry1]=resihRL(xrefs,yrefs,xrefe,yrefe,xshift,yshift);

res=plot(rx1,ry1,'r');
set(res,'LineWidth',1.5,'Color',[1 0 0]);

%%%%%%%%%%%%%%%%%%%%%%%%% Simulation Output Parameter Squeeze

%Carrier=squeeze(out.Carrier.Data);
Carrier=rescale(squeeze(out.Carrier.Data),4,6);
time=rescale(out.tout, 7.5,20);
R1=rescale(out.Ref1.Data,2.2,5.8);
R2=rescale(out.Ref2.Data,2.2,5.8);
PWM12=rescale(squeeze(out.PWM12.Data),0,1.5);
PWM34=rescale(squeeze(out.PWM34.Data),-2.0,-0.5);
PWM1=rescale(squeeze(out.PWM1.Data),-4,-2.5);
PWM4=rescale(squeeze(out.PWM4.Data),-6.0,-4.5);

Vload=rescale(squeeze(out.Vload.Data),-5.5,-2.5);
Iload=rescale(squeeze(out.Iload.Data),-5,-3);
IS1=round(rescale(squeeze(out.IS1.Data),0,1),2);
IS2=round(rescale(squeeze(out.IS2.Data),0,1),2);
IS3=round(rescale(squeeze(out.IS3.Data),0,1),2);
IS4=round(rescale(squeeze(out.IS4.Data),0,1),2);
ID3=round(rescale(squeeze(out.ID3.Data),0,1),2);
ID4=round(rescale(squeeze(out.ID4.Data),0,1),2);
VS12=rescale(squeeze(out.VS1.Data),0,1.5);
VS34=rescale(squeeze(out.VS2.Data),-2.0,-0.5);
time1=rescale(out.tout, 22.5,35);

C_Wave=animatedline('LineWidth',1.25,'Color',[0.8500 0.3250 0.0980],'LineStyle',"-");
R1_Wave=animatedline('LineWidth',1.25,'Color',[0 0 1],'LineStyle',"-");
R2_Wave=animatedline('LineWidth',1.25,'Color',[1 0 1],'LineStyle',"-");
pwm2_Wave=animatedline('LineWidth',1.25,'Color',[0 0 1],'LineStyle',"-");
pwm3_Wave=animatedline('LineWidth',1.25,'Color',[1 0 1],'LineStyle',"-");
vload_Wave=animatedline('LineWidth',1.25,'Color',[0.4660 0.6740 0.1880],'LineStyle',"-");
iload_Wave=animatedline('LineWidth',1.25,'Color',[0.8500 0.3250 0.0980],'LineStyle',"-");
vs12_Wave=animatedline('LineWidth',1.25,'Color',[0 0 1],'LineStyle',"-");
vs34_Wave=animatedline('LineWidth',1.25,'Color',[1 0 1],'LineStyle',"-");
pwm1_Wave=animatedline('LineWidth',1.25,'Color',[0 0 1],'LineStyle',"-");
pwm4_Wave=animatedline('LineWidth',1.25,'Color',[1 0 1],'LineStyle',"-");
%%%%%%%%%%%%%%%%%%% Drawing Waveform Axis

plot([7.5 7.5],[-6 6],'LineWidth',1.0,'Color','k');  %Vertical Line
plot([7.5 20],[4 4],'LineWidth',1.0,'Color','k');   %Horizontal Line upper
plot([7.5 20],[0 0],'LineWidth',1.0,'Color','k');   %Horizontal Line middle1
plot([7.5 20],[-2 -2],'LineWidth',1.0,'Color','k');   %Horizontal Line middle2
plot([7.5 20],[-4 -4],'LineWidth',1.0,'Color','k');   %Horizontal Line middle3
plot([7.5 20],[-6 -6],'LineWidth',1.0,'Color','k');   %Horizontal Line Lower

plot([7.5 20],[-2.5 -2.5],'LineWidth',1.0,'Color','k','LineStyle',':');  %dotted line bottom for -VDC
text(19.0,-4.25,'+V_{TH}','FontSize',10);
plot([7.5 20],[-4.5 -4.5],'LineWidth',1.0,'Color','k','LineStyle',':');  %dotted line TOP for +VDC
text(19.0,-2.25,'+V_{TH}','FontSize',10);


plot([7.5 20],[1.5 1.5],'LineWidth',1.0,'Color','k','LineStyle',':');  %+VTH line for S1 AND S2
text(19.0,1.75,'+V_{TH}','FontSize',10);

plot([7.5 20],[-0.5 -0.5],'LineWidth',1.0,'Color','k','LineStyle',':');  %+VTH line for S1 AND S2
text(19.0,-0.25,'+V_{TH}','FontSize',10);

CTEXT=text(8,6.5,'CARRIER WAVE','FontSize',10);
CTEXT.Color=[0.8500 0.3250 0.0980];

R1TEXT=text(13,6.5,'R_{1}=V_{m}sin(\omegat)','FontSize',10);
R1TEXT.Color=[0 0 1];

R2TEXT=text(17,6.5,'R_{2}= --V_{m}sin(\omegat)','FontSize',10);
R2TEXT.Color=[1 0 1];


pwms1s2=text(7,0,'PWM S_{2}','FontSize',10);
pwms1s2.Rotation=90;
pwms1s2.Color=[0 0 1];

text(14,1.25,'R_{1}>Carrier Wave','FontSize',10,'Color',[0 0 1]);
text(14,0.75,'S_{2}=+V_{Th} ','FontSize',10,'Color',[0 0 1]);
text(14,0.25,'Else =0','FontSize',10,'Color',[0 0 1]);


text(8,1.25-2,'R_{2}>Carrier Wave','FontSize',10,'Color',[1 0 1]);
text(8,0.75-2,'S_{3}=+V_{Th} ','FontSize',10,'Color',[1 0 1]);
text(8,0.25-2,'Else =0','FontSize',10,'Color',[1 0 1]);

text(14,-2.75,'R_{1}>0','FontSize',10,'Color',[0 0 1]);
text(14,-3.3,'S_{1}=+V_{Th} ','FontSize',10,'Color',[0 0 1]);
text(14,-3.75,'Else =0','FontSize',10,'Color',[0 0 1]);

text(8,-2.75-2,'R_{2}>0','FontSize',10,'Color',[1 0 1]);
text(8,-3.3-2,'S_{4}=+V_{Th} ','FontSize',10,'Color',[1 0 1]);
text(8,-3.75-2,'Else =0','FontSize',10,'Color',[1 0 1]);

pwms3s4=text(7,-2.0,'PWM S_{3}','FontSize',10);
pwms3s4.Rotation=90;
pwms3s4.Color=[1 0 1];

pwms1=text(7,-4.0,'PWM S_{1}','FontSize',10);
pwms1.Rotation=90;
pwms1.Color=[0 0 1];

pwms2=text(7,-6.0,'PWM S_{4}','FontSize',10);
pwms2.Rotation=90;
pwms2.Color=[1 0 1];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Graph 2

plot([22.5 22.5],[-6 2],'LineWidth',1.0,'Color','k');  %Vertical Line
plot([22.5 35],[0 0],'LineWidth',1.0,'Color','k');   %Horizontal Line middle1
plot([22.5 35],[-2 -2],'LineWidth',1.0,'Color','k');   %Horizontal Line middle2
plot([22.5 35],[-4 -4],'LineWidth',1.0,'Color','k');   %Horizontal Line lower

plot([22.5 35],[0.75 0.75],'LineWidth',1.0,'Color','k','LineStyle',':');  %dotted line bottom for -VDC
text(35.25,0.75,'0.5V_{dc}','FontSize',10);

plot([22.5 35],[1.5 1.5],'LineWidth',1.0,'Color','k','LineStyle',':');  %dotted line bottom for -VDC
text(35.25,1.5,'V_{dc}','FontSize',10);


plot([22.5 35],[-0.5 -0.5],'LineWidth',1.0,'Color','k','LineStyle',':');  %dotted line bottom for -VDC
text(35.25,-0.5,'V_{dc}','FontSize',10);

plot([22.5 35],[-1.25 -1.25],'LineWidth',1.0,'Color','k','LineStyle',':');  %dotted line bottom for -VDC
text(35.25,-1.25,'0.5V_{dc}','FontSize',10);



plot([22.5 35],[-5.5 -5.5],'LineWidth',1.0,'Color','k','LineStyle',':');  %dotted line bottom for -VDC
text(35.25,-5.5,'-V_{dc}','FontSize',10);
plot([22.5 35],[-2.5 -2.5],'LineWidth',1.0,'Color','k','LineStyle',':');  %dotted line TOP for +VDC
text(35.25,-2.5,'+V_{dc}','FontSize',10);

% plot([7.5 20],[-5.5 -5.5],'LineWidth',1.0,'Color','k','LineStyle',':');  %dotted line bottom for -VDC
% text(19.0,-5.75,'-V_{dc}','FontSize',10);
% plot([7.5 20],[-2.5 -2.5],'LineWidth',1.0,'Color','k','LineStyle',':');  %dotted line TOP for +VDC
% text(19.0,-2.25,'+V_{dc}','FontSize',10);


text(26,2,'BLOCKING VOLTAGE ','FontSize',10);
bvtext=text(22.0,0,'V_{B} OF S_{1}','FontSize',10);
bvtext.Rotation=90;
bvtext.Color=[0 0 1];

bvtext1=text(22,-1.9,'V_{B} OF S_{4}','FontSize',10);
bvtext1.Rotation=90;
bvtext1.Color=[1 0 1];

LV=text(22,-5.5,'LOAD VOLTAGE','FontSize',10);
LV.Rotation=90;
LV.Color=[0.4660 0.6740 0.1880];

LI=text(23,-5.0,'LOAD CURRENT','FontSize',10);
LI.Color=[0.8500 0.3250 0.0980];
% LI.Rotation=90;

crtext=text(41.0,0,'Developed by Dr.M.Kaliamoorthy','FontSize',10);
crtext.Rotation=90;
crtext.Color=[1 0 1];

%%%%%%%%%%%%%%%%%%%%% Devices Box

% plot([0 0 6 6 0],[-4 -2 -2 -4 -4],'LineWidth',1.0,'Color','k');
% plot([0 6],[-3 -3],'LineWidth',1.0,'Color','k');
% plot([1.5 1.5],[-4 -2],'LineWidth',1.0,'Color','k');

DS=text(-1,-2,'DEVICE STATUS','FontSize',10);

text_x=-1;
text_y=-3;

text_xd=1.5;
text_yd=-3;

S1L=text(text_x,text_y,'S_{1}:','FontSize',10);
S1S=text(text_x+1.05,text_y+0.05,'ON','FontSize',10);
S2L=text(text_x,text_y-0.75,'S_{2}:','FontSize',10);
S2S=text(text_x+1.05,text_y-0.7,'ON','FontSize',10);
S3L=text(text_x,text_y-1.5,'S_{3}:','FontSize',10);
S3S=text(text_x+1.05,text_y-1.5+0.05,'OFF','FontSize',10);
S4L=text(text_x,text_y-2.25,'S_{4}:','FontSize',10);
S4S=text(text_x+1.05,text_y-2.25+0.05,'OFF','FontSize',10);

D1L=text(text_xd,text_yd,'D_{1}:','FontSize',10);
D1S=text(text_xd+1.05,text_yd+0.05,'ON','FontSize',10);
D2L=text(text_xd,text_yd-0.75,'D_{2}:','FontSize',10);
D2S=text(text_xd+1.05,text_yd-0.7,'ON','FontSize',10);
D3L=text(text_xd,text_yd-1.5,'D_{3}:','FontSize',10);
D3S=text(text_xd+1.05,text_yd-1.5+0.05,'OFF','FontSize',10);
D4L=text(text_xd,text_yd-2.25,'D_{4}:','FontSize',10);
D4S=text(text_xd+1.05,text_yd-2.25+0.05,'OFF','FontSize',10);

  set(S1S, 'String', 'OFF','color','k');
  set(S2S, 'String', 'OFF','color','k');
  set(S3S, 'String', 'OFF','color','k');
  set(S4S, 'String', 'OFF','color','k');
  set(D1S, 'String', 'OFF','color','k');
  set(D2S, 'String', 'OFF','color','k');
  set(D3S, 'String', 'OFF','color','k');
  set(D4S, 'String', 'OFF','color','k');

%axis([-2.5 42 -7 8])

axis([-2.5 42 -7 8],'xy');
set(gca,'XColor', 'none','YColor','none')
%set(gca, 'Color', 'none')
%whitebg('w')
hf.Color = 'w';
set(gcf,'Color',[0.90 0.90 0.90])
hf.Color='w';
for j=1:1:1
    clearpoints(C_Wave);
    clearpoints(R1_Wave);
    clearpoints(R2_Wave);
    clearpoints(pwm2_Wave);
    clearpoints(pwm3_Wave);
    clearpoints(pwm1_Wave);
    clearpoints(pwm4_Wave);
    clearpoints(vload_Wave);
    clearpoints(iload_Wave);
    clearpoints(vs12_Wave);
    clearpoints(vs34_Wave);
for i=1:1:length(time)
    addpoints(C_Wave,time(i),Carrier(i));
    addpoints(R1_Wave,time(i),R1(i));
    addpoints(R2_Wave,time(i),R2(i));
    addpoints(pwm2_Wave,time(i),PWM12(i));
    addpoints(pwm3_Wave,time(i),PWM34(i));
    addpoints(pwm1_Wave,time(i),PWM1(i));
    addpoints(pwm4_Wave,time(i),PWM4(i));
    addpoints(vload_Wave,time1(i),Vload(i));
    addpoints(iload_Wave,time1(i),Iload(i));
    addpoints(vs12_Wave,time1(i),VS12(i));
    addpoints(vs34_Wave,time1(i),VS34(i));
       
    if (IS1(i)>0 && IS2(i)>0)
        set(S1S, 'String', 'ON','color',[1 0 0]);
        set(S2S, 'String', 'ON','color',[1 0 0]);
        set(S3S, 'String', 'OFF','color','k');
        set(S4S, 'String', 'OFF','color','k');

        set(D1S, 'String', 'OFF','color','k');
        set(D2S, 'String', 'OFF','color','k');
        set(D3S, 'String', 'OFF','color','k');
        set(D4S, 'String', 'OFF','color','k');

        set(MOS1,'color',[1 0 0]);
        set(MOS11,'color',[1 0 0]);
        set(MOS2,'color',[1 0 0]);
        set(MOS21,'color',[1 0 0]);
        set(L141,'color',[1 0 0]);
        set(L232,'color',[1 0 0]);
        set(L24,'color',[1 0 0]);
        set(res,'color',[1 0 0]);
        set(DCP,'color',[1 0 0]);
        set(DCN,'color',[1 0 0]);
        set(DCB,'color',[1 0 0]);
        set(DCB1,'color',[1 0 0]);
        set(DCPLUS,'color',[1 0 0]);
        set(DCNEG,'color',[1 0 0]);

        set(MOS3,'color',[0.7 0.7 0.7]);
        set(MOS31,'color',[0.7 0.7 0.7]);
        set(MOS4,'color',[0.7 0.7 0.7]);
        set(MOS41,'color',[0.7 0.7 0.7]);
        set(L142,'color',[0.7 0.7 0.7]);
        set(L231,'color',[0.7 0.7 0.7]);
        set(L13,'color',[0.7 0.7 0.7]);
        set(D1,'color',[0.7 0.7 0.7]);
        set(D2,'color',[0.7 0.7 0.7]);
        set(D3,'color',[0.7 0.7 0.7]);
        set(D4,'color',[0.7 0.7 0.7]);
   
    elseif (IS1(i)>0 && ID3(i)>0)
        set(S1S, 'String', 'ON','color',[1 0 0]);
        set(S2S, 'String', 'OFF','color','k');
        set(S3S, 'String', 'OFF','color','k');
        set(S4S, 'String', 'OFF','color','k');

        set(D1S, 'String', 'OFF','color','k');
        set(D2S, 'String', 'OFF','color','k');
        set(D3S, 'String', 'ON','color',[1 0 0]);
        set(D4S, 'String', 'OFF','color','k');

        set(MOS1,'color',[1 0 0]);
        set(MOS11,'color',[1 0 0]);
        set(D3,'color',[1 0 0]);
        set(MOS31,'color',[1 0 0]);

        set(L141,'color',[1 0 0]);
        set(L13,'color',[1 0 0]);
        set(L232,'color',[0.7 0.7 0.7]);
        set(L231,'color',[1 0 0]);
        set(L24,'color',[0.7 0.7 0.7]);
        set(res,'color',[1 0 0]);
        set(DCP,'color',[0.7 0.7 0.7]);
        set(DCN,'color',[0.7 0.7 0.7]);
        set(DCB,'color',[0.7 0.7 0.7]);
        set(DCB1,'color',[0.7 0.7 0.7]);
        set(DCPLUS,'color',[0.7 0.7 0.7]);
        set(DCNEG,'color',[0.7 0.7 0.7]);

        set(MOS2,'color',[0.7 0.7 0.7]);
        set(MOS21,'color',[0.7 0.7 0.7]);
        set(MOS3,'color',[0.7 0.7 0.7]);
        
        set(MOS4,'color',[0.7 0.7 0.7]);
        set(MOS41,'color',[0.7 0.7 0.7]);
        set(L142,'color',[0.7 0.7 0.7]);
        set(D1,'color',[0.7 0.7 0.7]);
        set(D2,'color',[0.7 0.7 0.7]);
        set(D4,'color',[0.7 0.7 0.7]);

    elseif (IS3(i)>0 && IS4(i)>0)
        set(S1S, 'String', 'OFF','color','k');
        set(S2S, 'String', 'OFF','color','k');
        set(S3S, 'String', 'ON','color',[1 0 0]);
        set(S4S, 'String', 'ON','color',[1 0 0]);

        set(D1S, 'String', 'OFF','color','k');
        set(D2S, 'String', 'OFF','color','k');
        set(D3S, 'String', 'OFF','color','k');
        set(D4S, 'String', 'OFF','color','k');

        set(MOS3,'color',[1 0 0]);
        set(MOS31,'color',[1 0 0]);
        set(MOS4,'color',[1 0 0]);
        set(MOS41,'color',[1 0 0]);
        set(L13,'color',[1 0 0]);
        set(L231,'color',[1 0 0]);
        set(L142,'color',[1 0 0]);
        set(res,'color',[1 0 0]);
        set(DCP,'color',[1 0 0]);
        set(DCN,'color',[1 0 0]);
        set(DCB,'color',[1 0 0]);
        set(DCB1,'color',[1 0 0]);
        set(DCPLUS,'color',[1 0 0]);
        set(DCNEG,'color',[1 0 0]);

        set(MOS1,'color',[0.7 0.7 0.7]);
        set(MOS11,'color',[0.7 0.7 0.7]);
        set(MOS2,'color',[0.7 0.7 0.7]);
        set(MOS21,'color',[0.7 0.7 0.7]);
        set(D1,'color',[0.7 0.7 0.7]);
        set(L232,'color',[0.7 0.7 0.7]);
        set(L24,'color',[0.7 0.7 0.7]);
        set(D2,'color',[0.7 0.7 0.7]);
        set(D3,'color',[0.7 0.7 0.7]);
        set(D4,'color',[0.7 0.7 0.7]);

    elseif (IS4(i)>0 && ID4(i)>0)
        
        set(S1S, 'String', 'OFF','color','k');
        set(S2S, 'String', 'OFF','color','k');
        set(S3S, 'String', 'OFF','color','k');
        set(S4S, 'String', 'ON','color',[1 0 0]);

        set(D1S, 'String', 'OFF','color','k');
        set(D2S, 'String', 'ON','color',[1 0 0]);
        set(D3S, 'String', 'OFF','color','k');
        set(D4S, 'String', 'OFF','color','k');

        set(MOS4,'color',[1 0 0]);
        set(MOS41,'color',[1 0 0]);
        set(D2,'color',[1 0 0]);
        set(L13,'color',[0.7 0.7 0.7]);
        set(L232,'color',[1 0 0]);
        set(L231,'color',[0.7 0.7 0.7]);
        set(L142,'color',[1 0 0]);
        set(L24,'color',[1 0 0]);
        set(res,'color',[1 0 0]);
        set(DCP,'color',[0.7 0.7 0.7]);
        set(DCN,'color',[0.7 0.7 0.7]);
        set(DCB,'color',[0.7 0.7 0.7]);
        set(DCB1,'color',[0.7 0.7 0.7]);
        set(DCPLUS,'color',[0.7 0.7 0.7]);
        set(DCNEG,'color',[0.7 0.7 0.7]);

        set(MOS1,'color',[0.7 0.7 0.7]);
        set(MOS11,'color',[0.7 0.7 0.7]);
        set(MOS3,'color',[0.7 0.7 0.7]);
        set(MOS31,'color',[0.7 0.7 0.7]);
        set(MOS2,'color',[0.7 0.7 0.7]);
        set(MOS21,'color',[1 0 0]);
        set(D1,'color',[0.7 0.7 0.7]);
        set(D3,'color',[0.7 0.7 0.7]);
        set(D4,'color',[0.7 0.7 0.7]);


    else
        set(S1S, 'String', 'OFF','color','k');
        set(S2S, 'String', 'OFF','color','k');
        set(S3S, 'String', 'OFF','color','k');
        set(S4S, 'String', 'OFF','color','k');
        set(D1S, 'String', 'OFF','color','k');
        set(D2S, 'String', 'OFF','color','k');
        set(D3S, 'String', 'OFF','color','k');
        set(D4S, 'String', 'OFF','color','k');

        set(MOS1,'color',[0.7 0.7 0.7]);
        set(MOS2,'color',[0.7 0.7 0.7]);
        set(L141,'color',[0.7 0.7 0.7]);
        set(L232,'color',[0.7 0.7 0.7]);
        set(DCB,'color',[0.7 0.7 0.7]);
        set(DCB1,'color',[0.7 0.7 0.7]);
        set(DCPLUS,'color',[0.7 0.7 0.7]);
        set(DCNEG,'color',[0.7 0.7 0.7]);
        set(res,'color',[0.7 0.7 0.7]);
        set(DCP,'color',[0.7 0.7 0.7]);
        set(DCN,'color',[0.7 0.7 0.7]);
        set(L24,'color',[0.7 0.7 0.7]);
        set(MOS3,'color',[0.7 0.7 0.7]);
        set(MOS4,'color',[0.7 0.7 0.7]);
        set(L13,'color',[0.7 0.7 0.7]);
        set(L231,'color',[0.7 0.7 0.7]);
        set(L142,'color',[0.7 0.7 0.7]);
        set(res,'color',[0.7 0.7 0.7]);
        set(DCP,'color',[0.7 0.7 0.7]);
        set(DCN,'color',[0.7 0.7 0.7]);
        set(DCB,'color',[0.7 0.7 0.7]);
        set(DCB1,'color',[0.7 0.7 0.7]);
        set(DCPLUS,'color',[0.7 0.7 0.7]);
        set(DCNEG,'color',[0.7 0.7 0.7]);
    end
    drawnow
    currFrame=getframe(hf);
    writeVideo(writeobj, currFrame)     
       
end
end
close(writeobj)
