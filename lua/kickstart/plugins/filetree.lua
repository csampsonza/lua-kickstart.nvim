-- File: lua/custom/plugins/filetree.lua

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  keys = {
    { -- lazy style key map
      '<leader>e',
      '<cmd>Neotree reveal_force_cwd<cr>',
      desc = 'filetree browser',
    },
  },
  config = function()
    require('neo-tree').setup({})
  end,
}
