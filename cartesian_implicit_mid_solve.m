N = [100, 250, 500, 1000];
T = [5, 10, 25, 100, 150, 200];
for j = 1:length(T)
figure;
    for i = 1:length(N)
        [t, y] = implicit_midpoint([0 T(j)], [pi/4, 0, pi/4, 0], N(i), @pendulum_cartesian_odes);
        plot(y(:, 1), y(:, 3), 'b');
        xlabel('x')
        ylabel('y')
        hold on
    end

hold off
legend('N=100','N=250', 'N=500', 'N=1000');
title(['Nonlinear Pendulum Motion with Implicit Midpoint Method : Time Length = ', num2str(T(j)), 's']);
end

%