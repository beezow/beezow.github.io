{ pkgs ? import <nixpkgs> { }, ... }:

pkgs.stdenv.mkDerivation {
  name = "pdf";
  src = ./.;
  buildInputs = with pkgs; [
    # building a custom minimal set seems to be faster than pulling texliveFull
    (texliveMinimal.withPackages (ps: with ps;[ collection-latexextra ]))
  ];
  buildPhase = ''
    pdflatex main.tex
  '';
  installPhase = ''
    mkdir -p $out
    cp main.pdf $out/andrew_zoghby_resume.pdf
  '';
}
