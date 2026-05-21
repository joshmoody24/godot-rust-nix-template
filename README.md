# godot-rust-nix-template

Minimal Godot 4 + Rust + Nix development template.

## Usage

```bash
git clone <this-repo> my-game
cd my-game
./init-project my-game
nix develop
./watch
godot .
```

## What it gives you

- `flake.nix` — pinned Rust + Godot dev shell
- a `.gdextension` wired to a Rust `cdylib`
- a minimal Rust `Node` class named `HelloNode`
- helper scripts: `fmt`, `lint`, `watch`
