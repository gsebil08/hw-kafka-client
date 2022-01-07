{ compiler ? "ghc8107" }:

with rec {
  pkgs = (import ./nix/nixpkgs.nix { inherit compiler; });
  drv = pkgs.haskellPackages.hw-kafka-client;
};

drv
