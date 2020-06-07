function y = trianglewave()

%% in

%% process
n = 0: 1: 1023;
y1 = round(n / 2) + 512;
n = 1024: 1: 3071;
y2 = 1024 - round(n / 2) + 512;
n = 3072: 1: 4095;
y3 = round(n / 2) - 2048 + 512;
y = [y1 y2 y3];

%% out

