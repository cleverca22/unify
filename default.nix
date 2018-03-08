with import <nixpkgs> {};

let
  ghc = haskellPackages.ghcWithPackages (ps: with ps; []);
in runCommand "unify" { buildInputs = [ ghc ]; } ''
  cp -r ${builtins.fetchGit ./.} src
  chmod -R +w src
  cd src
  mkdir -p $out/bin/
  ghc Entry.hs
  ghc -no-hs-main Entry.hs main.c -o $out/bin/main
''
