classdef person
    % this class creates the people who will play the game
    %   the person is made up of the:
    % head which is a circle
    %body is a rounded rectangle

    properties 
        x_position
        y_position
        color_body
        color_head
    end

    methods
        %function initialises the player
        function person = person(start_x,start_y,color_rectangle)
            %person constructor
            %   this create initiates the person class
            % initialize the start positions of the persons
            person.x_position = start_x;
            person.y_position = start_y;
            person.color_body = color_rectangle;
            % it will randomly choose the hair of the player
            %the hair color
            black = [0 0.05 0.05];
            brown = [0.2 0 0];
            orange      = [1 0.8 0];
            r1 = randi(3)   ;
            switch r1
                case 1
                    headcolor = brown;
                case 2
                    headcolor = orange;
                case 3
                    headcolor = black;
            end
            person.color_head = headcolor;
            display_person(person,start_x,start_y)
        end
        
        % the function can be used to make the player appear in a different
        % location
        function display_person(person,x,y)
            %position of the body relative to the head that the position of
            %the player.
            x_position_rectangle = x-2.2;
            y_position_rectangle = y-2.2;
            
            %Create the body of the person.
            % details the body is first created first so that it overlays with the body
                % the height and shape of the person's body
                height = 2;
                width = 4.5;
                %create a rectangle that is rounded for show as the body.
                rectangle(Position=[x_position_rectangle y_position_rectangle width height],FaceColor="b",Curvature=1)

            %Create the head with is a circle
                %Assign the circle coordinates and radius
                y_circle = y;
                x_circle = x;
                head_radius=1;
                % Create the head
                circle(x_circle,y_circle,head_radius,person.color_head);
        end
    end
end