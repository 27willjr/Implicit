function [t, y] = Explicit_midpoint(tspan, y0, N, f)
    t0 = tspan(1);  
    tend = tspan(2);
    t = linspace(t0, tend, N+1)';
    y = zeros(N+1, length(y0));
    h = (tend - t0) / N;

    y(1, :) = y0;
    for k = 1:N
        yk = y(k, :)';
        y_mid = yk + (h / 2) * f(t(k), yk);
        y_next = yk + h * f(t(k) + h/2, y_mid);
        
        y(k+1, :) = y_next';
    end
end
