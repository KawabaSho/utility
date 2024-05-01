classdef FigureManager < handle
    properties
        FigureHandle
        PlotList
        ListNum
    end

    methods
        function obj = FigureManager(varargin)
            obj.FigureHandle = figure(varargin{:});
            obj.PlotList = {};
            obj.ListNum = 0;
        end

        function addList(obj, Handle)
            % input class : Plot3D, Plot2D
            obj.ListNum = obj.ListNum + 1;
            obj.PlotList{obj.ListNum} = Handle;
            
        end
        function setData(obj, Num, Data)
            obj.PlotList{Num}.set(Data);
        end
        function addData(obj, Num, Data)
            % s = obj.PlotList{1,Num}.plot3handle
            obj.PlotList{Num}.add(Data);
        end
        function setCData(obj, Num, Data)
            obj.PlotList{Num}.setCData(Data);
        end

    end
    methods (Static)
        function setLabel(Xlabel, Ylabel, Zlabel)
            xlabel(Xlabel)
            ylabel(Ylabel)
            if nargin == 3
                zlabel(Zlabel)
            end
            fontsize("scale",1.25)
        end
        function setLegend(varargin)
            % legend(varargin{:},FontSize=12)
            legend(varargin{:})
        end
        function setGraphic
            grid on
            axis equal
            xlim([-10,10])
            ylim([-10,10])
            zlim([-10,10])
        end
    end
end
















