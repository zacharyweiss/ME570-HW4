start = [0.76;0.12];
%goal = [0.76;6.00];
goal = [2.72;5.45];
fps = 15;

%twolink_freeSpaceGraph();

load('twolink_freeSpace_data.mat','vectorGraph')
load('twolink_testData.mat','obstaclePoints')

figure(1)
path = graph_search_startGoal(vectorGraph,start,goal);

figure(2)
hold on
plot(obstaclePoints(1,:),obstaclePoints(2,:),'*')
hold on
twolink_plotAnimate(path,fps)