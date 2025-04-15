return {
  "nvim-telescope/telescope.nvim",
  version = false, -- always use the latest version
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
  },
  config = function()
    local telescope = require("telescope")

    telescope.setup({
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown({})
        },
      },
    })

    telescope.load_extension("ui-select")

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope: Find Files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope: Live Grep" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope: Buffers" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope: Help Tags" })
  end,
}

