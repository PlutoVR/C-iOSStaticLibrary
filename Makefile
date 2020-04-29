#CC=g++
#CC=arm-none-eabi-gcc
CC=clang++
CCFLAGS=-Wall

# iOS device ARM
DEVICE_PATH=$(shell xcrun --sdk iphoneos --show-sdk-path)
DEVICE_CCFLAGS+= -stdlib=libc++ -target arm64-apple-ios13.2 -isysroot $(DEVICE_PATH)

all:
	@echo ***********building for iOS SIMULATOR***********
	$(CC) $(CCFLAGS) -c junk.cpp -o junk.o
	$(CC) $(CCFLAGS) -c wrapper.cpp -o wrapper.o
	ar rvc sim_libjunk.a junk.o wrapper.o
	lipo -info sim_libjunk.a

	@echo ***********building for iOS DEVICE***********
	$(CC) $(DEVICE_CCFLAGS) -c junk.cpp -o junk.o
	$(CC) $(DEVICE_CCFLAGS) -c wrapper.cpp -o wrapper.o
	ar rvc device_libjunk.a junk.o wrapper.o
	lipo -info device_libjunk.a

	lipo -create -output combined_libjunk.a device_libjunk.a sim_libjunk.a
	lipo -info combined_libjunk.a