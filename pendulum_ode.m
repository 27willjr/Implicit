function dydt = pendulum_ode(t,y)
    g = 9.81;
    L = 2.0;
    dydt = [y(2) ; -(g/L) * sin(y(1))];
end