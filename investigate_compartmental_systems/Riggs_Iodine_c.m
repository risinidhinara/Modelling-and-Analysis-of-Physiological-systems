function dydt = Riggs_Iodine_c(t, y)
    A = [-2.52, 0, 0.08; 0.84, -0.08, 0; 0, 0.08, -0.1];
    B = [150; 0; 0];
    dydt = A * y + B;
end
