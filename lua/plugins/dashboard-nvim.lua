return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("dashboard").setup({
      theme = "doom",  -- other option: "hyper"
      config = {
        header = {
          " ",
          " ",
          " ",
          " ",
          " ",
          " ",
          "==================================================",
          "=        ==        ==       ===       ===  ====  =",
          "====  =====  ========  ====  ==  ====  ==   ==   =",
          "====  =====  ========  ====  ==  ====  ===  ==  ==",
          "====  =====  ========  ====  ==  ====  ===  ==  ==",
          "====  =====      ====  ====  ==  ====  ====    ===",
          "====  =====  ========  ====  ==  ====  =====  ====",
          "====  =====  ========  ====  ==  ====  =====  ====",
          "====  =====  ========  ====  ==  ====  =====  ====",
          "====  =====        ==       ===       ======  ====",
          "==================================================",
          "🚀 01010100 01000101 01000100 01000100 01011001 🚀",
          "           🚀 Welcome to Teddy NVIM 🚀            ",
          " ",
        },
        center = {
          { icon = "📂  ", desc = "Find File          ", action = "Telescope find_files", key = "f" },
          { icon = "🔍  ", desc = "File Browser       ", action = "Neotree toggle", key = "b" },
          { icon = "📝  ", desc = "Live Grep          ", action = "Telescope live_grep", key = "g" },
          { icon = "⚙️  ", desc = "Open Config        ", action = "e ~/.config/nvim/init.lua", key = "c" },
          { icon = "❌  ", desc = "Quit               ", action = "qa", key = "q" },
        },
        footer = { "⚡ Happy Coding with Neovim!" },
      }
    })
  end
}

