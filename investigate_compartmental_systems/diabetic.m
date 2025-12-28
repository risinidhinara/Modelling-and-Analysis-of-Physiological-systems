function dydt = diabetic(t, y)
    A = 1;  % Magnitude of the bolus input
    dydt = [-0.8, 0.01; -5, -2] * y + [0; 1] * A;
end
