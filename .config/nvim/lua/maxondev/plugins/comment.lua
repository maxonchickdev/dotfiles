return {
  "numToStr/Comment.nvim",
  tag = "v0.8.0",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local comment = require("Comment")

    comment.setup({
      padding = true,
      sticky = true,
      ignore = nil,
      opleader = {
        line = "gc",
        block = "gb",
      },
      extra = {
        above = "gcO",
        below = "gco",
        eol = "gcA",
      },
      mappings = {
        basic = true,
        extra = true,
      },
      pre_hook = nil,
      post_hook = nil,
    })
  end,
}
