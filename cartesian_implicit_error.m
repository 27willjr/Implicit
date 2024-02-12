N = [100, 1000, 10000];
T = [1000];
L = 2;

for j = 1:length(T)
    figure('Position', [100, 100, 800, 1000]);
    for i = 1:length(N)
        subplot(length(N), 1, i);
        [t, y] = implicit_midpoint([0 T(j)], [2 0 0 -1], N(i), @pendulum_cartesian_odes);
        
        expected_y = -sqrt(L.^2 - y(1, :).^2);
        error = abs(y(3, :) - expected_y);

        semilogy(t, error, 'b');
        xlabel('time(s)')
        ylabel('Absolute Error')
        title(['Error for Nonlinear Pendulum Motion with Implicit Midpoint Method using Cartesian Coordinates : Time Length = ', num2str(T(j)), 's', ' N = ', num2str(N(i))], 'FontSize', 7');
        hold on
    end

    hold off




end

%