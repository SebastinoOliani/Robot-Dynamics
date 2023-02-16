function T45 = jointToTransform45(q)
  % Input: joint angles
  % Output: homogeneous transformation Matrix from frame 5 to frame 4. T_45
  
  % PLACEHOLDER FOR OUTPUT -> REPLACE WITH SOLUTION
  %T45 = zeros(4);
  T45=[cos(q),0,sin(q),(374-72-134)/1000;
      0,1,0,0;
      -sin(q),0,cos(q),0;
      0,0,0,1];
end

