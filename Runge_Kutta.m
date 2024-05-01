function [xx, tt] = Runge_Kutta(func,x0,Simu)
% You need Simu.t_in, Sim.dt, Simu.Config.NN, Simu.Actor.Number
    dt = Simu.dt;
    NN = Simu.Config.NN;
    xx = zeros(Simu.Actor.Number, NN + 1);
    tt = zeros(1, NN + 1);
    xx(:,1) = x0;

    tt(:,1) = Simu.t_in;
    for n = 1 : NN
        x0 = xx(:, n);
        k1 = func(x0, Simu, n);
        k2 = func(x0 + 0.5*k1, Simu, n);
        k3 = func(x0 + 0.5*k2, Simu, n);
        k4 = func(x0 + k3, Simu, n);
        xx(:, n + 1) = x0 + (k1+2*(k2+k3)+k4)/6;
        tt(:, n + 1) = tt(:, n) + dt;
    end
end