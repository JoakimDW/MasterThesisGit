syms L1 L2 L3 L4 thetaSlew thetaMainBoom thetaKnuckleBoom;
SimplifiedSymbolicX = simplify(X_sym)
SimplifiedSymbolicY = simplify(Y_sym)
SimplifiedSymbolicZ = simplify(Z_sym)

L1=2;
L2=3;
L3=5.5;
L4=4;

thetaSlew = 0.5;
thetaMainBoom = 0.5;
thetaKnuckleBoom = 0.5;

H = L2*cos(thetaSlew) + L3*cos(thetaSlew)*cos(thetaMainBoom) + L4*cos(thetaSlew)*cos(thetaMainBoom)*cos(thetaKnuckleBoom) - L4*cos(thetaSlew)*sin(thetaMainBoom)*sin(thetaKnuckleBoom);
Hsimp = cos(thetaSlew)*(L2 + L4*cos(thetaMainBoom + thetaKnuckleBoom) + L3*cos(thetaMainBoom));