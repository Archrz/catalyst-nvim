{
  outputs = _: {
    homeManagerModules.default = import ./nvim;
  };
}
