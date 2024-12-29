return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {},

  config = function()
    local toggle_term = require("toggleterm")

    toggle_term.setup({
      size = 20,
      direction = "horizontal",
      open_mapping = [[<c-\>]],
      float_opts = {
        border = "single",
        winblend = 3,
        title_pos = "center",
      },
      highlights = {
        NormalFloat = {
          guibg = "#000000",
        },
        FloatBorder = {
          guifg = "#ffffff",
        },
      },
    })

    local keymap = vim.keymap
    keymap.set("n", "<leader>tt", ":ToggleTerm<CR>", { noremap = true, silent = true })
  end,
}
