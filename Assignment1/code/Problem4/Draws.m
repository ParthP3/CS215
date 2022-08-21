function x = Draws()
% This returns the draws with PDF of shape M
%  First we get random r between (-1,1) and then change it to sgn(x)*sqrt(|x|
r = (rand(1)-0.5)*2;
if r>=0
    x = sqrt(r);
else 
    x = - sqrt(-r);
end
end

