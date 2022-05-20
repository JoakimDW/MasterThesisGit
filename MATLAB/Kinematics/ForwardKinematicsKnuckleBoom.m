close all; clc; clear;

syms L1 L2 L3 L4 thetaSlew thetaMainBoom thetaKnuckleBoom;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%% Forward kinematics %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Steps from DH table
% rotZ*transZ*transX*rotX
T01 = RotZ(thetaSlew)*TranslationZ(L1)*TranslationX(L2)*RotX(pi/2);
T12 = RotZ(thetaMainBoom)*TranslationZ(0)*TranslationX(L3)*RotX(0);
T23 = RotZ(thetaKnuckleBoom)*TranslationZ(0)*TranslationX(L4)*RotX(-pi/2);

% Total transformation
T03 = T01*T12*T23;

% Resulting cartesian coordinates
X_sym = T03(1,4);
Y_sym = T03(2,4);
Z_sym = T03(3,4);

% Resulting rotation matrix
Rot = T03(1:3,1:3);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% Jacobian %%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

J = simplify( [ [diff(X_sym, thetaSlew), diff(X_sym, thetaMainBoom), diff(X_sym, thetaKnuckleBoom)];
              [diff(Y_sym, thetaSlew), diff(Y_sym, thetaMainBoom), diff(Y_sym, thetaKnuckleBoom)];
              [diff(Z_sym, thetaSlew), diff(Z_sym, thetaMainBoom), diff(Z_sym, thetaKnuckleBoom)]])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%% Inverse kinematics %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

syms X Y Z

% Slew angle
thetaSlew_sym = atan2(Y,X);

% Radius in XY plane
%R = sqrt(X^2+Y^2);      % Radius along Z axis

% Distance from boom bearing to boom tip
%Rboom = sqrt((R-L2)^2 + (Z-L1)^2);
%dBoom_sym =  sqrt(Rboom^2-L4^2) - L3;

% Boom angle
%thetaMainBoom_sym = atan2(Z-L1,R-L2) - atan(L4/(dBoom+L3));


% Return joint displacements
%jointDisplacements = [thetaSlew_sym thetaMainBoom_sym dBoom_sym];

% Test forward kinematics
%testDisplacements = [0 0 0]
%position = FK(testDisplacements)

% Test inverse kinematics
%displacements = IK(position)

%error = testDisplacements - displacements