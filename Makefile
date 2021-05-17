all: kernel

setup:
	rustup override set nightly-2021-05-11
	rustup update
	cargo update
	cargo install bootimage
	rustup component add llvm-tools-preview
	rustup component add rust-src

kernel:
	cd FerrOS
	make
