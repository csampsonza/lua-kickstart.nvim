return {
  'yetone/avante.nvim',
  event = 'VeryLazy',
  lazy = false,
  version = false, -- set this if you want to always pull the latest change
  opts = {
    -- provider = 'openai',
    provider = 'copilot',
    openai = {
      -- endpoint = "https://api.openai.com/v1",
      model = 'gpt-4o-mini',
      -- timeout = 30000, -- Timeout in milliseconds
      -- temperature = 0,
      -- max_tokens = 4096,
      -- ["local"] = false,
    },
    auto_suggestions_provider = 'openai',
    behavior = {
      auto_suggestions = true,
    },
    hints = { enabled = true }, -- add any opts here
    -- provider = 'openai',
    api_key = os.getenv 'OPENAI_API_KEY', -- Fetch the OpenAI API key from environment variables
    -- model = 'gpt-4-turbo', -- Use 'gpt-4' or 'gpt-4-turbo' as needed
  },
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  build = 'make',
  -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'stevearc/dressing.nvim',
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    --- The below dependencies are optional,
    'nvim-tree/nvim-web-devicons', -- or echasnovski/mini.icons
    'zbirenbaum/copilot.lua', -- for providers='copilot'
    {
      -- support for image pasting
      'HakonHarnes/img-clip.nvim',
      event = 'VeryLazy',
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- required for Windows users
          use_absolute_path = true,
        },
      },
    },
    {
      -- Make sure to set this up properly if you have lazy=true
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_types = { 'markdown', 'Avante' },
      },
      ft = { 'markdown', 'Avante' },
    },
  },
}
