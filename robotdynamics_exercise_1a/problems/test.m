%vector of q
q=[pi/6;pi/6;pi/6;pi/6;pi/6;pi/6];
%end effector position
I_r_IE=jointToPosition(q);
%end effector rotation matrix
C_IE=jointToRotMat(q);
%from rot matrix to quat
quat=rotMatToQuat(C_IE);
%from quat to rot matrix
R=quatToRotMat(quat);
%quat multiplication
q1=[0;1;0;0];
q2=quatMult(quat,q1);
%rotate vector using quaternion
A_r=rotVecWithQuat(q1,I_r_IE);
%rotate vector using matrix
A_r_2=quatToRotMat(q1)*I_r_IE;