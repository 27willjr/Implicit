
N = [100, 250, 500, 1000];
T = [5, 10, 25, 100, 150, 200];
for j = 1:length(T)
figure;
    for i = 1:length(N)
        [t, y] = implicit_midpoint([0 T(j)], [pi/4, 0], N(i), @pendulum_ode);
        plot(t, y(:, 1))
        xlabel('t(s)')
        ylabel('\theta (rads)')
        hold on
    end

hold off
legend('N=100','N=250', 'N=500', 'N=1000');
title(['Nonlinear Pendulum Motion with Implicit Midpoint Method : Time Length = ', num2str(T(j)), 's']);
end

for j= 1:length(T)
    figure;
    for i = 1:length(N)
        subplot(length(N), 1, i);
        [t, y] = implicit_midpoint([0 T(j)], [pi/4, 0], N(i), @pendulum_ode);
        plot(y(:, 1), y(:, 2), 'b');  % Plot pendulum motion
        xlabel('x');
        ylabel('y');
        hold on
        title(['Pendulum Motion for Implicit Midpoint Method (N = ', num2str(N(i)), ', Time Length = ', num2str(T(j)), ')']);
       
    end
hold off

end