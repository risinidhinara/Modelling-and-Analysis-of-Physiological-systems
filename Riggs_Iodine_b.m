function dydt = Riggs_Iodine_b(t, y)
    A = [-2.52, 0, 0.08; 0.84, -0.01, 0; 0, 0.01, -0.1];
    B = [50; 0; 0];
    dydt = A * y + B;
end
