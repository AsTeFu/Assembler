.PHONY: all
all: clean mkdir_build build run

.PHONY: clean
clean:
	rm -rf build

.PHONY: mkdir_build
mkdir_build:
	[ -d ./build ] | mkdir -p build;

.PHONY: build
build:
	gcc -no-pie $(file) -o build/$(notdir $(basename $(file)))

.PHONY: run
run:
	./build/$(notdir $(basename $(file)))


.PHONY: build_all
build_all:
	bash build-labs.sh