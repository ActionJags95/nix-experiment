return {
  "saghen/blink.cmp",
  dependencies = { "rafamadriz/friendly-snippets" },

  -- use a release tag to download pre-built binaries
  -- version = "1.*",
  -- build = "cargo build --release",

  opts = {
    appearance = {
      use_nvim_cmp_as_default = false,

      -- Font variant
      nerd_font_variant = "normal",
    },

    completion = {
      menu = {
        draw = {
          treesitter = { "lsp" },
        },

        -- Border for completion menu
        border = "rounded",
      },
      documentation = {
        -- Automatically show documentation menu
        auto_show = true,

        -- Immediately show docs menu
        auto_show_delay_ms = 0,

        -- Border for docs
        window = { border = "rounded" },
      },
      accept = {
        auto_brackets = {
          enabled = true,
        },
      },
      ghost_text = {
        enabled = vim.g.ai_cmp,
      },
    },

    cmdline = {
      enabled = true,
      completion = {
        ghost_text = { enabled = true },
      },
      keymap = { preset = "inherit" },
    },

    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },

    fuzzy = {
      implementation = "lua",
    },

    keymap = {
      preset = "default",
    },
  },
}
