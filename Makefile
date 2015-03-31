debug: build.xml clean 
	ant debug

release: build.xml clean 
	ant release

build.xml: 
	android update project -s -p . --target android-10

install: 
	adb install -r bin/ChartDemo-debug.apk

clean: 
	rm -rf bin 
	rm -rf gen 
	rm -rf libs

.PHONY: debug install clean


