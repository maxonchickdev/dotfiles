return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      [[          ▀████▀▄▄              ▄█ ]],
      [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
      [[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
      [[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
      [[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
      [[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
      [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
      [[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
      [[   █   █  █      ▄▄           ▄▀   ]],
    }

    dashboard.section.buttons.val = {
      dashboard.button("SPC cl", "🪄 > Open CLI", "<cmd>FineCmdline<CR>"),
      dashboard.button("SPC ee", "🪄 > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "🪄 > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fs", "🪄 > Find Sessions", "<cmd>SessionSearch<CR>"),
      dashboard.button("SPC fg", "🪄 > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC ft", "🪄 > Find TODOs", "<cmd>TodoTelescope<CR>"),
      dashboard.button("q", "🪦 > Quit NVIM", "<cmd>qa<CR>"),
    }

    local function footer()
      return "Don't Stop Until You are Proud..."
    end

    dashboard.section.footer.val = footer()

    dashboard.opts.opts.noautocmd = true

    alpha.setup(dashboard.opts)

    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
