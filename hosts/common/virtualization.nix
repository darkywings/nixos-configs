{ config, pkgs, ... }:

{
  virtualisation.docker = {
    enable = true;
    extraPackages = with pkgs; [ docker-compose ];
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
    #daemon.settings = {
    #  experimental = true;
    #  data-root = "/home/darky/dev/docker-data-root";
    #  userland-proxy = false;
    #};
  };
}
