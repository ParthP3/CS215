% Function to uniformly get radom points in an ellipse 
function erand = erand()
    % First get random point in unit circle using polar coordinates
    % We take sqrt because we want r with probability proportional to r 
    r = sqrt(rand());
    theta = 2*pi*rand();

    % Convert the point to normal X-Y coordinates
    x = r*cos(theta);
    y = r*sin(theta);

    % Scale down by factor of 2 along Y axis to get ellipse (egg)
    erand = [x,0.5*y];
end