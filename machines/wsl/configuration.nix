{ config, lib, pkgs, ... }:

{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  environment.systemPackages = with pkgs;[
    wget
    git
    lunarvim
    gh
    nix-ld-rs
    starship
  ];

  home-manager = {
    enable = true;
  };

  wsl = {
    enable = true;
    defaultUser = "nixos";
  };

  system.stateVersion = "24.11";
}
