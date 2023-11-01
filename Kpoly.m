function [X] = Kpoly(psi, size,x)

    if x == 0   % when you want nothing
    X = 1;                          

    else        % when you want polynom from komplex roots
    i = sqrt(-1);

    sigma = psi * size;
    omega = sqrt(size.^2 - sigma.^2);

    pol1 = [1 -sigma+omega*i];      % (s -(-0.05 + 5)) example
    pol2 = [1 -sigma-omega*i];      % (s -(-0.05 - 5)) example
    X = conv(pol1,pol2);            % (s^2 -0.1 +25) example
    end
end