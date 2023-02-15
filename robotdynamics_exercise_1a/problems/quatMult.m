function q_AC = quatMult(q_AB,q_BC)
  % Input: two quaternions to be multiplied
  % Output: output of the multiplication
  
  % PLACEHOLDER FOR OUTPUT -> REPLACE WITH SOLUTION
  %q_AC = zeros(4,1);
  M_l = leftMatrix(q_AB);
  q_AC=M_l*q_BC;
end

