{
  description = "A collection of flake templates";

  outputs = { self }: {
    templates = {
      ruby-interview = {
        path = ./ruby-interview;
        description = "Minimal Ruby environment for interviews";
      };
    };
  };
}
