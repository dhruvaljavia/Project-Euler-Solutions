clc; clear; close all;

core_nums = [3 3 5 4 4 3 5 5 4];
teen_nums = [6 6 8 8 7 7 9 8 8];
ten_nums = [3 6 6 5 5 5 7 6 6 7];
thousand = 8;

sum1 = sum(core_nums);
sum2 = 3 + sum(teen_nums);
sum3 = 0;
for i = 2:9
    for j = 1:10
        sum3 = sum3 + ten_nums(i);
        if j ~= 1
            sum3 = sum3 + core_nums(j-1);
        end
    end
end

sum4 = 100*sum(core_nums + ten_nums(10) + 3) - 9*3 + 9*(sum1 + sum2 + sum3);

final_sum = sum1 + sum2 + sum3 + sum4 + 3 + thousand;

