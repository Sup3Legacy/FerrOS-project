#!/bin/sh

cd Samenhir
make
cd ../Ferrolex
make

cd ../FerrOS-user

build () {
    cd ../$1
    cargo update
    cargo build --release
    cp target/x86_64-ferros/release/$1 ../../FerrOS/filesystem/$2
}

cd launcher
cargo update
cargo build --release
mv target/x86_64-ferros/release/launcher ../../FerrOS/src/user_program/

cd ../ferr_shell
make

build cat bin
build clock
build "echo" bin
build grep bin
build hexdump bin
build neofetch bin
build snake games
build top bin
build music bin

cd ../../FerrOS
python3 ./disk/createDisk.py
cargo build --release
cd ..