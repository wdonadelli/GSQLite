clear;

gcc `pkg-config --cflags gtk+-3.0` -c libuigtk.c `pkg-config --libs gtk+-3.0`;
gcc `pkg-config --cflags gtk+-3.0` -c master.c `pkg-config --libs gtk+-3.0`;
gcc -c gsqlite.c;
gcc `pkg-config --cflags gtk+-3.0` -o gsqlite gsqlite.o master.o libuigtk.o `pkg-config --libs gtk+-3.0`;


./gsqlite;
