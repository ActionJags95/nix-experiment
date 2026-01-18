return {
  "lewis6991/gitsigns.nvim",
  event = "BufEnter",

  config = function()
    require("gitsigns").setup({
      current_line_blame = true, -- Toggling current line blame
      current_line_blame_opts = {
        delay = 200, -- Display blame after 200ms
      },
    })
  end,
}
