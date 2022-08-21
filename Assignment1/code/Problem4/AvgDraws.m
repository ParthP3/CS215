function y = AvgDraws(N)
%AVGDRAWS will return the average of N draws of Draws.m function

y = 0;
for i=1:N
    y = y + Draws();
end
y = y/N;
end
