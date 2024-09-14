{
  outputs = { self, ... }:
    {
      templates = {
        flake = {
          path = ./templates/flake;
          description = ''Basic flake init.'';
        };
        python = {
          path = ./templates/python;
          description = ''Basic python environment'';
        };
        rust = {
          path = ./templates/rust;
          description = ''Basic rust environment'';
        };
      };
    };
}
