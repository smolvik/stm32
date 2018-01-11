#!/usr/bin/octave-3.2.4

N=1024;
A=N/2;

per=2*pi;
dphi = per/N;
phase = 0:dphi:(per-dphi);
s = round(A*sin(phase)+N/2);

fdh=fopen('sin_table.h', 'w');
	fprintf(fdh, '#ifndef __SIN_TABLE_H\n#define __SIN_TABLE_H\n');
	fprintf(fdh, '#define OSC_PERIOD %d\n', N);
	fprintf(fdh, 'extern uint16_t sin_tbl[%d];\n', N);
	fprintf(fdh, '#endif\n');
fclose(fdh);

fd=fopen('sin_table.c', 'w');

fprintf(fd,'#include "stm32f10x.h"\n');
fprintf(fd,'uint16_t sin_tbl[%d]={',N);

k=1;
for j=1:N/16
	for i=1:16
		fprintf(fd,'%i, ',s(k));
		k = k+1;
	end
	fprintf(fd,'\n');
end
fprintf(fd,'};');
fclose(fd);

%plot(s);
