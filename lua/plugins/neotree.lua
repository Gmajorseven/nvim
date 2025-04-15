return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",  -- optional, for file icons
    "MunifTanjim/nui.nvim",         -- necessary dependency for NeoTree
  },
  config = function()
    -- Set up NeoTree
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = true,  -- show hidden files
        },
      },
      window = {
        position = "left",  -- or "right" for the other side
      },
    })

    -- Keybinding to toggle NeoTree
    vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})
  end,
}

