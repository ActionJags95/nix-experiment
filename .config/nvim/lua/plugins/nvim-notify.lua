return {
  "rcarriga/nvim-notify",
  lazy = false, -- Load early
  priority = 1000, -- ensuring it loads before others

  config = function()
    local notify = require("notify")
    vim.notify = notify
    notify.setup({
      stages = "fade_in_slide_out",
      timeout = 1000,
      background_colour = "#000000",
    })
    notify("Welcome Back!")
  end,
}
