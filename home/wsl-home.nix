{ config, pkgs, ...}:

{
  home.username = "nixos";
  home.homeDirectory = "/home/nixos";
  home.stateVersion = "24.11";
  home.packages = with pkgs; [
    nnn 
    lazygit
    ghostty
  ];
  
  programs.home-manager.enable = true;
}
