function M_l = leftMatrix(q_AB)
M_l=[q_AB(1,1),-q_AB(2,1),-q_AB(3,1),-q_AB(4,1);
      q_AB(2,1),q_AB(1,1),-q_AB(4,1),q_AB(3,1);
      q_AB(3,1),q_AB(4,1),q_AB(1,1),-q_AB(2,1);
      q_AB(4,1),-q_AB(3,1),q_AB(2,1),q_AB(1,1)];
end

