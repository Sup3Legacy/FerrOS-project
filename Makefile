all: build run

setup:
	rustup override set nightly-2021-05-11
	rustup update
	cargo update
	cargo install bootimage
	rustup component add llvm-tools-preview
	rustup component add rust-src

build:
	./build_script.sh

clean:
	./clean_script.sh

run:
	./run_script.sh


update:
	git submodule update --recursive --remote