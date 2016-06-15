function [x,labx] = p_hyperplane2d(k)
%P_HYPERPLANE2D samples a data point from linearly separable classes
%   [x,labx] = P_HYPERPLANE2D(k) 
%   
%   Input 
%   k:     Concept/data source: between 0 and 360 (the angle of rotation  
%          of the separating line)
%
%   Output
%   x:     a data point described by two features, each in [-1,+1]
%   labx:  a class label (1 or 2)

%--------------------------------------------------------------------------
%   Last modified: L Kuncheva 23/01/16 %

x = rand(1,2)*2 - 1;

theta = k*pi/180;
if x(2)*cos(theta)+x(1)*sin(theta) > 0
    labx = 1;
else
    labx = 2;
end
            