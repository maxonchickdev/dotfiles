return {
  "VonHeikemen/fine-cmdline.nvim",
  dependencies = { "MunifTanjim/nui.nvim" },
  config = function()
    local fine_cmdline = require("fine-cmdline")

    fine_cmdline.setup({
      cmdline = {
        prompt = "> ",
      },
      position = {
        row = "50%",
        col = "50%",
      },
      size = {
        width = "60%",
      },
      border = {
        style = "rounded",
      },
    })
  end,
}
