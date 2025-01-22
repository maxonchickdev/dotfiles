return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        file_ignore_patterns = {
          "./node_modules/*",
          "node_modules",
          "^node_modules/*",
          "node_modules/*",
          ".husky/_/*",
          "apps/client/.next/*",
          ".nx/",
          ".git/*",
          "dist/*",
          ".DS_Store",
        },
        preview = true,
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
      pickers = {
        find_files = {
          hidden = true,
        },
      },
    })

    telescope.load_extension("fzf")

    local keymap = vim.keymap

    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>fr", "<cmd>Telescope git_files<CR>", { desc = "Fuzzy find recent files" })
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>", { desc = "Find string under cursor in cwd" })
    keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Find string in cwd" })

    keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "Find todos" })

    keymap.set("n", "<leader>fs", "<cmd>SessionSearch<CR>", { desc = "Find sessions" })
  end,
}
