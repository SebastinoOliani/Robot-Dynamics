function T12 = jointToTransform12(q)
  % Input: joint angles
  % Output: homogeneous transformation Matrix from frame 2 to frame 1. T_12
  
  % PLACEHOLDER FOR OUTPUT -> REPLACE WITH SOLUTION
  %T12 = zeros(4);
  T12=[cos(q),0,sin(q),0;
      0,1,0,0;
      -sin(q),0,cos(q),(290-145)/1000;
      0,0,0,1];
end