function [t,y]=Euler(f,tspan,y0,N)

t0=tspan(1);  
tend=tspan(2);
t=linspace(t0,tend,N+1)';
y=zeros(N+1, length(y0));
h=(tend-t0)/N;

y(1, :)=y0;
for k=1:N
    y(k+1, :)=y(k, :)+h*f(t(k),y(k, :))';
end

end