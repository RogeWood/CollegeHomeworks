all: myBusybox cp ls cat chown

myBusybox: myBusybox.c
	gcc myBusybox.c -o myBusybox
cp:
	ln -s ./myBusybox cp
ls:
	ln -s ./myBusybox ls
cat:
	ln -s ./myBusybox cat
chown:
	ln -s ./myBusybox chown
clean:
	rm myBusybox cp ls cat chown