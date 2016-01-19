{ haskellPackages, stdenv } :
  stdenv.mkDerivation {
    name = "codeblog";
    src = ./.;
    buildInputs = [
      (haskellPackages.ghcWithHoogle (h : with h; [ cabal-install hakyll]))
      ];
  }
