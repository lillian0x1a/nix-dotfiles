{ config, pkgs, ... }:

{
  # 必須: システムバージョン
  system.stateVersion = 4;

  # 例: パッケージ追加
  environment.systemPackages = with pkgs; [
    git
    wget
  ];

  # 例: ホスト名
  networking.hostName = "mac";

  # 他のdarwin用設定もここに追加できます
}