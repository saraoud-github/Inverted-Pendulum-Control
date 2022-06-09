function draw_cart(s)
    coder.extrinsic('pause')

    if ~ishandle(1) %Initialize Figure
        figure(1);
    end

    clf

    PlotS2A(s);
    pause(0.01)
end

function PlotS2A(s)
    x = s(2);
    th = s(1);

    r = 0.4;                        % Wheel radius
    l = 2;                          % Arm length
    c_w = 3;                        % Cart width
    c_h = 0.5;                      % Cart height
    m_x = x - l*sin(th);            % Mass x
    m_y = l*cos(th) + r + c_h/2;    % Mass y

    hold on
    % Cart
    rectangle('Position',[x - c_w/2, r - c_h/2, c_w, c_h],'FaceColor',[0.4 0.5 0.7])
    % Arm and mass
    line([x;m_x],[r + c_h/2;m_y],  'LineWidth',10,   'Color',[1 0.4 0.1]);
    % Ground
    rectangle('Position',[-10,-0.2-0.1,20,0.1],'FaceColor',[0.6 0.6 0.7])
    
    axis([-5 5 0 10])
    xlabel('X')
    ylabel('Y')
end