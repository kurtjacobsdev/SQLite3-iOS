SYSROOT = $(shell xcrun --sdk iphoneos --show-sdk-path)

sqlite:
	clang -arch arm64 -fobjc-abi-version=2 -miphoneos-version-min=8.0 -isysroot $(SYSROOT) -o sqlite3-64-bit sqlite3.c shell.c
	clang -arch armv7s -fobjc-abi-version=2 -miphoneos-version-min=8.0 -isysroot $(SYSROOT) -o sqlite3-32-bit sqlite3.c shell.c
	
clean:
	rm -rf sqlite3-64-bit
	rm -rf sqlite3-32-bit