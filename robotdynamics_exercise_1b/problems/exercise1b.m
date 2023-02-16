%generalized vector
q=[pi/6,pi/6,pi/6,pi/6,pi/6,pi/6];
%position Jacobian
J_P=jointToPosJac(q);
%rotation Jacobian
J_R=jointToRotJac(q);
%jacobian
J=[J_P;J_R];