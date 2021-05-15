
all:
	./build_script.sh

clean:
	./clean_script.sh

update:
	git submodule update --recursive --remote
