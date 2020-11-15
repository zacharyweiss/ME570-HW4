%function [hVal]=graph_heuristic(graphVector,idxX,idxGoal)
%Computes the heuristic  @x   h given by the Euclidean distance between the nodes
%with indexes  @x   idxX and  @x   idxGoal.
function [hVal]=graph_heuristic(graphVector,idxX,idxGoal)
    %hVal = norm([graphVector(idxX).x graphVector(idxGoal).x]);
    hVal = euclideanDistMatrix(graphVector(idxX).x,graphVector(idxGoal).x);
end