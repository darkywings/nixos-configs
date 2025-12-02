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
  
  users.extraGroups.vboxusers.members = [ "darky" ];
}
