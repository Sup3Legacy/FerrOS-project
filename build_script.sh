#!/bin/sh

cd FerrOS-user

cd launcher
cargo build --release
mv target/x86_64-ferros/release/launcher ../../FerrOS/src/user-program/
cargo clean

cd ../ferr_shell
cargo build --release
mv target/x86_64-ferros/release/ferr_shell ../../FerrOS/filesystem/
cargo clean

cd ../clock
cargo build --release
mv target/x86_64-ferros/release/clock ../../FerrOS/filesystem/
cargo clean

cd ../echo
cargo build --release
mv target/x86_64-ferros/release/clock ../../FerrOS/filesystem/bin
cargo clean

cd ../../FerrOS
./disk/createDisk.py
cargo run --release
cd ..