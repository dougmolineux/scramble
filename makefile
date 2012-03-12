scramble: scramble.c
	gcc -o scramble scramble.c -I/usr/local/ssl/include -L /usr/local/ssl/lib -lssl -lcrypto -g
