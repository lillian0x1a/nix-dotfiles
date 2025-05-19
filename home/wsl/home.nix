{ config, pkgs, ...}:

{
  home.username = "nixos";
  home.homeDirectory = "/home/nixos";

  home.packages = with pkgs; [
    nnn 
    lazygit
    ghostty
  ];
  
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
}
