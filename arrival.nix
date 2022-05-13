{
  pkgs ? (import <nixpkgs> {})
}:

pkgs.stdenv.mkDerivation rec {
  pname = "arrival";
  version = "0.0.1";

  src = builtins.fetchGit {
    url = "https://github.com/unbel13ver/arrival_testtask.git";
    ref = "master";
  };

  buildInputs = [
    pkgs.qt5.full
    pkgs.cmake
  ];

  installPhase = ''
    mkdir -p $out/bin
    mv app/srv $out/bin
    mv dashboard/dboard $out/bin
  '';
}
