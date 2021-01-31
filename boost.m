%The following four parameters are needed to calculate the power stage:
       % 1. Input Voltage Range: VIN(min)and VIN(max)
       %2. Nominal Output Voltage: VOUT
       %3. Maximum Output Current: IOUT(max)
       clc;
       disp('BOOST CONVERTER CALCULATION')
 Vin=input('enter the minimum input voltage:: ');
 Vin1=input('enter the maximum input voltage:: ');
 Vout=input('enter the output voltage:: ');
 I=input('enter the maximum output current:: ');
 fs=input('enter the switching frequency:: ');
 %calculation of maximum switch current
 n=0.9;
 D=1-((Vin*n)/Vout); %duty cycle
 di=.2*I*(Vout/Vin); %inductor ripple current
 L=(Vin*(Vout-Vin1))/(di*fs*Vout); %inductor value
 %dv=(I/(1-D))+(di/2);
 dv=0.5;
 C=I*D/(fs*dv);%output capacitor value
 R=Vout/I;
 disp('*****************************')
 disp('DUTY CYCLE::::')
 D=D*100;
 D
 disp('RIPPLE CURRENT:::')
 di
 disp('INDUCTOR VALUE:::')
 L
 disp('VOLTAGE RIPPLE:::')
 dv
 disp('CAPACITOR VALUE micro farad:::')
 C=C;
 C 
 R
 disp('**************************')
 