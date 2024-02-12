function [t, y] = implicit_midpoint(tspan, y0, N, f)
% Time interval and initial conditions
t0 = tspan(1);
tend = tspan(2);
h = (tend - t0) / N;

% Initialize arrays to store solutions
t = linspace(t0, tend, N+1);
y = zeros(length(y0), N+1);
y(:, 1) = y0;

% Implicit Midpoint Method with fsolve
for i = 1:N
    t_half = t(i) + 0.5 * h;
    
    % Set up and solve the implicit equation using fsolve
    implicit_eq = @(y_next) y_next - y(:, i) - h * f(t_half, 0.5 * (y(:, i) + y_next));
    y(:, i+1) = fsolve(implicit_eq, y(:, i));
end

end