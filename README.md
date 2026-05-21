# Godot + Rust + Nix Template

Minimal Godot 4 + Rust template for NixOS.

## First use

```bash
./init-project my-new-game
nix develop
./watch
godot .
```

## What it gives you

- `flake.nix` for a pinned Rust + Godot dev shell
- a `.gdextension` wired to a Rust `cdylib`
- a minimal Rust `Node` class named `HelloNode`
- helper scripts for formatting, linting, and rebuild-on-change

## Notes

- `./init-project my-new-game` renames the project, Rust crate, and extension file.
- After the first Rust build, open Godot and add a `HelloNode` to a scene to verify the extension loads.
