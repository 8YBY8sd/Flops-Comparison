function flops = AtimesBx(A,B,x)

n = size(A,1);
Bx = zeros(n,n);
flops = 0;
for i=1:n
    for j=1:n
        Bx(i) = Bx(i) + B(i,j)*x(j);
        flops = flops+2;
    end
end

ABx = zeros(n,1);
for i=1:n
    for j=1:n
        ABx(i) = ABx(i) +A(i,j)*Bx(j);
        flops = flops+2;
    end
end