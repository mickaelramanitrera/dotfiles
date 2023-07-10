local status, nvim_lsp = pcall(require, "lspconfig")
if (not status) then return end
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Not needed for format on save as it is handled by nul_ls
-- local protocol = require('vim.lsp.protocol')
-- local on_attach = function(client, bufnr)
--   -- format on save
--   if client.server_capabilities.documentFormattingProvider then
--     vim.api.nvim_create_autocmd("BufWritePre", {
--       group = vim.api.nvim_create_augroup("Format", { clear = true }),
--       buffer = bufnr,
--       callback = function() vim.lsp.buf.formatting_seq_sync() end
--     })
--   end
-- end

-- TypeScript
nvim_lsp.tsserver.setup {
  filetypes = {
    "typescript", "typescriptreact", "typescript.tsx", "javascript"
  },
  cmd = { "typescript-language-server", "--stdio" },
  capabilities = capabilities
}

-- Lua
nvim_lsp.lua_ls.setup {
  settings = {
    filetypes = { 'lua' },
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT'
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' }
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true)
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = { enable = false }
    }
  }
}
