obj-m	:= nfhook.o
KSRC	:=/lib/modules/`uname -r`/build
PWD	:=`pwd`
#CFLAGS-nfhook.o	:= -DPRINTK_DEBUG
ccflags-y	:= -DPRINTK_DEBUG
all:
	$(MAKE)  -C $(KSRC) M=$(PWD) modules
	

clean:
	$(MAKE) -C $(KSRC) M=$(PWD) clean
	
