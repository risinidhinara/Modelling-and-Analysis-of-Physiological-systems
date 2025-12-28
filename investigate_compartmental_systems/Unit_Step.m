function dydt = Unit_Step(t, y)
    A = 1;  % Step input magnitude
    dydt = [-0.8, 0.2; -5, -2] * y + [0; 1] * A;
end