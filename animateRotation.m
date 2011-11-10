function animateRotation(rhandle,theta,time)
%% Take a rotation matrix and animate it over the vector of angles
% rhandle is a function handle to the Rotation matrix 
% theta is the angle to display
% time is the length of the animation

tstep=1/20; %20 Hz framerate, decent looking
steps=ceil(time/tstep);
thetaVec=0:theta/steps:theta;

figure(); %create a figure window

for k=1:length(thetaVec)
	tic;
	clf
	R=rhandle(thetaVec(k));
	% line() % X vector
	% line() % Y vector
	% line() % Z vector
	drawnow();
	pause(tstep-toc);
end
