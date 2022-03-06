clear();
clc();
disp("Program To Check For Convergence and Divergence Using D-ALEMBERT TEST")
disp("The Series is : 1/2^n")
disp("Elements of the series are")
for n = 1 : 10
    Un=((factorial(n)^2)*(3^n))/factorial(2*n+1);
    UN=((factorial(n+1)^2)*(3^(n+1)))/factorial(2*(n+1)+1)
    disp(Un)
end
ratio=UN/Un
disp(ratio,"Un+1/Un = ")
if UN>Un then
    disp("Series is Divergent")
elseif UN<Un
    disp("Series is Covergent")
else 
    disp("Invalid")
end
