% Define the system of ODEs
f = @(t, u) [u(2); -u(1)];

% Time interval and initial conditions
tspan = [0, 10];
initial_conditions = [1; 0];  % Initial values for x and y

% Number of time steps
N = 100;

% Time step size
h = (tspan(2) - tspan(1)) / N;

% Initialize arrays to store solutions
t_values = linspace(tspan(1), tspan(2), N+1);
u_values = zeros(2, N+1);
u_values(:, 1) = initial_conditions;

% Implicit Midpoint Method with fsolve
for i = 1:N
    t_half = t_values(i) + 0.5 * h;
    
    % Set up and solve the implicit equation using fsolve
    implicit_eq = @(u_next) u_next - u_values(:, i) - h * f(t_half, 0.5 * (u_values(:, i) + u_next));
    u_values(:, i+1) = fsolve(implicit_eq, u_values(:, i));
end

% Plot in Phase Space
figure;
plot(u_values(1, :), u_values(2, :), 'LineWidth', 1.5);
xlabel('x(t)');
ylabel('y(t)');
title('Phase Space Plot (Implicit Midpoint Method)');
grid on;
