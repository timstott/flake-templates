{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }: with flake-utils.lib;
    eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};

        ruby = pkgs.ruby_3_1;
      in {
        devShell = pkgs.mkShell {
          shellHook = ''
            export GEM_HOME=$PWD/.nix/gems/$(${ruby}/bin/ruby -e "puts RUBY_VERSION")
            mkdir -p $GEM_HOME

            export GEM_PATH=$GEM_HOME
            export PATH=$GEM_HOME/bin:$PATH
          '';

          buildInputs = [
            ruby
          ];
        };
      });
}
