graphVector = sphereworld_freeSpace_graph(200);
xPath = [];
graph_plot(graphVector)
hold on
for i=1:size(xGoal,2)
    for j=1:size(xStart,2)
        xPath = graph_search_startGoal(graphVector,xStart(:,j),xGoal(:,i));
        %plot(xGoal(1,i),xGoal(2,i),'r')
        %plot(xStart(1,j),xStart(2,j),'r')
        plot(xPath(1,:),xPath(2,:),'r')
        hold on
    end
end
hold off
