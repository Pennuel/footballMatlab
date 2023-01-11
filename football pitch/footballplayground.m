% the function below will create the football playground
function footballplayground()
% Set the length and width of the rectangle
length = 65;
width = 70;

% Set the distance from the top of the rectangle to the line
distance_from_top = 20;

% Set the width of the line
line_width = 1;

% Set the color of the rectangle
rectangle_color = [0, 0.5, 0]; % Dark green

% Set the distance from the left of line A to the vertical rectangle
distance_from_left = 30;

% Set the length and width of the vertical rectangle
rectangle_length = 5;
rectangle_width = 10;

% Create a figure and hold on to it
figure;
hold on;

% Draw the rectangle with a dark green color
rectangle('Position', [0, 0, width, length], 'EdgeColor', 'white', 'FaceColor', rectangle_color);

% Draw the horizontal line with a width of 3 15 cm below the vertical rectangle
line([0, width], [length - distance_from_top - rectangle_length + 15, length - distance_from_top - rectangle_length + 15], 'Color', 'white', 'LineWidth', line_width);



% Add a label to the horizontal line
text(width/2, length - distance_from_top - rectangle_length + 15, 'Line A', 'HorizontalAlignment', 'center', 'Color', 'white');

% Draw the vertical rectangle on top of line A, facing the top
rectangle('Position', [distance_from_left, length - distance_from_top - rectangle_length + 15, rectangle_width, rectangle_length], 'EdgeColor', 'white', 'FaceColor', 'white');

% Draw the vertical rectangle on top of line A, facing the top
rectangle('Position', [distance_from_left, length - distance_from_top - rectangle_length + 15, rectangle_width, rectangle_length], 'EdgeColor', 'white', 'FaceColor', [0, 0.5, 0]);


% Set the distance from the left of the new rectangle to the left edge of the figure
distance_from_left_new = 20;

% Set the length and width of the new rectangle
new_rectangle_length = 20;
new_rectangle_width = 30;

% Draw the new rectangle on the bottom of line A, facing down
rectangle('Position', [distance_from_left_new, length - distance_from_top - rectangle_length + 15 - new_rectangle_length, new_rectangle_width, new_rectangle_length], 'EdgeColor', 'white', 'FaceColor', [0, 0.5, 0]);

% Set the distance from the left of the new rectangle to the left edge of the figure
distance_from_left_new = 25;

% Set the length and width of the new rectangle
new_rectangle_length = 10;
new_rectangle_width = 20;

% Draw the new rectangle on the bottom of line A, facing down
rectangle('Position', [distance_from_left_new, length - distance_from_top - rectangle_length + 15 - new_rectangle_length, new_rectangle_width, new_rectangle_length], 'EdgeColor', 'white', 'FaceColor', [0, 0.5, 0]);

% Set the width of the line
line_width = 1;

% Draw the line 5 cm from the top of the outer rectangle
line([0, width], [5, 5], 'Color', 'white', 'LineWidth', line_width);

% Set the radius of the circle
radius = 0.3;

% Calculate the center of the line
center_x = 35;
center_y = 4 + 1; % Decrease the center_y value by 1 cm

% Set the number of points to use for drawing the circle
num_points = 100;

% Calculate the points of the circle
theta = linspace(0, 2 * pi, num_points);
x = radius * cos(theta) + center_x;
y = radius * sin(theta) + center_y;

% Draw the circle
plot(x, y, 'Color', 'white');

% Set the radius of the circle
radius = 10;

% Calculate the center of the line
center_x = 35;
center_y = 4 + 1; % Decrease the center_y value by 0.25 cm

% Set the number of points to use for drawing the circle
num_points = 100;

% Calculate the points of the circle
theta = linspace(0, 2 * pi, num_points);
x = radius * cos(theta) + center_x;
y = radius * sin(theta) + center_y;

% Draw the circle
plot(x, y, 'Color', 'white');

% Release the hold on the figure
hold off;
end