{ config, pkgs, ... }:

{
  imports = [
    ./wsl.nix
    ./vscode-server.nix
    ./home-manager.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  environment.systemPackages = with pkgs;[
    wget
    git
    lunarvim
    starship
  ];
}
