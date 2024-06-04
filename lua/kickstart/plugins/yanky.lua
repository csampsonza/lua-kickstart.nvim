return {
  {
    'gbprod/yanky.nvim',
    keys = {
      { -- lazy style key map
        '<leader>vv',
        -- '<cmd>YankyRingHistory<cr>',
        '<cmd>Telescope yank_history theme=dropdown initial_mode=normal<cr>',
        desc = 'Show yank history',
      },
      {
        'p',
        '<Plug>(YankyPutIndentAfter)',
        desc = 'Yanky put after',
        mode = { 'n', 'x' },
      },
      {
        'P',
        '<Plug>(YankyPutIndentBefore)',
        desc = 'Yanky put before',
        mode = { 'n', 'x' },
      },
      { 'gp', '<Plug>(YankyPutIndentAfterLinewise)', mode = { 'n', 'x' } },
      { 'gP', '<Plug>(YankyPutIndentBeforeLinewise)', mode = { 'n', 'x' } },
      { ']y', '<Plug>(YankyNextEntry)', mode = 'n' },
      { '[y', '<Plug>(YankyPreviousEntry)', mode = 'n' },
      { '<c-p>', '<Plug>(YankyPreviousEntry)', mode = 'n' },
      -- { '<c-n>', '<Plug>(YankyNextEntry)', mode = 'n' },
      -- { "<c-v>", "<esc><cmd>Telescope yank_history initial_mode=normal<cr>", mode = { "n", "i", "v" } },
      { 'y', '<Plug>(YankyYank)', mode = { 'n', 'x' } }, -- prevent going up when yanking
      {
        '<leader>lp', -- jump to last put
        function()
          require('yanky.textobj').last_put()
        end,
      },
      {
        '<leader>fy',
        '<cmd>Telescope yank_history theme=dropdown initial_mode=normal<cr>',
        desc = 'Find Yank History',
      },
    },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
}
-- Vreturn {
--   'AckslD/nvim-neoclip.lua',
--   requires = {
--     { 'kkharji/sqlite.lua', module = 'sqlite' },
--     -- you'll need at least one of these
--     -- {'nvim-telescope/telescope.nvim'},
--     -- {'ibhagwan/fzf-lua'},
--   },
--   keys = {
--     { -- lazy style key map
--       '<leader>vv',
--       '<cmd>Telescope neoclip<cr>',
--       desc = 'Neoclip - show clipboard',
--     },
--   },
--   config = function()
--     require('neoclip').setup()
--   end,
-- }
