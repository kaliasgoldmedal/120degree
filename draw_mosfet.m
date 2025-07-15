function [Gx,Gy,Sx,Dy,Sx1,Dx1,Sx2,Dx2,Sx3,Dx3,Sx4,Dx4]= draw_mosfet(xref,yref)

h=1;
w=1.5;

Gx=[xref,xref,xref,xref-h/2];
Gy=[yref,yref+h,yref+h/2,yref+h/2];


Sx=[xref+(w/5),xref+(w/5),xref+(w/5),xref+(0.57*w),xref+(0.57*w),xref+w];
Dy=[yref,yref+h,yref+(0.9*h),yref+(0.9*h),yref+1.125*h,yref+1.125*h];

Sx1=[xref+(w/5),xref+(0.57*w),xref+(0.57*w),xref+w];
Dx1=[yref+(0.1*h),yref+(0.1*h),yref,yref];

Sx2=[xref+(w/5),xref+(0.57*w),xref+(0.57*w)];
Dx2=[yref+h/2,yref+h/2,yref+(0.1*h)];

Sx3=[xref+(w/5),xref+(0.286/2*w)+0.5];
Dx3=[yref+h/2,yref+(0.7*h)];

Sx4=[xref+(w/5),xref+(0.286/2*w)+0.5];
Dx4=[yref+h/2,yref+(0.3*h)];

