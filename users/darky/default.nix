{ config, pkgs, ... }:

let
  unstable = import
    (builtins.fetchTarball https://github.com/nixos/nixpkgs/tarball/master)
    { config = config.nixpkgs.config; };
in
{
  imports = [

  ];

  nixpkgs.config = {
    allowUnfree = true;
  };
}
