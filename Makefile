#CC=g++
#CC=arm-none-eabi-gcc
CC=clang++
CCFLAGS=-Wall
CCFLAGS+= -stdlib=libc++ -target arm64-apple-ios13.2 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS13.2.sdk

all:
	$(CC) $(CCFLAGS) -c junk.cpp -o junk.o
	$(CC) $(CCFLAGS) -c wrapper.cpp -o wrapper.o
	ar rvc libjunk.a junk.o wrapper.o
	lipo -info libjunk.a