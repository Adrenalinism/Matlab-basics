


k = 1;
x = 0:0.01:2; % vector with 0.01 resolution, ending at 2 since period of function is 2
y = 0;
a = 2;

while k <=10000 % large sum of iterations for good result

y = y + sin(pi.*x.*(k^a))./((k^a).*pi); % get y value for every x and k, then add to current value
k = k + 1; % increment k
end
plot(x,y) % plot graph

