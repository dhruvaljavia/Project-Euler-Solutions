clc; clear; close all

f = factorial(sym(100));
str_f = char(f);
digit_sum = sum(str_f - '0');
disp(digit_sum);