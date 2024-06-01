{
  pkgs,
  pre-commit-hooks,
  system,
  ...
}:
pre-commit-hooks.lib.${system}.run {
  src = ./.;

  hooks = {
    deadnix.enable = true;
    # markdownlint.enable = true;
    nil.enable = true;
    nixfmt = {
      package = pkgs.nixfmt-rfc-style;
      enable = true;
    };
    statix.enable = true;
    shellcheck.enable = true;
    shfmt = {
      enable = true;
      # github:ink-splatters/git-hooks.nix/shfmt-language-dialect = "bash";
      # absent in upstream for now
      settings.language-dialect = "bash";
    };
  };

  tools = pkgs;
}
