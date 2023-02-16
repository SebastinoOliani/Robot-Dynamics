function [ phi ] = rotMatToRotVec(C)
% Input: a rotation matrix C
% Output: the rotational vector which describes the rotation C

% Compute the rotional vector
%phi = zeros(3,1);
theta=real(acos((R(1,1)+R(2,2)+R(3,3)-1)/2));
if theta==0
    n = [0,0,0];
else 
    n = 1/(2*sin(theta))*[R(3,2)-R(2,3);R(1,3)-R(3,1);R(2,1)-R(1,2)];
end
phi = theta*n;
end
