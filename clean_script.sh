#!/bin/sh


cd FerrOS
cargo clean
rm -f src/user_program/launcher
cd filesystem
rm -f ferr_shell clock bin/* games/* test_io issou
cd ../../FerrOS-user

for script_name in *;
do
    if [ -d $script_name ]; then 
        cd $script_name
        cargo clean
        cd ..
    fi
done;

cd ../Samenhir
make cleanall

cd ../Ferrolex
make cleanall

cd ..
