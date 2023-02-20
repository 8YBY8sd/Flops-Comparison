function flops = AB_thenx(A,B,x)

n = size(A,1);

AB = zeros(n,n);
flops = 0;
for i=1:n
    for j=1:n
        for k=1:n
            AB(i,j) = AB(i,j) + A(i,k)*B(k,j);
            flops = flops+2;
        end
    end
end

y = zeros(n,1);
for i=1:n
    for j=1:n
        y(i) = y(i) +AB(i,j)*x(j);
        flops = flops+2;
    end
end
end