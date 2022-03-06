clear();
clc();
disp("Program to find Inverse Using Lu Decomposition")
n=input("Enter order of Square Matrix : ")
//input matrix A elements
for i=1:n
    for j = 1:n
       A(i,j)=input("Enter Element : ")
    end
end
disp(A,"Matrix A is : ")
//input matrix B elements
for j=1:n
    B(j,1)=input("Enter Element : ")
end
disp(B,"Matrix B is :")
x=[0;0;0]
X1=x(1),X2=x(2),X3=x(3)
t=input("Number of iterations")
for i = 1:t
    x(1)=(B(1)-A(1,2)*x(2)-A(1,3)*x(3))/A(1,1)
    x(2)=(B(2)-A(2,1)*x(1)-A(2,3)*x(3))/A(2,2)
    x(3)=(B(3)-A(3,1)*x(1)-A(3,2)*x(2))/A(3,3)
    disp(string(i))
    disp(x)
end
