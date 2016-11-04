m = 9; % ID 1121089, so using 9 as m
q = -1; % maximising or minimising, -1 for maximise, 1 for minimise

% matrix holding constraints in the form a1x + a2y
A = [2 -1 % 2x - y
    1 2 % x + 2y
    3 2 % 3x + 2y
    0 1 % y
    -1 0 % -x
    0 -1]; % -y

b = [(m+6) ((m/2)+8) (m+10) 3 0 0]; % vector holding right side linear inequality bounds

f = [1 1]*q; % vector holding objective function in the form c1x + c2y

% set algorithm to simplex, check if objective function is valid, large scale scan
options = optimset('LargeScale','off','Simplex','on');

% set algorithm to simplex, check if objective function is valid, large scale scan
[sol,fval,exitflag,output] = linprog(f,A,b,[],[],[],[],[],options); % execute algorithm using linprog function and store solution in 'sol'

disp('Solution for x and y respectively:'); % display solutions
disp(sol);
disp('Number of Iterations: ') % display cycles
disp(output.iterations);
