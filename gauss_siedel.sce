clear();
clc();
disp("Program For Gauss Seidel Iteration")
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
//Initialization
flag=0 //used as a signal to indicate if diagonal element is zero
for i = 1:n
    if A(i,i)==0 then
        X(i)=0
        flag=1 // if diagonal element is zero flag becomes 1
    else
    X(i)=B(i,1)/A(i,i)
    end
end
K=input("Enter Number Of Iterations")
//three for loops used to solve for any n X n matrix
if flag==0 then //if flag is zero means diagonal elements are not zero
    for k=1:K
      for i = 1:n
        sum=0
        for j = 1:n
          if(i<>j) then
            sum=sum+(A(i,j)*X(j))
          end
        end
      X(i)=(B(i)-sum)/A(i,i)
      end
      disp(X)
    end
else 
    disp("Error, A Diagonal Element is Zero")
end
