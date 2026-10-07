clc; clear; close all

mDays_noLeap = [31 28 31 30 31 30 31 31 30 31 30 31];
mDays_Leap = [31 29 31 30 31 30 31 31 30 31 30 31];

count = 0;
days = 0;

for y = 1901:2000
    if (mod(y,400) == 0) || (mod(y,100) ~= 0 && mod(y,4) == 0)
        mDays = mDays_Leap;
    else
        mDays = mDays_noLeap;
    end

    for m = mDays
        if mod(days+1,7) == 1
            count = count + 1;
        end
        days = days + m;
    end
end