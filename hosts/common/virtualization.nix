{ config, pkgs, ... }:

{
  virtualization.docker = {
    enable = true;
    enableOnBoot = true;
    extraPackages = with pkgs; [ docker-compose ];
  };
}
