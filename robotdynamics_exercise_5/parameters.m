function params = parameters()
%% Hexacopter parameters
l = 0.215; %arm length
b = 8.5e-6; %thrust constant
d = 8.04e-5; %drag constant
params.J = diag([0.034 0.034 0.09]); %inertia
params.m = 1.5; %mass
params.g = 9.81; %gravity

%% Simulation Initial conditions
params.Bv_0 = [0; 0; 0]; % initial velocity expressed in body frame
params.rpy_0 = [0; 0; 0]; % initial roll, pitch and yaw angles

%% Allocation Matrix
% TODO: Fill in the allocation matrix such that:
% [U_1, U_2, U_3, U_4]' = A * [omega_{p,1}^{2} ... omega_{p,6}^{2}]'
allocation_matrix = eye(4,6);

s = sind(30);
c = cosd(30);

allocation_matrix = [b b b b b b; ...
                    b*l*s b*l b*l*s -b*l*s -b*l -b*l*s; ...
                    -b*l*c 0 b*l*c b*l*c 0 -b*l*c; ...
                    d -d d -d d -d];

params.allocation_matrix = allocation_matrix;

%the pseudo inverse of the allocation matrix
params.pinv_allocation_matrix = pinv(allocation_matrix);

%% Controllers tuning parameters
%Attitude
params.attitude_Kp = [10; 10; 5]; % P gain for attitude controller
params.attitude_Kd = [7; 7; 3.5]; % D gain for attitude controller

%Velocity
params.velocity_Kp = [0.25; 0.25; 3];  % P gain for velocity controller

end
