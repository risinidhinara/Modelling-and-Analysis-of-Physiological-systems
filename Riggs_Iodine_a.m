function dydt = Riggs_Iodine_a(t, y)
    A = [-2.52, 0, 0.08; 0.84, -0.005, 0; 0, 0.005, -0.1];
    B = [150; 0; 0];
    dydt = A * y + B;
end

