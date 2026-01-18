return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    { "nvim-treesitter/nvim-treesitter-context", lazy = false },
    { "nvim-treesitter/nvim-treesitter-textobjects", lazy = false },
  },
  branch = "master",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      -- List of parsers need to be installed
      ensure_installed = {
        "asm",
        "bash",
        "c",
        "comment",
        "cpp",
        "dockerfile",
        "git_config",
        "git_rebase",
        "gitcommit",
        "gitignore",
        "http",
        "json",
        "lua",
        "luadoc",
        "markdown",
        "tmux",
        "toml",
        "vim",
        "yaml",
      },
      sync_install = true,

      -- Automatically installing missing parsers
      auto_install = true,

      -- syntax highlighting
      highlight = {
        enable = true,
      },

      --enable indentation
      indent = { enable = true },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
        },
      },
      additional_vim_regex_highlighting = false,
    })

    require("treesitter-context").setup({
      enable = true,
      multiwindow = false,
      min_window_height = 1,
      line_numbers = false,
      multiline_threshold = 1, -- Maximum number of lines to show for a single context
      trim_scope = "outer",
      mode = "topline",
      seperator = ".",
    })
  end,
}
