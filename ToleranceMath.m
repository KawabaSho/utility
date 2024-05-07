classdef ToleranceMath
    properties
        Value
        eps
    end

    methods
        function obj = ToleranceMath(Value,Tolerance)
            % 適当な演算をします
            % a == b eq(a,b)
            arguments
                Value 
                Tolerance (1,1) {mustBeNonnegative} = 1e-6
            end
            obj.Value = Value;
            obj.eps   = Tolerance;
        end
        function tf = eq(obj1,obj2)
            if abs(obj1.Value - obj2.Value)...
                    <= max([obj1.eps, obj2.eps])
                tf = true;
            else
                tf = false;
            end
        end
    end
end
