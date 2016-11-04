q = -1; % maximising or minimising, -1 for maximise, 1 for minimise

% matrix holding constraints in the form a1x + a2y + a3z
A = [-1 0 0 % -x ( matlab uses '<=' therefore multiplied original constraint by -1 to reverse inequality sign)
    0 -1 0 % -y 
    0 0 -1 % -z 
    1 2 3 % x + 2y + 3z
    -2 1 4]; % -2x + y + 4z (multiplied original constraint by -1 to reverse inequality sign)

b = [0 0 0 360 0]; % vector holding right side linear inequality bounds

f = [350 450 550]*q; % vector holding objective function in the form c1x + c2y + c3z

% set algorithm to simplex, check if objective function is valid, large scale scan
options = optimset('LargeScale','off','Simplex','on');

% execute algorithm using linprog function
[sol,fval,exitflag,output] = linprog(f,A,b,[],[],[],[],[],options);

disp('Solution for x, y and z respectively:'); % display solutions
disp(sol);
disp('Number of Iterations: ') % display cycles
disp(output.iterations);


