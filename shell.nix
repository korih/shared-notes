let
  nixpkgs = import (fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/nixos-24.05.tar.gz";
  }) {};
in
nixpkgs.mkShell {
  buildInputs = with nixpkgs.python3Packages; [
    mkdocs
    mkdocs-material
    mkdocs-roamlinks-plugin  # or others as needed
    pip
  ];
}

# nix-shell -p python3Packages.mkdocs python3Packages.mkdocs-material
