return {
  {
    'kdheepak/lazygit.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    keys = { { 'lg', ':LazyGitCurrentFile<Return>', silent = true } },
    opts = {},
  },

  {
    'dinhhuy258/git.nvim',
    event = 'BufReadPre',
    opts = {},
  },
}
