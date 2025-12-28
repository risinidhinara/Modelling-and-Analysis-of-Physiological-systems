[t, y] = ode23(@Riggs_Iodine_a, [0, 10], [81.2, 6821, 682]);
figure;
subplot(1,2,1);
plot(t, y);
legend('Plasma Iodine', 'Gland Iodine', 'Hormonal Iodine', 'Location', 'best');
xlabel('Time (days)');
ylabel('Iodine level');
title('Hypothyroidism due to autoimmune thyroid disease - 10 days');
grid on;

[t, y] = ode23(@Riggs_Iodine_a, [0, 300], [81.2, 6821, 682]);
subplot(1,2,2);
plot(t, y);
legend('Plasma Iodine', 'Gland Iodine', 'Hormonal Iodine', 'Location', 'best');
xlabel('Time (days)');
ylabel('Iodine level');
title('Hypothyroidism due to autoimmune thyroid disease - 300 days');
grid on;