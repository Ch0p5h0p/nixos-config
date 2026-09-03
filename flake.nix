{
	description = "Ch0p's NixOS configuration";

	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

		noctalia = {
            url = "github:noctalia-dev/noctalia";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        noctalia-greeter = {
            url = "github:noctalia-dev/noctalia-greeter";
            inputs.nixpkgs.follows = "nixpkgs";
        };
	};

	outputs = inputs@{ self, nixpkgs, noctalia, noctalia-greeter, ... }: {
		nixosConfigurations.mars = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
            
            specialArgs = {
                inherit inputs;
            };

			modules = [
				./configuration.nix
				noctalia.nixosModules.default
			];
		};
	};
}
