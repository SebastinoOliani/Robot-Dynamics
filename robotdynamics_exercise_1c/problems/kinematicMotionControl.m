function [ Dq ] = kinematicMotionControl(q, r_des, v_des)
% Inputs:
%  q          : current configuration of the robot
% r_des       : desired end effector position
% v_des       : desired end effector velocity
% Output: joint-space velocity command of the robot.

% Compute the updated joint velocities. This would be used for a velocity controllable robot
% TODO:
%Dq = 0.1*ones(6,1);
r_e = jointToPosition(q);
k_pp = 10;
Dr = r_des - r_e;
Dq = pseudoInverseMat(jointToPosJac(q),0.001)*(v_des+k_pp*Dr);
end
