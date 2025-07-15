close all

clc;
hf = figure('units','normalized','outerposition',[0 0 1 1]);

writeobj = VideoWriter('Three_R_Inverter','Motion JPEG AVI');
open(writeobj);

hold on
title('THREE PHASE INVERER','Color','r');
subtitle('OPERATION AND WAVEFORMS FOR 120 DEGREE CONDUCTION MODE','Color','r');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% LEG1
% Drawing Mosfet1 (leg 1-Top Mosfet)
xrefm1=-1;
yrefm1=-1.5;
mp=1;

[M1Gx,M1Gy,M1Sx,M1Dy,M1Sx1,M1Dx1,M1Sx2,M1Dx2,M1Sx3,M1Dx3,M1Sx4,M1Dx4]=draw_mosfet(xrefm1,yrefm1);
MOS1 = plot(M1Gx,M1Gy,'k', M1Sx,M1Dy,'k', M1Sx1,M1Dx1,'k', M1Sx2,M1Dx2,'k', M1Sx3,M1Dx3,'k', M1Sx4,M1Dx4,'k');
text(M1Gx(:,3)+0.5,M1Gy(:,3)+1.25,'S1','FontSize',9);
set(MOS1,'LineWidth',1.5);
hold on
MOS11=plot([M1Sx(:,6),M1Sx(:,6)],[M1Dy(:,6),M1Dy(:,6)+1.5],'k');
set(MOS11,'LineWidth',1.5);


% Code for Drawing Leg 1 - Diode 1
hold on         
xrefd1=xrefm1+1;
yrefd1=yrefm1+mp;
[D1x1,D1x2,D1y1,D1y2]=draw_diode_mos(xrefd1,yrefd1,mp);
D1 = plot(D1x1,D1y1,'k', D1x2,D1y2,'k');
set(D1,'LineWidth',1.5);

% Code For Drawing Mosfet 4 (leg 1-Bottom)
hold on
xrefm4=xrefm1;
yrefm4=yrefm1-8;

[M4Gx,M4Gy,M4Sx,M4Dy,M4Sx1,M4Dx1,M4Sx2,M4Dx2,M4Sx3,M4Dx3,M4Sx4,M4Dx4]=draw_mosfet(xrefm4,yrefm4);
MOS4 = plot(M4Gx,M4Gy,'k', M4Sx,M4Dy,'k', M4Sx1,M4Dx1,'k', M4Sx2,M4Dx2,'k', M4Sx3,M4Dx3,'k', M4Sx4,M4Dx4,'k');
text(M4Gx(:,3)+0.5,M4Gy(:,3)+1.25,'S4','FontSize',9);
set(MOS4,'LineWidth',1.5);

hold on
MOS41=plot([M1Sx(:,6),M1Sx(:,6)],[M4Dx1(:,4),M4Dx1(:,4)-1.5],'k');
set(MOS41,'LineWidth',1.5);

%Code for Drawing Diode 4 (Leg 1 Bottom)
hold on         
xrefd4=xrefm1+1;
yrefd4=yrefm1-(mp+6);
[D1x1,D1x2,D1y1,D1y2]=draw_diode_mos(xrefd4,yrefd4,mp);
D4 = plot(D1x1,D1y1,'k', D1x2,D1y2,'k');
set(D4,'LineWidth',1.5);

%  Line Joining Mosfet 1 and Mosfet 4

