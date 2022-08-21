function x = gaussdraw(N)
%returns average of N gaussian draws 
mu = 0;
sigma = 1;
x = 0;
for i = 1:N
    x = x+ normrnd(mu,sigma);
end
x = x/N;
end

