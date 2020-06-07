function y = coswave()

%% in

%% process
t = 2 * pi / 4096;
t = [0:t:2 * pi];
y = round(511 * cos(t) + 512);

%% out

