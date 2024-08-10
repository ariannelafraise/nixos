{
  description = "NixOS configuration flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";	

    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland.url = "github:hyprwm/Hyprland";

    nvchad4nix = {
      url = "github:NvChad/nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, hyprland, ... }@inputs:
    let
      system = "x86_64-linux";
      hostName = "kitaria";
      specialArgs = { inherit system; inherit inputs; };
    in {
      nixosConfigurations = {
        ${hostName} = nixpkgs.lib.nixosSystem {
          inherit specialArgs;
          modules = [
            ./configuration.nix
            {
              nixpkgs = {
                overlays = [
                  inputs.nvchad4nix.overlays.default
                ];
              };
            }
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.arianne = import ./home-manager/home.nix;
            }
          ];
        };
      };
    };
}
