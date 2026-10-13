clc; clear; close all

function s = sumDivisor(n)
    s = 0;
    for i = 1:n-1
        if mod(n,i) == 0
            s = s+i;
        end
    end
end

function isAmicable = amicableCheck(n,M)
    n1 = sumDivisor(n);
    n2 = sumDivisor(n1);

    if n2 == n && n1 ~= n2 && n1 < M && n2 < M
        isAmicable = true;
    else
        isAmicable = false;
    end
end

S = 0;
M = 10000;
for i = 1:M-1
    if amicableCheck(i,M)
        S = S + i;
    end
end