%[t,y] = Explicit_midpoint([0 100], [pi/4, 0], 500, @pendulum_ode);
[t, y] = implicit_midpoint( [0 150], [pi/4, 0], 1000, @pendulum_ode);


plot(t, y(:, 1))