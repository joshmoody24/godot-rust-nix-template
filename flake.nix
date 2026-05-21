{
  description = "Generic Godot + Rust (godot-rust) development template";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    rust-overlay = {
      url = "github:oxalica/rust-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, rust-overlay, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        overlays = [ rust-overlay.overlays.default ];
      };
      rustToolchain = pkgs.rust-bin.stable.latest.default.override {
        extensions = [ "rust-src" "rust-analyzer" ];
      };
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = [
          rustToolchain
          pkgs.godot
          pkgs.pkg-config
          pkgs.clang
          pkgs.cargo-watch
        ];

        shellHook = ''
          echo "Godot + Rust template dev shell"
          echo "  Rust: $(rustc --version)"
          echo "  Cargo: $(cargo --version)"
          echo "  Godot: $(godot --version)"
        '';
      };
    };
}
