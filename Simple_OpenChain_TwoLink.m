L1 = 0.3;
L2 = 0.2;


q1_list = deg2rad([20,30,50,100,130]);
q2_list = linspace(-pi, pi, 61);

figure; hold on;
for i = 1:length(q1_list)
    q1 = q1_list(i);
% 第一个关节的位置
    xA = L1 * cos(q1);
    yA = L1 * sin(q1);

    xB = xA + L2 * cos(q1 + q2_list);
    yB = yA + L2 * sin(q1 + q2_list);

% 按 O → A → B 的顺序连接三个点
    plot([xA*ones(size(xB)); xB], [yA*ones(size(yB)); yB], '-');
    plot([0, xA], [0, yA], 'k-', 'LineWidth', 2);

end
hold off;
grid on;
xlabel('x / m');
ylabel('y / m');
axis equal;
xlim([-0.6, 0.6]);
ylim([-0.6, 0.6]);