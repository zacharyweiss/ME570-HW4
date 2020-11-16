%function [idxExpand]=graph_getExpandList(graphVector,idxNBest,idxClosed)
%Finds the neighbors of element  @x   idxNBest that are not in  @x   idxClosed
%(line  it:expansion in Algorithm  alg:astar).
function [idxExpand]=graph_getExpandList(graphVector,idxNBest,idxClosed)
    idxExpand = graphVector(idxNBest).neighbors;
%     [~,pos] = intersect(idxExpand,idxClosed);
%     idxExpand(pos) = [];
%     idxExpand(idxExpand==idxNBest) = [];

    idxExpand = setdiff(idxExpand,idxClosed);
    idxExpand = setdiff(idxExpand,idxNBest);
end
%Ensure that the vector  @x   idxBest is not included in the list of neighbors
%(i.e., avoid self-loop edges in the graph).
