function dydt = insuline_infused_patient(t, y)
    A = 1;  % Magnitude of the bolus input
    dydt = [-0.8, 0.2; -5, -2] * y + [0.1; 1];
end