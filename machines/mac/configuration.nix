{ config, pkgs, ... }:

{
  system.stateVersion = 4;
  environment.systemPackages = with pkgs; [
    git
    wget
  ];
  # 例: ホスト名
  networking.hostName = "mac";

}