function quat = jointToQuat(q)
  % Input: joint angles
  % Output: quaternion representing the orientation of the end-effector
  % q_IE.
  C_IE=jointToRotMat(q);
  % PLACEHOLDER FOR OUTPUT -> REPLACE WITH SOLUTION
  %quat = zeros(4,1);
  quat=rotToMatQuat(C_IE);
end