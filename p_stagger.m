function [x,labx] = p_stagger(k)
%P_STAGGER samples from the STAGGER streaming data example
%   [x,labx] = P_STAGGER(k)
%
%   Input
%   k:     Concept 1, 2 or 3
%
%   Output
%   x:     a data point described by three features
%   labx:  a class label (1 or 2)

%--------------------------------------------------------------------------
%   Last modified: L Kuncheva 23/01/16

S = [ones(1,9) 2*ones(1,9) 3*ones(1,9);...
    repmat([ones(1,3) 2*ones(1,3) 3*ones(1,3)],1,3);...
    repmat([1,2,3],1,9)]'; % all possible 27 data points

x = S(randi(27),:);
switch k
    case 1, labx = ~(x(1) == 1 && x(2) == 1) + 1;
    case 2, labx = ~(x(2) == 2 || x(3) == 2) + 1;
    case 3, labx = x(1) == 1 + 1;
end
