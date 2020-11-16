%function sphereworld_search(NCells)
%enumerate  the variables  @x   xStart,  @x   xGoal from      Marker
%file_provided [sphereworld.mat]  @x   sphereworld.mat  each of the three values
%for  @x   NCells: enumerate  the function sphereworld_freeSpace_graph for the
%given value of  @x   NCell.  each goal in  @x   xGoal: enumerate 
%graph_search_startGoal from every starting location in  @x   xStart to that
%goal.  the world using sphereworld_plot, together with the resulting
%trajectories. enumerate enumerate enumerate
function sphereworld_search(NCells)
    load('sphereworld.mat','xStart','xGoal');
    graphVector = sphereworld_freeSpace_graph(NCells);

    for i=1:size(xGoal,2)
        figure(i)
        clf(i)
        graph_plot(graphVector)
        hold on
        for j=1:size(xStart,2)
            xPath = graph_search_startGoal(graphVector,xStart(:,j),xGoal(:,i));
            %plot(xGoal(1,i),xGoal(2,i),'r')
            %plot(xStart(1,j),xStart(2,j),'r')
            plot(xPath(1,:),xPath(2,:),'r')
            hold on
        end
    end
    hold off
end
%In total, this function should produce six different images (three choices for 
%@x   NCell times two goals).
