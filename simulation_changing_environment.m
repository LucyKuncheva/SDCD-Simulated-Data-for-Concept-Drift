function [a,laba] = simulation_changing_environment(p, V)
%SIMULATION_CHANGING_ENVIRONMENT generates data stream from sources
%   [a,laba] = SIMULATION_CHANGING_ENVIRONMENT(p, V) returns a data set "a"
%   with a label vector "laba".
%   
%   Input 
%   V:     array of probabilities of size N-by-K where N is the desirable 
%          number of  points, K is the number of sources to sample from,
%          and V(i,:) are the mixing proportions of the K sources (each 
%          row of V sums up to 1) 
%   p:     a user-defined function called as [x,labx] = p(i), which samples
%          once from data source i and returns point "x" with its label.
%
%   Output
%   a:     a data set of size N-by-length(x) sampled according to V
%   laba:  class labels, a vector of size N-by-1

%--------------------------------------------------------------------------
%   Last modified: L Kuncheva 23/01/16 

a = []; laba=[];% initialise the data set
for i = 1:size(V,1)
    % Determine which source to sample from
    k = sample_once(V(i,:));
    % Sample from source k
    [x,labx] = feval(p,k);
    a = [a;x];
    laba = [laba;labx]; %#ok<*AGROW>
end

function k = sample_once(P)
% samples once from the discrete distribution specified by P
csP = [0 cumsum(P)];
k = 1;
t = rand;
while t > csP(k)
    k = k + 1;
end
k = k - 1;

