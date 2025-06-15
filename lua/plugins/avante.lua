return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  version = false, -- Never set this value to "*"! Never!
  opts = {
    -- add any opts here
    -- for example
    provider = "openai",
    openai = {
      endpoint = "https://api.openai.com/v1",
      model = "gpt-4-turbo", -- your desired model (or use gpt-4o, etc.)
      timeout = 30000, -- Timeout in milliseconds, increase this for reasoning models
      temperature = 0,
      max_completion_tokens = 4096, -- must stay under this even on GPT-4 Turbo
      reasoning_effort = "medium", -- low|medium|high, only used for reasoning models
    },
    -- RAG service configuration should be inside opts, not at root level
    rag_service = {
      enabled = true,
      host_mount = os.getenv("HOME"),
      provider = "openai",
      llm_model = "gpt-4-turbo",
      embed_model = "text-embedding-3-small",
      endpoint = "https://api.openai.com/v1",
      timeout = 30000,
      temperature = 0,
      api_key_name = "OPENAI_API_KEY", -- Make sure this env var is set
    },
		 windows = {
      position = "right", -- "right", "left", "top", "bottom"
      wrap = true,
      width = 30, -- Percentage of screen width
      sidebar_header = {
        enabled = true,
        align = "center", -- "left", "center", "right"
        rounded = true,
      },
      input = {
        prefix = "> ",
        height = 8, -- Height of input window
      },
      edit = {
        border = "rounded",
        start_insert = true, -- Start in insert mode
      },
      ask = {
        floating = false, -- Use sidebar instead of floating
        start_insert = true,
        border = "rounded",
        focus_on_apply = "ours", -- Focus after applying changes
      },
    },
  },
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  build = "make",
  -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below dependencies are optional,
    "echasnovski/mini.pick", -- for file_selector provider mini.pick
    "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
    "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
    "ibhagwan/fzf-lua", -- for file_selector provider fzf
    "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
    "zbirenbaum/copilot.lua", -- for providers='copilot'
    {
      -- support for image pasting
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
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
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
