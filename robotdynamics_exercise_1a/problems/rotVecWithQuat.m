function B_r = rotVecWithQuat(q_BA,A_r)
  % Input: the orientation quaternion and the coordinate of the vector to be mapped
  % Output: the coordinates of the vector in the target frame
  
  % PLACEHOLDER FOR OUTPUT -> REPLACE WITH SOLUTION
  %B_r = zeros(3,1);
  p_A_r=[0;A_r];
  q_BA_trans=transpose(q_BA);
  p_B_r=leftMatrix(q_BA)*rightMatrix((q_BA_trans))*p_A_r;
  B_r=[p_B_r(2:4,1)];
end
