function dydt = Riggs_Iodine_d_Goitre(t, y)
    A = [-2.52, 0, 0.08; 0.84, -0.01, 0; 0, 0.01, -0.1];
    B = [30; 0; 0];
    dydt = A * y + B;
end

