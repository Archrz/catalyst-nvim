{
  imports = [
    ({ lib, pkgs, ... }: {
      home.packages = with pkgs; [
        neovim

        # LSP servers
        lua-language-server
        bash-language-server
        vscode-langservers-extracted
        yaml-language-server
        taplo
        marksman
        nil
        rust-analyzer
      ];

      xdg.configFile = {
        "nvim/init.lua".source = ./init.lua;
        "nvim/lua" = {
          source = ./lua;
          recursive = true;
        };
      };

      home.activation.nvimLazyLock = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
        lock="$HOME/.local/state/nvim/lazy/lazy-lock.json"
        if [ ! -f "$lock" ]; then
          $DRY_RUN_CMD install -Dm644 ${./lazy-lock.json} "$lock"
        fi
      '';

      home.shellAliases = {
        vi = "nvim";
        vim = "nvim";
      };
    })
  ];
}
