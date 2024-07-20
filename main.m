% Problem preparation 
problem.nVar = 2;
problem.ub = 50 * ones(1, 2);
problem.lb = -50 * ones(1, 2);
problem.fobj = @ObjectiveFunction;
% PSO parameters 
noP = 4;
maxIter = 500;
visFlag = 1; % set this to 0 if you do not want visualization
RunNo = 30; 
BestSolutions_PSO = zeros(1 , RunNo);
[ GBEST , cgcurve ] = PSO( noP , maxIter, problem , visFlag ) ;
disp('Best solution found')
GBEST.X
disp('Best objective value')
GBEST.O