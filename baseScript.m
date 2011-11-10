%% Animate a rotating coordinate system
% Visualizing rotation matrices can be very difficult, so it can be helpful to
% see what a given rotation actually looks like. This example will show a simple animation of rotations about each axis.

%% Demonstrate rotation matrices as functions
% Each of these functions need to be written to output the rotation matrix for
% each axis, given an angle input (see skeleton code).
% These rotation matrices are local to global transforms.
Rx(pi/6)
Ry(pi/12)
Rz(pi/4)

%% Multiply rotation matrices together
Rx(pi/3)*Ry(pi/6)

%% Display a given coordinate system using plotting tools:

theta=  %Something
R=Rx(theta);
line([0,R(1,1)],[0,R(1,2)][0,R(1,3)],'r');
% line(...) % y axis
% line(...) % z axis


%% Animate this rotation
% 
animateRotation(R)
