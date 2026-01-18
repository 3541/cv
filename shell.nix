# Not currently working, need FA-4.
{
  pkgs ? import ./nixpkgs.nix { },
}:
pkgs.mkShell {
  packages = with pkgs; [
    (texlive.combine {
      inherit (texlive)
        scheme-medium
        cv4tw
        newenviron
        catoptions
        xstring
        lastpage
        libertine
        pbox
        needspace
        fontawesome
        forloop
        realboxes
        collectbox
        ;
    })
  ];
}
