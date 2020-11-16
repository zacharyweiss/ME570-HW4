%function [xPath]=graph_search_startGoal(graphVector,xStart,xGoal)
%This function performs the following operations: enumerate  the two indexes  @x 
% idxStart,  @x   idxGoal in  @x   graphVector that are closest to  @x   xStart
%and  @x   xGoal (using graph_nearestNeighbors twice, see Question 
%q:graph-nearest).  graph_search to find a feasible sequence of points  @x  
%xPath from  @x   idxStart to  @x   idxGoal.   @x   xStart and  @x   xGoal,
%respectively, to the beginning and the end of the array  @x   xPath. enumerate
function [xPath]=graph_search_startGoal(graphVector,xStart,xGoal)
    % approximate start and goal locations on generated graph
    idxStart = graph_nearestNeighbors(graphVector,xStart,1);
    idxGoal = graph_nearestNeighbors(graphVector,xGoal,1);
    
    % A* path through graph between found start / goal nodes
    [xPath,graphVector] = graph_search(graphVector,idxStart,idxGoal);
    
    %xPath = [graphVector(idxStart).x xPath graphVector(idxGoal).x]
        
    % for plotting, uncomment
%     graph_plot(graphVector)
%     hold on
%     plot(xPath(1,:),xPath(2,:),'r')
end