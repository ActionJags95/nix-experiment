return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false,
  config = function()
    require("nvim-tree").setup({
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        enable = false,
      },
    })

    vim.keymap.set(
      "n",
      "<leader>e",
      ":NvimTreeToggle<CR>",
      { silent = true, noremap = true, desc = "Toggle FileExplorer" }
    )
  end,
}
