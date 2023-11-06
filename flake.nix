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
      };
    };
}
