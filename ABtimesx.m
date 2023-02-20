function flops = ABtimesx(A,B,x)

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

ABx = zeros(n,1);
for i=1:n
    for j=1:n
        ABx(i) = ABx(i) +AB(i,j)*x(j);
        flops = flops+2;
    end
end