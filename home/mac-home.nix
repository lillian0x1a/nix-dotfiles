{ config, pkgs, ... }:

{
  home.username = "nixos";
  home.homeDirectory = "/Users/nixos";
  home.stateVersion = "24.11";
  home.packages = with pkgs; [
    coreutils
    wget
  ];
  programs.home-manager.enable = true;
}