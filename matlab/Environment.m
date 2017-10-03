classdef Environment < handle
    
    properties
        cars
    end
    
    methods
        
        function this = Environment()
            this.cars = repmat(Car,1,0);
        end
        
        function [x] = get_next_station_following(this, car_position)
        	x = inf;
        end
        
        % Added function env = add_car(env,car)
        function env = add_car(env, car)
            env.cars = [env.cars, car];
        end
    end

end

