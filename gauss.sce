clear();
//program for taking input
n=input("Enter length of Matrix B ");
//A=zeros(n,n) //Matrix A of zeros
//B=zeros(n,1) //Matrix B of zeros
//Input for matrix A 
for i = 1:n
    for j = 1:n
        A(i,j)=input("Enter Matrix A element("+string(i)+"*"+string(j)+") ")
    end
end
disp(A) //Show Matrix A
//Input for matrix B
for i = 1:n
    B(i)=input("Enter Matrix B element("+string(i)+") ")
end
disp(B)// Show Matrix B

//forming augmented matrix in A itself
A=[A B];
disp("Augmented Matrix A");
disp(A)

//Triangularization
for j = 1:n-1
    for i = j+1:n
        f=A(i,j)/A(j,j);
        A(i,:)=A(i,:)-(f*A(j,:));
    disp("Matrix A after operation")    
    disp(A)
    end
end

//using substitution and solving to calculate values
 
x=[0,0,0];
disp("Solutions are:");
for i=n:-1:1
    s=sum(A(i,1:n).*x);
    x(i)=(A(i,n+1)-s)/A(i,i);
    disp("x("+string(i)+")= "+string(x(i)));
end

//zero error not resolved
