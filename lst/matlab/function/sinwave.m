function y = sinwave()

%% in

%% process
t = 2 * pi / 4096;
t = [0:t:2 * pi];
y = round(511 * sin(t) + 512);

%% out