hold on
L141=plot([M1Sx1(:,4),M4Sx(:,6)],[M1Dx1(:,4),M1Dx1(:,4)-(M1Dx1(:,4)-M4Dy(:,6))/2],'k');
L241=plot([M1Sx1(:,4),M4Sx(:,6)],[M1Dx1(:,4)-(M1Dx1(:,4)-M4Dy(:,6))/2,M4Dy(:,6)],'k');
set(L141,'LineWidth',1.5);
set(L241,'LineWidth',1.5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Leg2

% Drawing Mosfet3 (leg 2-Top Mosfet)
xrefm3=xrefm1+4;
yrefm3=yrefm1;

[M3Gx,M3Gy,M3Sx,M3Dy,M3Sx1,M3Dx1,M3Sx2,M3Dx2,M3Sx3,M3Dx3,M3Sx4,M3Dx4]=draw_mosfet(xrefm3,yrefm3);
MOS3 = plot(M3Gx,M3Gy,'k', M3Sx,M3Dy,'k', M3Sx1,M3Dx1,'k', M3Sx2,M3Dx2,'k', M3Sx3,M3Dx3,'k', M3Sx4,M3Dx4,'k');
text(M3Gx(:,3)+0.5,M3Gy(:,3)+1.25,'S3','FontSize',9);
set(MOS3,'LineWidth',1.5);
hold on
MOS31=plot([M3Sx(:,6),M3Sx(:,6)],[M3Dy(:,6),M3Dy(:,6)+1.5],'k');
set(MOS31,'LineWidth',1.5);


% Code for Drawing Leg 1 - Diode 3
hold on         
xrefd3=xrefm3+1;
yrefd3=yrefm3+mp;
[D3x1,D3x2,D3y1,D3y2]=draw_diode_mos(xrefd3,yrefd3,mp);
D3 = plot(D3x1,D3y1,'k', D3x2,D3y2,'k');
set(D3,'LineWidth',1.5);

% Code For Drawing Mosfet 6 (leg 6-Bottom)
hold on
xrefm6=xrefm3;
yrefm6=yrefm3-8;

[M6Gx,M6Gy,M6Sx,M6Dy,M6Sx1,M6Dx1,M6Sx2,M6Dx2,M6Sx3,M6Dx3,M6Sx4,M6Dx4]=draw_mosfet(xrefm6,yrefm6);
MOS6 = plot(M6Gx,M6Gy,'k', M6Sx,M6Dy,'k', M6Sx1,M6Dx1,'k', M6Sx2,M6Dx2,'k', M6Sx3,M6Dx3,'k', M6Sx4,M6Dx4,'k');
text(M6Gx(:,3)+0.5,M6Gy(:,3)+1.25,'S6','FontSize',9);
set(MOS6,'LineWidth',1.5);

hold on
MOS61=plot([M6Sx(:,6),M6Sx(:,6)],[M6Dx1(:,4),M6Dx1(:,4)-1.5],'k');
set(MOS61,'LineWidth',1.5);


%Code for Drawing Diode 6 (Leg 2 Bottom)
hold on         
xrefd6=xrefm3+1;
yrefd6=yrefm3-(mp+6);
[D6x1,D6x2,D6y1,D6y2]=draw_diode_mos(xrefd6,yrefd6,mp);
D6 = plot(D6x1,D6y1,'k', D6x2,D6y2,'k');
set(D6,'LineWidth',1.5);

%  Line Joining Mosfet 1 and Mosfet 4

hold on
L136=plot([M3Sx1(:,4),M6Sx(:,6)],[M3Dx1(:,4),M3Dx1(:,4)-(M3Dx1(:,4)-M6Dy(:,6))/2],'k');
L236=plot([M3Sx1(:,4),M6Sx(:,6)],[M3Dx1(:,4)-(M3Dx1(:,4)-M6Dy(:,6))/2,M6Dy(:,6)],'k');
set(L136,'LineWidth',1.5);
set(L236,'LineWidth',1.5);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Leg 3

% Drawing Mosfet5 (leg 3-Top Mosfet)
xrefm5=xrefm1+8;
yrefm5=yrefm1;

[M5Gx,M5Gy,M5Sx,M5Dy,M5Sx1,M5Dx1,M5Sx2,M5Dx2,M5Sx3,M5Dx3,M5Sx4,M5Dx4]=draw_mosfet(xrefm5,yrefm5);
MOS5 = plot(M5Gx,M5Gy,'k', M5Sx,M5Dy,'k', M5Sx1,M5Dx1,'k', M5Sx2,M5Dx2,'k', M5Sx3,M5Dx3,'k', M5Sx4,M5Dx4,'k');
text(M5Gx(:,3)+0.5,M5Gy(:,3)+1.25,'S5','FontSize',9);
set(MOS5,'LineWidth',1.5);
hold on
MOS51=plot([M5Sx(:,6),M5Sx(:,6)],[M5Dy(:,6),M5Dy(:,6)+1.5],'k');
set(MOS51,'LineWidth',1.5);

% Code for Drawing Leg 3 -Top Diode 5
hold on         
xrefd5=xrefm5+1;
yrefd5=yrefm5+mp;
[D5x1,D5x2,D5y1,D5y2]=draw_diode_mos(xrefd5,yrefd5,mp);
D5 = plot(D5x1,D5y1,'k', D5x2,D5y2,'k');
set(D5,'LineWidth',1.5);

% Code For Drawing Mosfet 2 (leg 3-Bottom)
hold on
xrefm2=xrefm5;
yrefm2=yrefm5-8;

[M2Gx,M2Gy,M2Sx,M2Dy,M2Sx1,M2Dx1,M2Sx2,M2Dx2,M2Sx3,M2Dx3,M2Sx4,M2Dx4]=draw_mosfet(xrefm2,yrefm2);
MOS2= plot(M2Gx,M2Gy,'k', M2Sx,M2Dy,'k', M2Sx1,M2Dx1,'k', M2Sx2,M2Dx2,'k', M2Sx3,M2Dx3,'k', M2Sx4,M2Dx4,'k');
text(M2Gx(:,3)+0.5,M2Gy(:,3)+1.25,'S2','FontSize',9);
set(MOS2,'LineWidth',1.5);

hold on
MOS21=plot([M2Sx(:,6),M2Sx(:,6)],[M2Dx1(:,4),M2Dx1(:,4)-1.5],'k');
set(MOS21,'LineWidth',1.5);

%Code for Drawing Diode 2 (Leg 3 Bottom)
hold on         
xrefd2=xrefm5+1;
yrefd2=yrefm5-(mp+6);
[D2x1,D2x2,D2y1,D2y2]=draw_diode_mos(xrefd2,yrefd2,mp);
D2 = plot(D2x1,D2y1,'k', D2x2,D2y2,'k');
set(D2,'LineWidth',1.5);

%  Line Joining Mosfet 5 and Mosfet 2
hold on
L152=plot([M5Sx1(:,4),M2Sx(:,6)],[M5Dx1(:,4),M5Dx1(:,4)-(M5Dx1(:,4)-M2Dy(:,6))/2],'k');
L252=plot([M5Sx1(:,4),M2Sx(:,6)],[M5Dx1(:,4)-(M5Dx1(:,4)-M2Dy(:,6))/2,M2Dy(:,6)],'k');
set(L152,'LineWidth',1.5);
set(L252,'LineWidth',1.5);

%%%%%%%%%%%%%%% Line Joining Top Mosfets (Mos1,Mos3)
hold on
L13=plot([M1Sx(:,6),M3Sx(:,6)],[M1Dy(:,6)+1.5,M3Dy(:,6)+1.5],'k');
set(L13,'LineWidth',1.5);

% Line Joining Top Mosfets (Mos3,Mos5)
hold on
L35=plot([M3Sx(:,6),M5Sx(:,6)],[M3Dy(:,6)+1.5,M5Dy(:,6)+1.5],'k');
set(L35,'LineWidth',1.5);



%%%%%%%%%%%%%%% Line Joining Bottom Mosfets (Mos4,Mos6)
hold on
L46=plot([M1Sx(:,6),M6Sx(:,6)],[M4Dx1(:,4)-1.5,M6Dx1(:,4)-1.5],'k');
set(L46,'LineWidth',1.5);

% Line Joining Bottom Mosfets (Mos6,Mos2)
hold on
L62=plot([M6Sx(:,6),M2Sx(:,6)],[M6Dx1(:,4)-1.5,M2Dx1(:,4)-1.5],'k');
set(L62,'LineWidth',1.5);

%%%%%%%%%%%%%%%  DC source Drawing

%Line Joining Mos1 and DC Source 
L1dc_top=plot([M1Sx(:,6),M1Sx(:,6)-3],[M1Dy(:,6)+1.5,M1Dy(:,6)+1.5],'k');
set(L1dc_top,'color','k');
set(L1dc_top,'LineWidth',1.5);

%Line Joining Mos4 and DC source
L4dc_bottom=plot([M1Sx(:,6),M1Sx(:,6)-3],[M4Dx1(:,4)-1.5,M4Dx1(:,4)-1.5],'k');
set(L4dc_bottom,'color','k');
set(L4dc_bottom,'LineWidth',1.5);

%DC Source Vertical Lines
%Upper Line
Ldc_Ver_upper=plot([M1Sx(:,6)-3,M1Sx(:,6)-3],[M1Dy(:,6)+1.5, M1Dy(:,6)-4.38],'k');
set(Ldc_Ver_upper,'color','k');
set(Ldc_Ver_upper,'LineWidth',1.5);
%Bottom Line
Ldc_Ver_bottom=plot([M1Sx(:,6)-3,M1Sx(:,6)-3],[M4Dx1(:,4)-1.5,M4Dx1(:,4)+4.45],'k');
set(Ldc_Ver_bottom,'color','k');
set(Ldc_Ver_bottom,'LineWidth',1.5);

%DC Source
DCPLUS=plot([M1Sx(:,6)-3.5,M1Sx(:,6)-2.5],[M1Dy(:,6)-4.38,M1Dy(:,6)-4.38],'k');
set(DCPLUS,'LineWidth',1.5);
text(M1Sx(:,6)-2.5,M1Dy(:,6)-4.38,'$V_{DC}$','FontSize',10, 'Interpreter','latex');

set(DCPLUS,'color','k');
DCNEG=plot([M1Sx(:,6)-3.2,M1Sx(:,6)-2.8],[M4Dx1(:,4)+4.45,M4Dx1(:,4)+4.45],'k');
set(DCNEG,'color','k');
set(DCNEG,'LineWidth',1.5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Drawing Resistor

% R phase resistor
xrefs=1.0;
yrefs=1.0;
xrefe=-2;
yrefe=1.5;
xshift=M4Dx1(:,4)-1.5-1.25;
yshift=M1Sx(:,6)-0.25;

[rxr1,ryr1]=resih(xrefs,yrefs,xrefe,yrefe,xshift,yshift);

resr=plot(ryr1,rxr1,'r');
set(resr,'LineWidth',1.5,'Color','k');


% Y phase resistor
xrefs=1.0;
yrefs=1.0;
xrefe=-2;
yrefe=1.5;
xshift=M4Dx1(:,4)-1.5-1.25;
yshift=M3Sx(:,6)-0.25;

[rxy1,ryy1]=resih(xrefs,yrefs,xrefe,yrefe,xshift,yshift);

resy=plot(ryy1,rxy1,'r');
set(resy,'LineWidth',1.5,'Color','k');


% B phase resistor
xrefs=1.0;
yrefs=1.0;
xrefe=-2;
yrefe=1.5;
xshift=M4Dx1(:,4)-1.5-1.25;
yshift=M5Sx(:,6)-0.25;

[rxb1,ryb1]=resih(xrefs,yrefs,xrefe,yrefe,xshift,yshift);

resb=plot(ryb1,rxb1,'r');
set(resb,'LineWidth',1.5,'Color','k');

%%%Line Joining Bottom of resistors

LJR_ry=plot([ryr1(:,end),ryy1(:,end)],[rxr1(:,end),rxy1(:,end)],'k');
set(LJR_ry,'LineWidth',1.5,'Color','k');

LJR_yb=plot([ryb1(:,end),ryy1(:,end)],[rxb1(:,end),rxy1(:,end)],'k');
set(LJR_yb,'LineWidth',1.5,'Color','k');



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Line Joining LEG 1 Centre to Load
LEG1_CENTRE_LOAD1=plot( [M4Sx(:,6),ryr1(:,1),ryr1(:,1)],[M1Dx1(:,4)-(M1Dx1(:,4)-M4Dy(:,6))/2, M1Dx1(:,4)-(M1Dx1(:,4)-M4Dy(:,6))/2, rxr1(:,1)+0.5], 'k');
set(LEG1_CENTRE_LOAD1,'LineWidth',1.5,'Color','k');

%%%% Line Joining LEG 2 Centre to Load
LEG2_CENTRE_LOAD1=plot([M6Sx(:,6),ryy1(:,1),ryy1(:,1)],[M3Dx1(:,4)-(M3Dx1(:,4)-M6Dy(:,6))/2,M3Dx1(:,4)-(M3Dx1(:,4)-M6Dy(:,6))/2,rxy1(:,1)+0.5], 'k');
set(LEG2_CENTRE_LOAD1,'LineWidth',1.5,'Color','k');

%%%% Line Joining LEG 3 Centre to Load
LEG3_CENTRE_LOAD1=plot([M2Sx(:,6),ryb1(:,1),ryb1(:,1)],[M5Dx1(:,4)-(M5Dx1(:,4)-M2Dy(:,6))/2, M5Dx1(:,4)-(M5Dx1(:,4)-M2Dy(:,6))/2,rxb1(:,1)] ,'k');
set(LEG3_CENTRE_LOAD1,'LineWidth',1.5,'Color','k');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[xj1,yj1]=jumper(ryr1(:,1), rxr1(:,1));     %%%%%%%%%%% Jumper 1 (Between Line 1 and Resistance 1)
jum1=plot(xj1,yj1,'r');
set(jum1,'LineWidth',1.5,'Color','k');
% 
[xj2,yj2]=jumper(ryy1(:,1), rxy1(:,1));    %%%%%%%%%%% Jumper 2 (Between Line 2 and Resistance 2)
jum2=plot(xj2,yj2,'r');
set(jum2,'LineWidth',1.5,'Color','k');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Left side plot
LSPX=[-17.5 -17.5];
LSPY=[-16 2];
S=(LSPY(:,2)-LSPY(:,1));
D=S/4;
plot(LSPX,LSPY,'LineWidth',1.0,'Color','k');  %Vertical Line 
plot([LSPX(:,1) LSPX(:,1)+13],[LSPY(:,1)+S/4 LSPY(:,1)+S/4],'LineWidth',1.0,'Color','k');  %Horizontal Line 1
plot([LSPX(:,1) LSPX(:,1)+13],[LSPY(:,1)+2*S/4 LSPY(:,1)+2*S/4],'LineWidth',1.0,'Color','k');  %Horizontal Line 2
plot([LSPX(:,1) LSPX(:,1)+13],[LSPY(:,1)+3*S/4 LSPY(:,1)+3*S/4],'LineWidth',1.0,'Color','k');  %Horizontal Line 3

CTEXTL=text(LSPX(:,1)+4,LSPY(:,2),'LINE VOLTAGE','FontSize',10,'Fontweight','bold');
CTEXTL.Color=[0.8500 0.3250 1];

CTEXTC=text(LSPX(:,1)+18,LSPY(:,2)+2,'CIRCUIT DIAGRAM','FontSize',10,'Fontweight','bold');
CTEXTC.Color=[0.2500 0.5 0.5980];




plot([LSPX(:,1) LSPX(:,1)+13],[2+LSPY(:,1)+3*S/4 2+LSPY(:,1)+3*S/4],'LineWidth',1.0,'Color','k','LineStyle',':');  %dotted line top1 for VRn
text(LSPX(:,1)-1.7,2.25+LSPY(:,1)+3*S/4,'$V_{DC}$','FontSize',10, 'Interpreter','latex');

plot([LSPX(:,1) LSPX(:,1)+13],[1+LSPY(:,1)+3*S/4 1+LSPY(:,1)+3*S/4],'LineWidth',1.0,'Color','k','LineStyle',':');  %dotted line top2 for VRn
text(LSPX(:,1)-2,1+LSPY(:,1)+3*S/4,'$\frac{+V_{DC}}{2}$','FontSize',8, 'Interpreter','latex');

plot([LSPX(:,1) LSPX(:,1)+13],[-1+LSPY(:,1)+3*S/4 -1+LSPY(:,1)+3*S/4],'LineWidth',1.0,'Color','k','LineStyle',':');  %dotted line BOTTOM1 for VRn
text(LSPX(:,1)-2,-1+LSPY(:,1)+3*S/4,'$\frac{-V_{DC}}{2}$','FontSize',8, 'Interpreter','latex');

plot([LSPX(:,1) LSPX(:,1)+13],[-2+LSPY(:,1)+3*S/4 -2+LSPY(:,1)+3*S/4],'LineWidth',1.0,'Color','k','LineStyle',':');  %dotted line BOTTOM2 for VRn
text(LSPX(:,1)-1.7,-2.25+LSPY(:,1)+3*S/4,'$V_{DC}$','FontSize',10, 'Interpreter','latex');

plot([LSPX(:,1)+1 LSPX(:,1)+1],[2+LSPY(:,1)+3*S/4 LSPY(:,1)],'LineWidth',0.1,'Color','k','LineStyle',':');  %Vertical Line 1
text(LSPX(:,1)+1-0.1,LSPY(:,1)-1,'$\frac{\pi}{3}$','FontSize',10, 'Interpreter','latex');

plot([LSPX(:,1)+2 LSPX(:,1)+2],[2+LSPY(:,1)+3*S/4 LSPY(:,1)],'LineWidth',0.1,'Color','k','LineStyle',':');  %Vertical Line 2
text(LSPX(:,1)+2-0.4,LSPY(:,1)-1,'$\frac{2\pi}{3}$','FontSize',10, 'Interpreter','latex');


plot([LSPX(:,1)+2.95 LSPX(:,1)+2.95],[2+LSPY(:,1)+3*S/4 LSPY(:,1)],'LineWidth',0.1,'Color','k','LineStyle',':');  %Vertical Line 3
text(LSPX(:,1)+3-0.2,LSPY(:,1)-0.5,'$\pi$','FontSize',10, 'Interpreter','latex');

plot([LSPX(:,1)+3.95 LSPX(:,1)+3.95],[2+LSPY(:,1)+3*S/4 LSPY(:,1)],'LineWidth',0.1,'Color','k','LineStyle',':');  %Vertical Line 4
text(LSPX(:,1)+3.95-0.4,LSPY(:,1)-1,'$\frac{4\pi}{3}$','FontSize',10, 'Interpreter','latex');

plot([LSPX(:,1)+4.925 LSPX(:,1)+4.925],[2+LSPY(:,1)+3*S/4 LSPY(:,1)],'LineWidth',0.1,'Color','k','LineStyle',':');  %Vertical Line 5
text(LSPX(:,1)+4.925-0.4,LSPY(:,1)-1,'$\frac{5\pi}{3}$','FontSize',10, 'Interpreter','latex');

plot([LSPX(:,1)+5.925 LSPX(:,1)+5.915],[2+LSPY(:,1)+3*S/4 LSPY(:,1)],'LineWidth',0.1,'Color','k','LineStyle',':');  %Vertical Line 6
text(LSPX(:,1)+5.915-0.4,LSPY(:,1)-0.75,'$2\pi$','FontSize',10, 'Interpreter','latex');
text(LSPX(:,1)+5.915-0.4,LSPY(:,1)-1.75,'$(0)$','FontSize',10, 'Interpreter','latex','Color',[1 0 0]);

plot([LSPX(:,1)+6.875 LSPX(:,1)+6.875],[2+LSPY(:,1)+3*S/4 LSPY(:,1)],'LineWidth',0.1,'Color','k','LineStyle',':');  %Vertical Line 7
text(LSPX(:,1)+6.915-0.4,LSPY(:,1)-0.75,'$\frac{\pi}{3}$','FontSize',10, 'Interpreter','latex');

plot([LSPX(:,1)+7.875 LSPX(:,1)+7.875],[2+LSPY(:,1)+3*S/4 LSPY(:,1)],'LineWidth',0.1,'Color','k','LineStyle',':');  %Vertical Line 8
text(LSPX(:,1)+8-0.4,LSPY(:,1)-0.85,'$\frac{2\pi}{3}$','FontSize',10, 'Interpreter','latex');

plot([LSPX(:,1)+8.85 LSPX(:,1)+8.85],[2+LSPY(:,1)+3*S/4 LSPY(:,1)],'LineWidth',0.1,'Color','k','LineStyle',':');  %Vertical Line 9
text(LSPX(:,1)+9-0.4,LSPY(:,1)-0.5,'$\pi$','FontSize',10, 'Interpreter','latex');

plot([LSPX(:,1)+9.85 LSPX(:,1)+9.85],[2+LSPY(:,1)+3*S/4 LSPY(:,1)],'LineWidth',0.1,'Color','k','LineStyle',':');  %Vertical Line 8
text(LSPX(:,1)+10-0.4,LSPY(:,1)-0.85,'$\frac{4\pi}{3}$','FontSize',10, 'Interpreter','latex');

plot([LSPX(:,1)+10.8 LSPX(:,1)+10.8],[2+LSPY(:,1)+3*S/4 LSPY(:,1)],'LineWidth',0.1,'Color','k','LineStyle',':');  %Vertical Line 8
text(LSPX(:,1)+11-0.4,LSPY(:,1)-0.85,'$\frac{5\pi}{3}$','FontSize',10, 'Interpreter','latex');


plot([LSPX(:,1)+11.8 LSPX(:,1)+11.8],[2+LSPY(:,1)+3*S/4 LSPY(:,1)],'LineWidth',0.1,'Color','k','LineStyle',':');  %Vertical Line 8
text(LSPX(:,1)+12-0.4,LSPY(:,1)-0.5,'$2\pi$','FontSize',10, 'Interpreter','latex');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% right side plot
RSPX=[12 12];
RSPY=[-16 2];
S1=(RSPY(:,2)-RSPY(:,1));
%DT=S1/4;

plot(RSPX,RSPY,'LineWidth',1.0,'Color','k');  %Vertical Line
plot([RSPX(:,1) RSPX(:,1)+13],[RSPY(:,1)+S1/4 RSPY(:,1)+S1/4],'LineWidth',1.0,'Color','k');  %Horizontal Line 1
plot([RSPX(:,1) RSPX(:,1)+13],[RSPY(:,1)+2.05*S1/4 RSPY(:,1)+2.05*S1/4],'LineWidth',1.0,'Color','k');  %Horizontal Line 1
plot([RSPX(:,1) RSPX(:,1)+13],[RSPY(:,1)+3*S1/4 RSPY(:,1)+3*S1/4],'LineWidth',1.0,'Color','k');  %Horizontal Line 1

plot([RSPX(:,1) RSPX(:,1)+13],[2+RSPY(:,1)+3*S1/4 2+RSPY(:,1)+3*S1/4],'LineWidth',1.0,'Color','k','LineStyle',':');  %dotted line top1 for VRn
text(RSPX(:,1)-1.75,2+RSPY(:,1)+3*S1/4,'$$\frac{+V_{DC}}{2}$','FontSize',10, 'Interpreter','latex');

plot([RSPX(:,1) RSPX(:,1)+13],[-2+RSPY(:,1)+3*S1/4 -2+RSPY(:,1)+3*S1/4],'LineWidth',1.0,'Color','k','LineStyle',':');  %dotted line top1 for VRn
text(RSPX(:,1)-1.75,-2+RSPY(:,1)+3*S1/4,'$$\frac{-V_{DC}}{2}$','FontSize',10, 'Interpreter','latex');

CTEXTR=text(RSPX(:,1)+4,RSPY(:,2),'PHASE VOLTAGE','FontSize',10,'Fontweight','bold');
CTEXTR.Color=[0.8500 0.3250 0.0980];


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
timed  = squeeze(out.Vabc.Time);
%Phasor Diagram
angVr = mod((2*pi*50.*timed),2*pi)*(180/pi);
angVy = mod((2*pi*50.*timed)-(2*pi/3),2*pi)*(180/pi);
angVb = mod((2*pi*50.*timed)+(2*pi/3),2*pi)*(180/pi);

angVrs = mod((2*pi*50.*timed)+pi,2*pi)*(180/pi);
angVys = mod((2*pi*50.*timed)-(2*pi/3)+pi,2*pi)*(180/pi);
angVbs = mod((2*pi*50.*timed)+(2*pi/3)+pi,2*pi)*(180/pi);


angVry = mod((2*pi*50.*timed)-(pi/6),2*pi)*(180/pi);
angVyb = mod((2*pi*50.*timed)-(2*pi/3)-(pi/6),2*pi)*(180/pi);
angVbr = mod((2*pi*50.*timed)+(2*pi/3)-(pi/6),2*pi)*(180/pi);

angVrys = mod((2*pi*50.*timed)-(pi/6)+pi,2*pi)*(180/pi);
angVybs = mod((2*pi*50.*timed)-(2*pi/3)-(pi/6)+pi,2*pi)*(180/pi);
angVbrs = mod((2*pi*50.*timed)+(2*pi/3)-(pi/6)+pi,2*pi)*(180/pi);


Nf=4001;
tc = linspace(0,2*pi,Nf); % vector of angles to draw circles
circ_radius = 4.25;
Line_Circle= plot(((circ_radius-2)*sqrt(3)*cos(tc))+5,(circ_radius-2)*sqrt(3)*sin(tc)-20);
Phase_Circle= plot(((circ_radius-2)*cos(tc))+5,(circ_radius-2)*sin(tc)-20);



plot([5-(circ_radius-2)*sqrt(3) 5+(circ_radius-2)*sqrt(3)],[-20 -20],'LineStyle',":",'LineWidth',1.5,'Color',"k");%%%%%%% horizontal dotted line for phasor 
plot([5 5],[-20-(circ_radius-2)*sqrt(3) -20+(circ_radius-2)*sqrt(3)],'LineStyle',":",'LineWidth',1.5,'Color',"k");%%%%%%% vertical dotted line for phasor 
annotation('textarrow',[-0.76 -0.80]+1.41,[0.25 0.25],'String','REF (ON)','FontSize',10,'Linewidth',1.5,'TextColor','r');
annotation('textarrow',[0.44 0.48],[0.39 0.35],'String','OFF','FontSize',10,'Linewidth',1.5,'TextColor','r','TextRotation',20);



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% VRn=rescale(out.Rn.Data,(LSPY(:,1)+3*S/4)-2, (LSPY(:,1)+3*S/4)+2);
% VYn=rescale(out.Yn.Data,(LSPY(:,1)+2*S/4)-2, (LSPY(:,1)+2*S/4)+2);
% VBn=rescale(out.Bn.Data,(LSPY(:,1)+1*S/4)-2, (LSPY(:,1)+1*S/4)+2);
% time=rescale(out.tout, LSPX(:,1),LSPX(:,1)+12);
% 
% 
% VRY=rescale(out.VRY.Data,(RSPY(:,1)+3*S1/4)-2,(RSPY(:,1)+3*S1/4)+2);
% VYB=rescale(out.VYB.Data,(RSPY(:,1)+2*S1/4)-2,(RSPY(:,1)+2*S1/4)+2);
% VBR=rescale(out.VBR.Data,(RSPY(:,1)+S1/4)-2,(RSPY(:,1)+S1/4)+2);
% time1=rescale(out.tout, RSPX(:,1),RSPX(:,1)+12);


VRn=rescale(out.Rn.Data,(RSPY(:,1)+3*S/4)-2, (RSPY(:,1)+3*S/4)+2);
VYn=rescale(out.Yn.Data,(RSPY(:,1)+2*S/4)-2, (RSPY(:,1)+2*S/4)+2);
VBn=rescale(out.Bn.Data,(RSPY(:,1)+1*S/4)-2, (RSPY(:,1)+1*S/4)+2);
time=rescale(out.tout, RSPX(:,1),RSPX(:,1)+12);


VRY=rescale(out.VRY.Data,(LSPY(:,1)+3*S1/4)-2,(LSPY(:,1)+3*S1/4)+2);
VYB=rescale(out.VYB.Data,(LSPY(:,1)+2*S1/4)-2,(LSPY(:,1)+2*S1/4)+2);
VBR=rescale(out.VBR.Data,(LSPY(:,1)+S1/4)-2,(LSPY(:,1)+S1/4)+2);
time1=rescale(out.tout, LSPX(:,1),LSPX(:,1)+12);




IS1=round(rescale(squeeze(out.IS1.Data),0,1),2);
IS2=round(rescale(squeeze(out.IS2.Data),0,1),2);
IS3=round(rescale(squeeze(out.IS3.Data),0,1),2);
IS4=round(rescale(squeeze(out.IS4.Data),0,1),2);
IS5=round(rescale(squeeze(out.IS5.Data),0,1),2);
IS6=round(rescale(squeeze(out.IS6.Data),0,1),2);

VRn_Wave=animatedline('LineWidth',1.25,'Color',[1 0 0],'LineStyle',"-");
VYn_Wave=animatedline('LineWidth',1.25,'Color',[1.00 0.54 0.00],'LineStyle',"-");
VBn_Wave=animatedline('LineWidth',1.25,'Color',[0 0 1],'LineStyle',"-");

VRY_Wave=animatedline('LineWidth',1.25,'Color',[1 0 0],'LineStyle',"-");
VYB_Wave=animatedline('LineWidth',1.25,'Color',[1.00 0.54 0.00],'LineStyle',"-");
VBR_Wave=animatedline('LineWidth',1.25,'Color',[0 0 1],'LineStyle',"-");

%%%%%%%%%%%%%%%%%%%%%% Phasor Waves

Vrn_Phasor=animatedline('LineWidth',2,'Color',"r",'LineStyle',"-");
Vrn_Phasor_cursor=animatedline('LineWidth',2,'Color',"r", 'Marker', '.', 'MarkerSize', 20);

Vyn_Phasor=animatedline('LineWidth',2,'Color',[0.9290 0.6940 0.1250],'LineStyle',"-");
Vyn_Phasor_cursor=animatedline('LineWidth',2,'Color',[0.9290 0.6940 0.1250], 'Marker', '.', 'MarkerSize', 20);

Vbn_Phasor=animatedline('LineWidth',2,'Color',"b",'LineStyle',"-");
Vbn_Phasor_cursor=animatedline('LineWidth',2,'Color',"b", 'Marker', '.', 'MarkerSize', 20);

Vrns_Phasor=animatedline('LineWidth',2,'Color',"r",'LineStyle',"-.");
Vrns_Phasor_cursor=animatedline('LineWidth',2,'Color',"r", 'Marker', '.', 'MarkerSize', 20);

Vyns_Phasor=animatedline('LineWidth',2,'Color',[0.9290 0.6940 0.1250],'LineStyle',"-.");
Vyns_Phasor_cursor=animatedline('LineWidth',2,'Color',[0.9290 0.6940 0.1250], 'Marker', '.', 'MarkerSize', 20);

Vbns_Phasor=animatedline('LineWidth',2,'Color',"b",'LineStyle',"-.");
Vbns_Phasor_cursor=animatedline('LineWidth',2,'Color',"b", 'Marker', '.', 'MarkerSize', 20);




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Author Text
ATEXTR=text(RSPX(:,1)+6,RSPY(:,2)-20,'Developed By','FontSize',10,'Fontweight','bold');
ATEXTR.Color=[0.8500 0.3250 0.0980];
ATEXTR1=text(RSPX(:,1)+6,RSPY(:,2)-21,'Dr.M.Kaliamoorthy, Professor/EEE','FontSize',10,'Fontweight','bold');
ATEXTR1.Color=[0.3500 0.5250 0.5980];
ATEXTR2=text(RSPX(:,1)+6,RSPY(:,2)-22,'Dr.MCET, Pollachi','FontSize',10,'Fontweight','bold');
ATEXTR2.Color=[0.2500 0.2250 0.5980];


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

axis([-20 30 -25 5],'xy');
set(gca,'XColor', 'none','YColor','none')
%set(gca, 'Color', 'none')
%whitebg('w')
hf.Color = 'w';
set(gcf,'Color',[0.90 0.90 0.90])
hf.Color='w';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Animation Code begins here



for i=1:10:length(time)
    
    clearpoints(Vrn_Phasor);
    clearpoints(Vrn_Phasor_cursor);

    clearpoints(Vyn_Phasor);
    clearpoints(Vyn_Phasor_cursor);

    clearpoints(Vbn_Phasor);
    clearpoints(Vbn_Phasor_cursor);

    clearpoints(Vrns_Phasor);
    clearpoints(Vrns_Phasor_cursor);

    clearpoints(Vyns_Phasor);
    clearpoints(Vyns_Phasor_cursor);

    clearpoints(Vbns_Phasor);
    clearpoints(Vbns_Phasor_cursor);

    addpoints(VRn_Wave,time(i),VRn(i));
    addpoints(VYn_Wave,time(i),VYn(i));
    addpoints(VBn_Wave,time(i),VBn(i));

    addpoints(VRY_Wave,time1(i),VRY(i));
    addpoints(VYB_Wave,time1(i),VYB(i));
    addpoints(VBR_Wave,time1(i),VBR(i));


    addpoints(Vrn_Phasor,[5, (circ_radius-2)*sqrt(3)*cosd(angVr(i))+5],[-20,(circ_radius-2)*sqrt(3)*sind(angVr(i))-20]);
    addpoints(Vrn_Phasor_cursor,(circ_radius-2)*sqrt(3)*cosd(angVr(i))+5,(circ_radius-2)*sqrt(3)*sind(angVr(i))-20);
    txt_vrn = text((circ_radius-1.75)*sqrt(3)*cosd(angVr(i))+5, (circ_radius-1.75)*sqrt(3)*sind(angVr(i))-20,'V_{RN}(S_1)','Fontsize',9); 

    addpoints(Vyn_Phasor,[5, (circ_radius-2)*sqrt(3)*cosd(angVy(i))+5],[-20,(circ_radius-2)*sqrt(3)*sind(angVy(i))-20]);
    addpoints(Vyn_Phasor_cursor,(circ_radius-2)*sqrt(3)*cosd(angVy(i))+5,(circ_radius-2)*sqrt(3)*sind(angVy(i))-20);
    txt_vyn = text((circ_radius-1.75)*sqrt(3)*cosd(angVy(i))+5, (circ_radius-1.75)*sqrt(3)*sind(angVy(i))-20,'V_{YN}(S_3)','Fontsize',9);

    addpoints(Vbn_Phasor,[5,(circ_radius-2)*sqrt(3)*cosd(angVb(i))+5],[-20,(circ_radius-2)*sqrt(3)*sind(angVb(i))-20]);
    addpoints(Vbn_Phasor_cursor,(circ_radius-2)*sqrt(3)*cosd(angVb(i))+5,(circ_radius-2)*sqrt(3)*sind(angVb(i))-20);
    txt_vbn = text((circ_radius-1.75)*sqrt(3)*cosd(angVb(i))+5, (circ_radius-1.75)*sqrt(3)*sind(angVb(i))-20,'V_{BN}(S_5)','Fontsize',9);

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    addpoints(Vrns_Phasor,[5, (circ_radius-2)*sqrt(3)*cosd(angVrs(i))+5],[-20,(circ_radius-2)*sqrt(3)*sind(angVrs(i))-20]);
    addpoints(Vrns_Phasor_cursor,(circ_radius-2)*sqrt(3)*cosd(angVrs(i))+5,(circ_radius-2)*sqrt(3)*sind(angVrs(i))-20);
    txt_vrns = text((circ_radius-1.75)*sqrt(3)*cosd(angVrs(i))+5, (circ_radius-1.75)*sqrt(3)*sind(angVrs(i))-20,'V_{NR}(S_4)','Fontsize',9); 

    addpoints(Vyns_Phasor,[5, (circ_radius-2)*sqrt(3)*cosd(angVys(i))+5],[-20,(circ_radius-2)*sqrt(3)*sind(angVys(i))-20]);
    addpoints(Vyns_Phasor_cursor,(circ_radius-2)*sqrt(3)*cosd(angVys(i))+5,(circ_radius-2)*sqrt(3)*sind(angVys(i))-20);
    txt_vyns = text((circ_radius-1.75)*sqrt(3)*cosd(angVys(i))+5, (circ_radius-1.75)*sqrt(3)*sind(angVys(i))-20,'V_{NY}(S_6)','Fontsize',9);

    addpoints(Vbns_Phasor,[5,(circ_radius-2)*sqrt(3)*cosd(angVbs(i))+5],[-20,(circ_radius-2)*sqrt(3)*sind(angVbs(i))-20]);
    addpoints(Vbns_Phasor_cursor,(circ_radius-2)*sqrt(3)*cosd(angVbs(i))+5,(circ_radius-2)*sqrt(3)*sind(angVbs(i))-20);
    txt_vbns = text((circ_radius-1.75)*sqrt(3)*cosd(angVbs(i))+5, (circ_radius-1.75)*sqrt(3)*sind(angVbs(i))-20,'V_{NB}(S_2)','Fontsize',9);


    if (IS1(i)~=0 && IS6(i)~=0)
            set(MOS1,'color','k');
            set(MOS11,'color','k');
            set(MOS6,'color','k');
            set(MOS61,'color','k');
            set(D1,'color','k');
            set(D6,'color','k');
            set(L141,'color','k');
            set(L236,'color','k');
            set(L13,'color','k');
            set(L35,'color','k');
            set(L46,'color','k');
            set(LEG1_CENTRE_LOAD1,'Color','k');
            set(LEG2_CENTRE_LOAD1,'Color','k');
            set(LJR_ry,'Color','k');
            set(resr,'Color','k');
            set(resy,'Color','k');
            set(jum1,'Color','k');
            
            set(MOS5,'color',[0.7 0.7 0.7]);
            set(MOS51,'color',[0.7 0.7 0.7]);
            set(MOS2,'color',[0.7 0.7 0.7]);
            set(MOS21,'color',[0.7 0.7 0.7]);
            set(MOS3,'color',[0.7 0.7 0.7]);
            set(MOS31,'color',[0.7 0.7 0.7]);
            set(MOS4,'color',[0.7 0.7 0.7]);
            set(MOS41,'color',[0.7 0.7 0.7]);
            set(D2,'color',[0.7 0.7 0.7]);
            set(D3,'color',[0.7 0.7 0.7]);
            set(D4,'color',[0.7 0.7 0.7]);
            set(D5,'color',[0.7 0.7 0.7]);
            set(L241,'color',[0.7 0.7 0.7]);
            set(L136,'color',[0.7 0.7 0.7]);
            set(L152,'color',[0.7 0.7 0.7]);
            set(L252,'color',[0.7 0.7 0.7]);
            set(L62,'color',[0.7 0.7 0.7]);
            set(L13,'color',[0.7 0.7 0.7]);
            set(L35,'color',[0.7 0.7 0.7]);

            set(LEG3_CENTRE_LOAD1,'Color',[0.7 0.7 0.7]);
            set(LJR_yb,'Color',[0.7 0.7 0.7]);
            set(resb,'Color',[0.7 0.7 0.7]);



        elseif (IS1(i)~=0 && IS2(i)~=0)

            set(MOS1,'color','k');
            set(MOS11,'color','k');
            set(MOS2,'color','k');
            set(MOS21,'color','k');
            set(D1,'color','k');
            set(D2,'color','k');
            set(L141,'color','k');
            set(L252,'color','k');
            set(L62,'color','k');
            set(L46,'color','k');
            set(LEG3_CENTRE_LOAD1,'Color','k');
            set(LJR_yb,'Color','k');
            set(resb,'Color','k');
            set(jum1,'Color','k');

            set(MOS5,'color',[0.7 0.7 0.7]);
            set(MOS51,'color',[0.7 0.7 0.7]);
            set(MOS3,'color',[0.7 0.7 0.7]);
            set(MOS31,'color',[0.7 0.7 0.7]);
            set(MOS4,'color',[0.7 0.7 0.7]);
            set(MOS41,'color',[0.7 0.7 0.7]);
            set(D5,'color',[0.7 0.7 0.7]);
            set(D3,'color',[0.7 0.7 0.7]);
            set(D4,'color',[0.7 0.7 0.7]);
            set(D6,'color',[0.7 0.7 0.7]);
            set(L152,'color',[0.7 0.7 0.7]);
            set(L136,'color',[0.7 0.7 0.7]);
            set(L13,'color',[0.7 0.7 0.7]);
            set(L35,'color',[0.7 0.7 0.7]);
            set(MOS6,'color',[0.7 0.7 0.7]);
            set(MOS61,'color',[0.7 0.7 0.7]);
            set(L236,'color',[0.7 0.7 0.7]);

            set(LEG2_CENTRE_LOAD1,'Color',[0.7 0.7 0.7]);
            set(resy,'Color',[0.7 0.7 0.7]);
            set(jum2,'Color',[0.7 0.7 0.7]);

   elseif (IS2(i)~=0 && IS3(i)~=0)

           
            set(MOS2,'color','k');
            set(MOS21,'color','k');
            set(MOS3,'color','k');
            set(MOS31,'color','k');
            set(D2,'color','k');
            set(D3,'color','k');
            set(L136,'color','k');
            set(L252,'color','k');
            set(L13,'color','k');
            set(L62,'color','k');
            set(L46,'color','k');
            set(LEG2_CENTRE_LOAD1,'Color','k');
            set(LEG3_CENTRE_LOAD1,'Color','k');
            set(resy,'Color','k');
            set(resb,'Color','k');
            set(jum2,'Color','k');
        
            set(MOS1,'color',[0.7 0.7 0.7]);
            set(MOS11,'color',[0.7 0.7 0.7]);
            set(MOS5,'color',[0.7 0.7 0.7]);
            set(MOS51,'color',[0.7 0.7 0.7]);
            set(MOS6,'color',[0.7 0.7 0.7]);
            set(MOS61,'color',[0.7 0.7 0.7]);
            set(MOS4,'color',[0.7 0.7 0.7]);
            set(MOS41,'color',[0.7 0.7 0.7]);
            set(D1,'color',[0.7 0.7 0.7]);
            set(D5,'color',[0.7 0.7 0.7]);
            set(D6,'color',[0.7 0.7 0.7]);
            set(D4,'color',[0.7 0.7 0.7]);
            set(L141,'color',[0.7 0.7 0.7]);
            set(L241,'color',[0.7 0.7 0.7]);
            set(L236,'color',[0.7 0.7 0.7]);
            set(L35,'color',[0.7 0.7 0.7]);

            set(LEG1_CENTRE_LOAD1,'Color',[0.7 0.7 0.7]);
            set(resr,'Color',[0.7 0.7 0.7]);
            set(jum1,'Color',[0.7 0.7 0.7]);
            set(LJR_ry,'Color',[0.7 0.7 0.7]);


elseif (IS4(i)~=0 && IS3(i)~=0)

            set(MOS4,'color','k');
            set(MOS41,'color','k');
            set(MOS3,'color','k');
            set(MOS31,'color','k');
            set(D4,'color','k');
            set(D3,'color','k');
            set(L241,'color','k');
            set(L136,'color','k');
            set(L13,'color','k');
            set(jum1,'Color','k');
            set(jum2,'Color','k');
            set(LEG2_CENTRE_LOAD1,'Color','k');
            set(LEG1_CENTRE_LOAD1,'Color','k');
            set(resy,'Color','k');
            set(resr,'Color','k');
            set(LJR_ry,'Color','k');
        
            
            set(MOS2,'color',[0.7 0.7 0.7]);
            set(MOS21,'color',[0.7 0.7 0.7]);
            set(MOS5,'color',[0.7 0.7 0.7]);
            set(MOS51,'color',[0.7 0.7 0.7]);
            set(MOS6,'color',[0.7 0.7 0.7]);
            set(MOS61,'color',[0.7 0.7 0.7]);
            set(MOS1,'color',[0.7 0.7 0.7]);
            set(MOS11,'color',[0.7 0.7 0.7]);
            set(D2,'color',[0.7 0.7 0.7]);
            set(D5,'color',[0.7 0.7 0.7]);
            set(D6,'color',[0.7 0.7 0.7]);
            set(D1,'color',[0.7 0.7 0.7]);
            set(L141,'color',[0.7 0.7 0.7]);
            set(L236,'color',[0.7 0.7 0.7]);
            set(L152,'color',[0.7 0.7 0.7]);
            set(L35,'color',[0.7 0.7 0.7]);
            set(L252,'color',[0.7 0.7 0.7]);
            set(L62,'color',[0.7 0.7 0.7]);
            set(LEG3_CENTRE_LOAD1,'Color',[0.7 0.7 0.7]);
            set(resb,'Color',[0.7 0.7 0.7]);
            set(LJR_yb,'Color',[0.7 0.7 0.7]);
            set(L46,'color',[0.7 0.7 0.7]);
            


elseif (IS4(i)~=0 && IS5(i)~=0)

            set(MOS4,'color','k');
            set(MOS41,'color','k');
            set(MOS5,'color','k');
            set(MOS51,'color','k');
            set(D4,'color','k');
            set(D5,'color','k');
            set(L241,'color','k');
            set(L152,'color','k');
            set(L13,'color','k');
            set(L35,'color','k');
            set(resr,'Color','k');
            set(resb,'Color','k');
            set(jum1,'Color','k');
            set(LJR_yb,'Color','k');
            set(LJR_ry,'Color','k');
            set(LEG1_CENTRE_LOAD1,'Color','k');
            set(LEG3_CENTRE_LOAD1,'Color','k');
            
            set(resy,'Color',[0.7 0.7 0.7]);
            set(MOS3,'color',[0.7 0.7 0.7]);
            set(MOS31,'color',[0.7 0.7 0.7]);
            set(MOS2,'color',[0.7 0.7 0.7]);
            set(MOS21,'color',[0.7 0.7 0.7]);
            set(MOS6,'color',[0.7 0.7 0.7]);
            set(MOS61,'color',[0.7 0.7 0.7]);
            set(MOS1,'color',[0.7 0.7 0.7]);
            set(MOS11,'color',[0.7 0.7 0.7]);
            set(D2,'color',[0.7 0.7 0.7]);
            set(D3,'color',[0.7 0.7 0.7]);
            set(D6,'color',[0.7 0.7 0.7]);
            set(D1,'color',[0.7 0.7 0.7]);
            set(L141,'color',[0.7 0.7 0.7]);
            set(L236,'color',[0.7 0.7 0.7]);
            set(L252,'color',[0.7 0.7 0.7]);
            set(L46,'color',[0.7 0.7 0.7]);
            set(L62,'color',[0.7 0.7 0.7]);
            set(L136,'color',[0.7 0.7 0.7]);
            set(LEG2_CENTRE_LOAD1,'Color',[0.7 0.7 0.7]);
            set(jum2,'Color',[0.7 0.7 0.7]);

elseif (IS5(i)~=0 && IS6(i)~=0)

            set(MOS4,'color','k');
            set(MOS41,'color','k');
            set(MOS5,'color','k');
            set(MOS51,'color','k');
            set(MOS6,'color','k');
            set(MOS61,'color','k');
            set(jum2,'color','k')
            set(D5,'color','k');
            set(D6,'color','k');
            
            set(L236,'color','k');
            set(L152,'color','k');
            set(L13,'color','k');
            set(L35,'color','k');
            set(L46,'color','k');
            set(resy,'Color','k');
            set(resb,'Color','k');
            set(LEG2_CENTRE_LOAD1,'Color','k');
            set(LEG3_CENTRE_LOAD1,'Color','k');
            set(LJR_yb,'Color','k');


        
            
            set(MOS4,'color',[0.7 0.7 0.7]);
            set(MOS41,'color',[0.7 0.7 0.7]);
            set(MOS2,'color',[0.7 0.7 0.7]);
            set(MOS21,'color',[0.7 0.7 0.7]);
            set(MOS3,'color',[0.7 0.7 0.7]);
            set(MOS31,'color',[0.7 0.7 0.7]);
            set(MOS1,'color',[0.7 0.7 0.7]);
            set(MOS11,'color',[0.7 0.7 0.7]);
            set(D2,'color',[0.7 0.7 0.7]);
            set(D4,'color',[0.7 0.7 0.7]);
            set(D3,'color',[0.7 0.7 0.7]);
            set(D1,'color',[0.7 0.7 0.7]);
            set(L141,'color',[0.7 0.7 0.7]);
            set(L136,'color',[0.7 0.7 0.7]);
            set(L252,'color',[0.7 0.7 0.7]);
            set(L62,'color',[0.7 0.7 0.7]);
            set(resr,'Color',[0.7 0.7 0.7]);
            set(jum1,'color',[0.7 0.7 0.7]);
            set(LEG1_CENTRE_LOAD1,'Color',[0.7 0.7 0.7]);
            set(LJR_ry,'Color',[0.7 0.7 0.7]);
            set(L241,'color',[0.7 0.7 0.7]);

    else
            set(MOS4,'color',[0.7 0.7 0.7]);
            set(MOS41,'color',[0.7 0.7 0.7]);
            set(MOS5,'color',[0.7 0.7 0.7]);
            set(MOS51,'color',[0.7 0.7 0.7]);
            set(MOS6,'color',[0.7 0.7 0.7]);
            set(MOS61,'color',[0.7 0.7 0.7]);
            set(D4,'color',[0.7 0.7 0.7]);
            set(D5,'color',[0.7 0.7 0.7]);
            set(D6,'color',[0.7 0.7 0.7]);
            set(L241,'color',[0.7 0.7 0.7]);
            set(L236,'color',[0.7 0.7 0.7]);
            set(L152,'color',[0.7 0.7 0.7]);
            set(L13,'color',[0.7 0.7 0.7]);
            set(L35,'color',[0.7 0.7 0.7]);
            set(L46,'color',[0.7 0.7 0.7]);
        

            set(MOS2,'color',[0.7 0.7 0.7]);
            set(MOS21,'color',[0.7 0.7 0.7]);
            set(MOS3,'color',[0.7 0.7 0.7]);
            set(MOS31,'color',[0.7 0.7 0.7]);
            set(MOS1,'color',[0.7 0.7 0.7]);
            set(MOS11,'color',[0.7 0.7 0.7]);
            set(D2,'color',[0.7 0.7 0.7]);
            set(D3,'color',[0.7 0.7 0.7]);
            set(D1,'color',[0.7 0.7 0.7]);
            set(L141,'color',[0.7 0.7 0.7]);
            set(L136,'color',[0.7 0.7 0.7]);
            set(L252,'color',[0.7 0.7 0.7]);
            set(L62,'color',[0.7 0.7 0.7]);
    end
     drawnow
     currFrame=getframe(hf);
     writeVideo(writeobj, currFrame);
     set(txt_vrn, 'String', ' ');
     set(txt_vyn, 'String', ' ');
     set(txt_vbn, 'String', ' ');
     set(txt_vrns, 'String', ' ');
     set(txt_vyns, 'String', ' ');
     set(txt_vbns, 'String', ' ');
    

end

 close(writeobj)