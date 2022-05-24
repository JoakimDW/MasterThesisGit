function [tipPosition] = FK(jointDisplacements)
%forwardKinematics
%Returns the tip position from the joint displacements
%[x,y,z] = f([slewAngle, boomAngle, telescopeLength])

% Geometric data
L1 = 2.186;
L2 = 0.04;
L3 = 19.96;
L4 = 0.29;

% Read input vector
slewAngle = jointDisplacements(1);
boomAngle = jointDisplacements(2);
telescopeLength = jointDisplacements(3);

% Forward kinematics (from symbolic script) Inn i TwinCAT i functionblock

% replace all X Y Z lines with jacobian from ForwardKinematicksKnuckleBoom
% x_sym, y_sym z_sym
%X = l2*cos(slewAngle) + cos(boomAngle)*cos(slewAngle)*(l3 + telescopeLength) - l4*cos(slewAngle)*sin(boomAngle);
%Y = l2*sin(slewAngle) + cos(boomAngle)*sin(slewAngle)*(l3 + telescopeLength) - l4*sin(boomAngle)*sin(slewAngle);
%Z = l1 + sin(boomAngle)*(l3 + telescopeLength) + l4*cos(boomAngle);
                             
X = L2*cos(thetaSlew) + L3*cos(thetaSlew)*cos(thetaMainBoom) + L4*cos(thetaSlew)*cos(thetaMainBoom)*cos(thetaKnuckleBoom) - L4*cos(thetaSlew)*sin(thetaMainBoom)*sin(thetaKnuckleBoom);
Y = L2*sin(thetaSlew) + L3*cos(thetaMainBoom)*sin(thetaSlew) + L4*cos(thetaMainBoom)*cos(thetaKnuckleBoom)*sin(thetaSlew) - L4*sin(thetaSlew)*sin(thetaMainBoom)*sin(thetaKnuckleBoom);
Z = L1 + L3*sin(thetaMainBoom) + L4*cos(thetaMainBoom)*sin(thetaKnuckleBoom) + L4*cos(thetaKnuckleBoom)*sin(thetaMainBoom);

% Return tip position
tipPosition = [X Y Z]';

end