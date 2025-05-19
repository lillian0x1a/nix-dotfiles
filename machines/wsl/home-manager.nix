{ config, pkgs, ... }:

{
  home-manager = {
    enable = true;
    useGlobalPkgs = true;
    useUserPackages = true;
    users.nixos = import ../../home/wsl/home.nix;
  };
  home.stateVersion = "24.11";
}