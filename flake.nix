{
  outputs = { self, ... }:
    {
      templates = {
        python = {
          path = ./templates/python;
          description = '''Basic python environment'';
        };
      };
    };
}
