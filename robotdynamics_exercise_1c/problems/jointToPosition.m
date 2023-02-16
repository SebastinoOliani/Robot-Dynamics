function I_r_IE = jointToPosition(q)
  % Input: joint angles
  % Output: position of end-effector w.r.t. inertial frame. I_r_IE
  
  % PLACEHOLDER FOR OUTPUT -> REPLACE WITH SOLUTION
  %I_r_IE = zeros(3,1);
  TI0=getTransformI0;
  T01=jointToTransform01(q(1));
  T12=jointToTransform12(q(2));
  T23=jointToTransform23(q(3));
  T34=jointToTransform34(q(4));
  T45=jointToTransform45(q(5));
  T56=jointToTransform56(q(6));
  T6E=getTransform6E;
  TIE=TI0*T01*T12*T23*T34*T45*T56*T6E;
  I_r_IE=TIE(1:3,4);
end