{ config, pkgs, ... }:

{
  imports = [
    ../modules/wsl.nix
    ../modules/vscode-server.nix
    ./home-manager.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  environment.systemPackages = with pkgs;[
    wget
    git
    lunarvim
    gh
    nix-ld-rs
    starship
  ];
}
