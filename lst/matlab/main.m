tic;
clc;
clear;
close;

%% in
width = 10;
depth = 2 ^ 12;
address = 0: (depth - 1);
path = [pwd '\' 'mif'];
filenames = ['sin', 'cos', 'square', 'triangle', 'sawtooth'];

%% process
for index in length(filenames)
	filename = filenames[index];
	filename = [filename 'wave.mif'];
	file = [path '\function\' filename];
	fid = fopen(file, 'w');
	strwidth = strcat('WIDTH=', num2str(width));
	strdepth = strcat('DEPTH=', num2str(depth));
	content = strwidth;
	content = [content ';\n'];
	content = [content strdepth];
	content = [content ';\n'];
	content = [content 'ADDRESS_RADIX=UNS;\n'];
	content = [content 'DATA_RADIX=UNS;\n'];
	content = [content 'CONTENT BEGIN\n'];
	fprintf(fid, content);
	value = eval([filename 'wave()']);
	fprintf(fid, '%0.0f:%0.0f;\n', [address; value]);
	fprintf(fid, 'END;\n');
	fclose(fid);
end

%% out
fprintf('Running time is %f second.\n', toc);

