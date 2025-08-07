{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs.python3Packages; [
    mkdocs
    mkdocs-material
    mkdocs-roamlinks-plugin  # if using Obsidian [[wikilinks]]
    pip
  ];
}

