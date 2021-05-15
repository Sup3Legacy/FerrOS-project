#!/bin/sh

cd FerrOS-user

cd launcher
cargo build --release
mv target/x86_64-ferros/release/launcher ../../FerrOS/src/user_program/

cd ../ferr_shell
cargo build --release
mv target/x86_64-ferros/release/ferr_shell ../../FerrOS/filesystem/

cd ../clock
cargo build --release
mv target/x86_64-ferros/release/clock ../../FerrOS/filesystem/

cd ../echo
cargo build --release
mv target/x86_64-ferros/release/echo ../../FerrOS/filesystem/bin/

cd ../../FerrOS
./disk/createDisk.py
cargo run --release
cd ..