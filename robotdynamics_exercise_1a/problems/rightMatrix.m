function M_r = rightMatrix(q_AB)
M_r=[q_AB(1,1),-q_AB(1,2),-q_AB(1,3),-q_AB(1,4);
      q_AB(1,2),q_AB(1,1),q_AB(1,4),-q_AB(1,3);
      q_AB(1,3),-q_AB(1,4),q_AB(1,1),q_AB(1,2);
      q_AB(1,4),q_AB(1,3),-q_AB(1,2),q_AB(1,1)];
end

