all: mk2tbl test

mk2tbl: mk2tbl.c
	gcc -Wall -o mk2tbl mk2tbl.c

test: test.c crc.c
	gcc -Wall -o test test.c crc.c

clean:
	rm test mk2tbl
