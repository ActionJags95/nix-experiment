return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "saghen/blink.cmp",
    "mason-org/mason.nvim",
    "mason-org/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer",
  },

  config = function()
    require("mason").setup()
    local lspconfig = require("lspconfig")
    local mason_lspconfig = require("mason-lspconfig")
    local capabilites = require("blink.cmp").get_lsp_capabilities()

    vim.filetype.add({ extension = { ejs = "ejs" } })

    mason_lspconfig.setup({
      ensure_installed = {
        "clangd",
        "cmake",
        "jsonls",
        "lua_ls",
        "marksman",
        "pylsp",
        "taplo",
        "yamlls",
      },
      automatic_installation = true,
    })

    require("mason-tool-installer").setup({
      ensure_installed = {
        "stylua",
        "black",
        "isort",
        "pylint",
        "shellcheck",
      },
    })

    vim.diagnostic.config({
      virtual_text = true,
      update_in_insert = true,
      underline = true,
      severity_sort = true,
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = " ",
          [vim.diagnostic.severity.WARN] = " ",
          [vim.diagnostic.severity.HINT] = " ",
          [vim.diagnostic.severity.INFO] = " ",
        },
      },
    })

    vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
    vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
  end,
}
