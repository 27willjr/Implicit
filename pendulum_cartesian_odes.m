function dydt = pendulum_cartesian_odes(t, yy)
    g = 9.81;
    x = yy(1);
    xdot = yy(2);
    y = yy(3);
    ydot = yy(4);

    dydt = zeros(4, 1);
    dydt(1) = xdot;
    dydt(2) = -(x * (xdot^2 + ydot^2 - g * y))/(x^2 + y^2);
    dydt(3) = ydot;
    dydt(4) = -g-(y * (xdot^2 + ydot^2 - g*y))/(x^2 + y^2);
end