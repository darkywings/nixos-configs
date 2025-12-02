{ config, pkgs, ... }: {
  programs.git = {
    enable = true;
    userName = "Darky";
    userEmail = "theskanimbrony@gmail.com";
    signing = {
      key = "4833A8F0D2D68037";
      signByDefault = true;
    };
    settings = {
      user = {
        name = "Darky";
        email = "theskanimbrony@gmail.com";
      };
    };
  };
}
