return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    lazy = false,

    opts = {
      indent = {
        char = "│",
        tab_char = "│",
      },
      scope = {
        enabled = false,
      },
    },
  },

  {
    "echasnovski/mini.indentscope",
    version = false,
    lazy = false,
    opts = {
      symbol = "│",
      options = { try_as_border = true },
    },
  },
}
