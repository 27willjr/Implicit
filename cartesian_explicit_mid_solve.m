N = [100, 1000, 10000];
T = [10, 25, 50, 100];
L = 2;
w = 2*pi;


for j = 1:length(T)
    figure('Position', [100, 100, 800, 1000]);
    hold on;
    for i = 1:length(N)
        subplot(length(N), 1, i);
        [t, y] = Explicit_midpoint([0 T(j)], [2, 0, 0, -1], N(i), @pendulum_cartesian_odes);
        plot(y(:, 1), y(:, 3), 'b');
        xlabel('x')
        ylabel('y')
        hold on
        title(['Cartesian Nonlinear Pendulum Motion with Explicit Midpoint Method : Time Length = ', num2str(T(j)), 's,', ' N = ',num2str(N(i))], 'FontSize', 7');
        hold off;
    end


%legend('N=100','N=250', 'N=500', 'N=1000', 'N=1000');

end

%