{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  packages = with pkgs;
    [
      (texlive.combine {
        inherit (texlive)
          scheme-medium cv4tw newenviron catoptions xstring lastpage libertine
          pbox needspace fontawesome forloop realboxes collectbox;
      })
    ];
}
