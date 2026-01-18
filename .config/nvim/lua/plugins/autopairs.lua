return {
  "nvim-mini/mini.pairs",
  version = "*",
  event = "InsertEnter",

  opts = {
    modes = {
      insert = true,
      command = false,
      terminal = false,
    },

    -- skip autopairs when next characterd is closing pair
    -- and there are more closing pairs than opening pairs
    skip_unbalanced = true,

    -- better deal with markdown node blocks
    markdown = true,
  },

  config = function()
    require("mini.pairs").setup({
      modes = {
        insert = true,
        command = false,
        terminal = false,
      },

      -- skip autopairs when next characterd is closing pair
      -- and there are more closing pairs than opening pairs
      skip_unbalanced = true,

      -- better deal with markdown node blocks
      markdown = true,
    })
  end,
}
