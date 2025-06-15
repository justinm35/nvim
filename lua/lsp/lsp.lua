return {
  {
    "williamboman/mason.nvim",
    lazy  = false,
    build = ":MasonUpdate",
    opts  = {},
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
      "saghen/blink.cmp",
    },

    -- ▼▼ this function needs its own 'end'
    config = function()
      local lspconfig       = require("lspconfig")
      local mason           = require("mason")
      local mason_lspconfig = require("mason-lspconfig")
      local capabilities    = require("blink.cmp").get_lsp_capabilities()

      mason.setup()

      mason_lspconfig.setup({
        ensure_installed       = { "tsserver", "pyright", "lua_ls" },
        automatic_installation = true,
        handlers               = {
          -- default setup for every server
          function(server_name)
            lspconfig[server_name].setup({
              capabilities = capabilities,
              on_attach = function(_, bufnr)
                local map = function(mode, lhs, rhs)
                  vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, silent = true })
                end
                map("n", "gd", vim.lsp.buf.definition)
                map("n", "gr", vim.lsp.buf.references)
                map("n", "K", vim.lsp.buf.hover)
                map("n", "<leader>vd", vim.diagnostic.open_float)
                map("n", "<leader>ca", vim.lsp.buf.code_action)
              end,
            })
          end,
          -- put per-server tweaks here if you need them
        },
      })

      vim.diagnostic.config({
        virtual_text = { severity = { min = "INFO", max = "WARN" } },
        virtual_text = {
          severity = { min = vim.diagnostic.severity.ERROR },
          spacing  = 2,
          prefix   = "●",
        },
      })

      vim.o.updatetime = 300 -- ms idle before CursorHold fires (default is 4 000)
      vim.api.nvim_create_autocmd("CursorHold", {
        callback = function()
          vim.diagnostic.open_float(nil, {
            focusable    = false,     -- don’t steal cursor
            border       = "rounded",
            source       = "if_many", -- show source if >1 linter
            prefix       = "",        -- no extra symbol inside popup
            scope        = "cursor",  -- only diagnostics under the cursor
            close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
          })
        end,
      })
    end,

  }, -- closes the nvim-lspconfig plugin spec
}    -- closes the outer return {...}
