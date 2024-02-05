N = [10000];
T = [5, 10, 15,25, 50, 100];
L = 2;
w = 8*pi;
for j = 1:length(T)
figure;
    for i = 1:length(N)
        [t, y] = implicit_midpoint([0 T(j)], [0, -L*w^2, L*w, 0], N(i), @pendulum_cartesian_odes);
        plot(y(:, 1), y(:, 3), 'b');
        xlabel('x')
        ylabel('y')
        hold on
    end

hold off

title(['Nonlinear Pendulum Motion with Implicit Midpoint Method using Cartesian Coordinates : Time Length = ', num2str(T(j)), 's'], 'FontSize', 7');
end

%