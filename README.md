# FerrOS-project

(Report at: `FerrOS/docs/report`, the symlink `report` will lead you to it from a cloned version of the repo)

## Installation

Once you installed `rustup` and `cargo` you can try `make setup` to get the good parameters Or see `FerrOS/README.md` for the commands to run.

## Dependencies
- `OCaml`
- `Rustup`
- `ghc`
- `qemu`
- `cargo`
- `python3`
- `ffmpeg`

## Documentation

To build and see the documentation of a particular component, navigate to the root of that component and execute `cargo doc --document-private-items --open`

## Submodules

* bootloader

A forked version the bootloader by https://github.com/rust-osdev/bootloader

We modified it to include our splash screen (in real mode)

* Ferrolex

A homebrew version of `ocamllex` (Ocaml lexer generator).
It is used to generate the lexer used by the shell.

* FerrOS

Source code of the OS itself.

* FerrOS-librust

Standard Rust library for our scripts, used by user programs (see `Cargo.toml` files)

* FerrOS-user

Repository containing the user-programs.
This means every program running in user mode.

* haskell-music

Play and generate music for FerrOS.

* Samenhir

A homebrew version of `menhir` (Ocaml parser generator).
It is used to generate the parser used by the shell.
