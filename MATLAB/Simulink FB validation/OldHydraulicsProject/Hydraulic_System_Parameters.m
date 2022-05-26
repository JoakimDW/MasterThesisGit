close all;
clear;


%% Initial values
p_1_0=0;           %[bar] Initial pressure p_1 
p_2_0=0;           %[bar] Initial pressure p_2 
p_3_0=0;           %[bar] Initial pressure p_3 
n_M_0=0;           %[rev/min] Initial motor speed
Pa=0;                %start value
PA=0;                %start value

%% Some general values
beta=10000;        %[bar]           Oil bulk modulus  
rho_oil=865;       %[kg/m^3]        Oil density  
p_T=4;             %[bar]           Tank pressure 
m1=650;            %[kg]

                              
%% Relief Valve
p_crackRV=250;      %[bar]          Max pressure     
k_RV=500;           %[(L/min)/bar]  


%% Electric Valve
k_EV=(32)/sqrt(22);     %[(L/min)/bar]                                         %correct
C_d=0.61;               %Discharge coefficient 
A_EV=4.901669938;       %[m^2] Used port size from servovalve to find Area


%% Pump
D_P=10.6e-6;            %[m^3/rev]       Pump displacement  
Q_th=43.0008;           %[L/min]         Theoretical flow


%% Lines
V_pressure=2.9444e-04;     %[m^3] 2meter  lines in general use                         
V_return=8.8333e-04;       %[m^3] 2meter  lines to return to tank                          
VSV_C2=0.001;              %[m^3] 2meter  lines between SV and C2 
                                                     
    
%% Prime mover: Electric Motor 
T_Max=65;         %[Nm]
n_EM=5000;        %[RPM]      
n_Max=5300;       %[RPM]
P_Max=31059;      %[Watt]


%% Cylinder 1
A=31.16e-4;          %[m^2]
a=18.6e-4;          %[m^2]
FL=40000;            %[Newton]
xmax=1.4;            %[m]
xDotmax=0.23;        %[m/s]


%% Motor cosine-shaped velocity
tR=0.1;   %Ramp time for motor
tdelta=60;
tdeltatR=(tdelta-tR);

















