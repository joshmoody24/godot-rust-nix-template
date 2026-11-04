# Template Game

## Development

```bash
nix develop
./watch
godot -e
```

## Structure

- `flake.nix`: pinned Rust + Godot dev shell
- `TemplateGameExtension.gdextension`: GDExtension wired to the `template_game` Rust crate
- `rust/`: Rust crate
- `fmt`, `lint`, `watch`: helper scripts
