return {
  "akinsho/toggleterm.nvim",
  version = "*",
  lazy = false,
  opts = {
    vim.keymap.set(
      "n",
      "<leader>th",
      ":ToggleTerm direction=horizontal<CR>",
      { noremap = true, silent = true, desc = "Toggle horizontal terminal" }
    ),
    vim.keymap.set(
      "n",
      "<leader>tv",
      ":ToggleTerm direction=vertical size=90<CR>",
      { noremap = true, silent = true, desc = "Toggle vertical terminal" }
    ),
    vim.keymap.set(
      "n",
      "<leader>tf",
      ":ToggleTerm direction=float<CR>",
      { noremap = true, silent = true, desc = "Toggle float terminal" }
    ),
  },
  config = function()
    local Terminal = require("toggleterm.terminal").Terminal
    local lazygit = Terminal:new({
      cmd = "lazygit",
      display_name = "LazyGit",
      hidden = true,
      direction = "float",
      float_opts = {
        border = "curved",
        title_pos = "center",
      },
    })

    function _lazygit_toggle()
      lazygit:toggle()
    end

    vim.api.nvim_set_keymap("n", "<leader>gl", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })

    require("toggleterm").setup({
      -- shading_factor = -100,
      float_opts = {
        border = "curved",
        title_pos = "center",
      },
    })
  end,
}
