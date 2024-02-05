N = [100, 250, 500, 1000];
T = [5, 10, 25, 50];
L = 2;

for j= 1:length(T)
    figure;
    for i = 1:length(N)
        [t, y] = Euler(@pendulum_cartesian_odes, [0 T(j)], [pi/4, 0, pi/4, 0], N(i));
        plot(y(:, 1), y(:, 3));
        xlabel('x')
        ylabel('y')
        
        hold on
        
    end
    
    hold off
    legend('N=250', 'N=500', 'N=1000');
    title(['Nonlinear Pendulum Motion with Euler Method : Time Length = ', num2str(T(j)), 's']);
    
end
