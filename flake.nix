{
  description = "flake ";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    vscode-server.url = "github:nix-community/nixos-vscode-server";
    nixos-wsl = {
      url = "github:nix-community/NixOS-WSL";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    darwin.url = "github:lnl7/nix-darwin";
  };

  outputs = { self, nixpkgs, home-manager, vscode-server, nixos-wsl, darwin, ... }@inputs: {
    nixosConfigurations = {
      linux = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./machines/linux/configuration.nix
          home-manager.nixosModules.home-manager
        ];
      };
      wsl = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./machines/wsl/configuration.nix
          home-manager.nixosModules.home-manager
          vscode-server.nixosModule
          nixos-wsl.nixosModules.wsl
        ];
      };
    };

    darwinConfigurations = {
      mac = darwin.lib.darwinSystem {
        system = "aarch64-darwin";
        modules = [
          ./machines/mac/configuration.nix
          home-manager.darwinModules.home-manager
        ];
      };
    };
  };
}

