  local config = {
    view = {
      width = 35,
    },
    renderer = {
      root_folder_label = false,
    },
    filters = {
      -- custom = { ".git" }
    }
  }

  require("nvim-tree").setup(config)
