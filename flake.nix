{
  description = "A very basic flake";

  inputs = { nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable"; };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in {
      # packages.${system}.hello = pkgs.hello;
      # packages.${system}.default = pkgs.hello;

      devShells.${system}.default = pkgs.mkShell {
        packages = [
          pkgs.zsh-nix-shell
          pkgs.zsh-completions
          pkgs.zsh-autosuggestions
          pkgs.zsh-syntax-highlighting
          pkgs.tmux
          pkgs.neovim
          pkgs.lazygit
          pkgs.oh-my-posh
          pkgs.yazi
          pkgs.btop
          pkgs.zoxide
          pkgs.fzf
          pkgs.bat
          pkgs.eza
          pkgs.fastfetch
          pkgs.ripgrep
          pkgs.unzip
          pkgs.wget
          pkgs.luajitPackages.luarocks
          pkgs.fd
          pkgs.nodejs_24
          pkgs.python315
          pkgs.rustup
          pkgs.cargo
          pkgs.libgcc
        ];

        MY_ENV_VAR = "Hello, this is an env variable";
        EDITOR = "nvim";

        shellHook = ''
          export XDG_CONFIG_HOME=$PWD/.config
          export XDG_DATA_HOME=$PWD/.local/share
          export XDG_STATE_HOME=$PWD/.local/state
          export XDG_CACHE_HOME=$PWD/.cache

          eval "$(oh-my-posh init zsh --config $PWD/.config/oh-my-posh/jags.toml)"
          eval "$(zoxide init zsh)"

          echo ">> Entered isolated dev environment"
        '';

      };
    };
}
