{ config, pkgs, ... }:

{
  imports = [ ./darky/default.nix ];

  users.users.darky = {
    isNormalUser = true;
    description = "Darky";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    packages = with pkgs; [
      kdePackages.kate
    ];
  };
  
  users.extraGroups.vboxsf.members = [ "darky" ];
  users.extraGroups.docker.members = [ "darky" ];
}
