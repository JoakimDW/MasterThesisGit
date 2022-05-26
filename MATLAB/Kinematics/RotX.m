function RotX = RotX(theta)
    c = cos(theta);
    s = sin(theta);

    % To make cos(pi/2) = 0, introduce IF
    if isnumeric(c)
        if c < 1e-16
            c = 0;
        end
    end
    
    % Rotation matrix
    RotX = [[1 0 0 0];
            [0 c -s 0];
            [0 s c 0];
            [0 0 0 1]];
end