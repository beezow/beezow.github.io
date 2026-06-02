{ pkgs ? import <nixpkgs> { }, ... }:

pkgs.stdenv.mkDerivation {
  name = "pdf";
  src = ./.;
  buildInputs = with pkgs; [
    texliveFull
  ];
  buildPhase = ''
    pdflatex main.tex
  '';
  installPhase = ''
    mkdir -p $out
    cp main.pdf $out/andrew_zoghby_resume.pdf
  '';
}
