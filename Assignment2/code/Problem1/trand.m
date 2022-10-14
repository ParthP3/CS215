% A function to uniformly generate random points from a triangle with
% vertices (0,0) , (pi/3,e), (pi,0)
function trand = trand()
    % Getting random points in unit square
    x = rand();
    y = rand();
    
    %S Applying a swap if point is outside the left-bottom half of the unit
    %square
    if x+y>1
        x = 1-x;
        y = 1-y;
    end
    %This gives uniform random points from the traingle with vertices
    %(0,0),(1,0),(0,1)

    % Now apply linear transformation to get points in our required
    % triangle uniformly
    M = [pi,pi/3;0,exp(1)];
    vec = [x;y];
    trand = M*vec ;
end

