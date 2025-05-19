{ config, lib, pkgs, ... }:

{
  #imports = [
    # include NixOS-WSL modules
  #  <nixos-wsl/modules>
  #];
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  environment.systemPackages = with pkgs;[
    wget
    git
    lunarvim
    gh
    nix-ld-rs
    starship
  ];

  wsl = {
    enable = true;
    defaultUser = "nixos";
  };

  system.stateVersion = "24.11";
}
