function x = unifdraw(N)
%returns average of N random draws from [0,1]
x = 0;
for i=1:N
    x = x + rand(1);
end
x = x/N;
end

