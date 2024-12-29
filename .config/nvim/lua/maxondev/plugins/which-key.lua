return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  config = function()
    local which_key = require("which-key")

    which_key.setup({
      preset = "modern",
      icons = {
        breadcrumb = ">>",
        separator = ">",
        group = "+",
        ellipsis = "...",
        colors = true,
      },
    })
  end,
}
