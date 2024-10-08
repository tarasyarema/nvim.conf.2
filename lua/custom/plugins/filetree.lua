-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup {
      window = {
        mappings = {
          ["<C-t>"] = "open_tabnew",
          ["<C-x>"] = "open_split",
          ["<C-v>"] = "open_vsplit",
        }
      }
    }

    vim.keymap.set('n', '<leader>a', [[:Neotree reveal_force_cwd<cr>]])
    vim.keymap.set('n', '<leader>A', [[:Neotree toggle reveal_force_cwd<cr>]])
  end,
}
