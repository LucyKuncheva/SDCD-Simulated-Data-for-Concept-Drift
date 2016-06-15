function [x,labx] = p_gaussian2d_4components(k,s)%P_GAUSSIAN2D_4COMPONENTS samples from 4 Gaussian clusters and 2 classes%   [x,labx] = P_GAUSSIAN2D_4COMPONENTS(k)%%   The data is a Gaussian mixture with 4 components, with means [10 10],%   [-10 10], [-10 -10] and [10,-10], respectively. The covariance%   matrices are [1 0;0 1] for all the 4 components.%%   Input%   k:     Concept 1 or 2. For concept 1, the classes are defined as Y<0%          and Y>=0. For concept 2, as X<0 and X>=0.%   s:     Variance of the features in all clusters. Default value s = 1.%%   Output%   x:     a data point described by two features%   labx:  a class label (1 or 2)%--------------------------------------------------------------------------%   Last modified: L Kuncheva 23/01/16if nargin == 1, s = 1; endx = randn(1,2)*s; % the data point before the offsetoffset = randi(2,1,2)*2 - 3; % random signsx = x + offset * 10; % final xif k == 1, labx = (x(2) >= 0) + 1;else labx = (x(1) >= 0) + 1;end