{
  # inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  inputs.nixpkgs.url = "flake:nixpkgs";
  outputs = { self, nixpkgs, ... }:
    let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in
    {
      devShells.x86_64-linux =
        {
          default = pkgs.mkShellNoCC {
            packages = [
              (pkgs.python3.withPackages (pyPkgs: with pyPkgs; [
                # Some packages to use
                # ipykernel
                # numpy
                # scipy
                # pytest
                # pytest-watch
              ]))
            ];
          };
        };
    };
}
