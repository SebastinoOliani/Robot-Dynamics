function J_P = jointToPosJac(q)
  % Input: vector of generalized coordinates (joint angles)
  % Output: Jacobian of the end-effector translation which maps joint
  % velocities to end-effector linear velocities in I frame.
  T_I0=getTransformI0();
  T_01=jointToTransform01(q(1));
  T_12=jointToTransform12(q(2));
  T_23=jointToTransform23(q(3));
  T_34=jointToTransform34(q(4));
  T_45=jointToTransform45(q(5));
  T_56=jointToTransform56(q(6));
  T_6E=getTransform6E();
  T_IE=T_I0*T_01*T_12*T_23*T_34*T_45*T_56*T_6E;
  
  % Compute the homogeneous transformation matrices from frame k to the
  % inertial frame I.
  T_I1 = T_I0*T_01;
  T_I2 = T_I1*T_12;
  T_I3 = T_I2*T_23;
  T_I4 = T_I3*T_34;
  T_I5 = T_I4*T_45;
  T_I6 = T_I5*T_56;
  
  % Extract the rotation matrices from each homogeneous transformation
  % matrix.
  R_I1 = T_I1(1:3,1:3);
  R_I2 = T_I2(1:3,1:3);
  R_I3 = T_I3(1:3,1:3);
  R_I4 = T_I4(1:3,1:3);
  R_I5 = T_I5(1:3,1:3);
  R_I6 = T_I6(1:3,1:3);
  
  %e vectors wrt frame I
  I_e_6x=R_I6*[1;0;0];
  I_e_5x=R_I5*[0;1;0];
  I_e_4x=R_I4*[1;0;0];
  I_e_3x=R_I3*[0;1;0];
  I_e_2x=R_I2*[0;1;0];
  I_e_1x=R_I1*[0;0;1];
  %r vectors wrt frame I
  I_r_6E=T_IE(1:3,4)-T_I6(1:3,4);
  I_r_5E=T_IE(1:3,4)-T_I5(1:3,4);
  I_r_4E=T_IE(1:3,4)-T_I4(1:3,4);
  I_r_3E=T_IE(1:3,4)-T_I3(1:3,4);
  I_r_2E=T_IE(1:3,4)-T_I2(1:3,4);
  I_r_1E=T_IE(1:3,4)-T_I1(1:3,4);
  % Compute the translational jacobian.
  J_P = [cross(I_e_1x,I_r_1E),cross(I_e_2x,I_r_2E),cross(I_e_3x,I_r_3E) ...
      cross(I_e_4x,I_r_4E),cross(I_e_5x,I_r_5E),cross(I_e_6x,I_r_6E)];
end