#!/bin/sh


cd FerrOS
cargo clean
rm -f src/user_program/launcher
cd filesystem
rm -f ferr_shell clock bin/echo
cd ../..

cd FerrOS-user

for script_name in *;
do
    if [ -d $script_name ]; then 
        cd $script_name
        cargo clean
        cd ..
    fi
done;
