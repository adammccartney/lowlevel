# CUNIT=-L/home/ff/cs61c/cunit/install/lib -I/home/ff/cs61c/cunit/install/include -lcunit
CUNIT=-lcunit
CFLAGS=-Wall -Wextra -g3 -Wno-unused-variable -Wno-unused-function -fsanitize=undefined


beargit: main.c beargit.c util.c beargit.h util.h
	gcc $(CFLAGS) -std=c99 -Wno-deprecated-declarations main.c beargit.c util.c -lcrypto -lssl -o beargit

beargit-unittest: main.c beargit.c cunittests.c util.c beargit.h util.h cunittests.h
	gcc $(CFLAGS) -Wno-deprecated-declarations -DTESTING -std=c99 main.c beargit.c cunittests.c util.c -lcrypto -lssl -o beargit-unittest $(CUNIT) -Wno-error=deprecated-declarations

clean:
	rm -rf beargit autotest test beargit-unittest

check: beargit
	python2.7 tester.pyc beargit.c
