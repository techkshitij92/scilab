clear();
clc();
disp("Program to find Inverse Using Lu Decomposition")
n=input("Enter order of Square Matrix : ")
//input matrix A elements
for i=1:n
    for j = 1:n
       A(i,j)=input("Enter Element :  ");
    end
end
disp("Matrix A is : ")
disp(A)
//input matrix B elements
for j=1:3
    B(j,1)=input("Enter Element : ")
end
disp("Matrix B is : ")
disp(B);
// Finding L and U using lu function
[L,U]= lu(A)
disp(L,"Lower Triangular Matrix")
disp(U,"Upper Triangular Matrix")
//Generating inverse of A Directly
C=inv(A)
disp(C,"Inverse of A Found Directly")
//Generating inverse Of A using L and U
G=inv(U)*inv(L)
disp(G,"Inverse of A Found Using LU Method")
if C==G then
   disp("Both are Equal")
else
   disp("Both are Not Equal")
end
disp("LZ=B")
Z=inv(L)*B
disp("Matrix Z")
disp(Z)
disp("UX=Z")
X=inv(U)*Z
disp("Matrix X")
disp(X)
