{ config, pkgs, ... }:

{
  system.stateVersion = "24.11";
  wsl.enable = true;
  defaultUser = "nixos";
}