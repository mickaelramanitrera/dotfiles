local null_ls = require("null-ls")

local lsp_formatting = function(bufnr) vim.lsp.buf.format({ bufnr = bufnr }) end

-- if you want to set up formatting on save, you can use this as a callback
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-- add to your shared on_attach callback
local on_attach = function(client, bufnr)
  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function() lsp_formatting(bufnr) end
    })
  end
end

null_ls.setup({
  debug = false,
  sources = {
    -- null_ls.builtins.formatting.prettier,
    null_ls.builtins.formatting.eslint,
    null_ls.builtins.formatting.lua_format,
    null_ls.builtins.formatting.rustfmt,
    -- Disabled because it throws errors on projects without eslint
    null_ls.builtins.diagnostics.eslint,
    -- null_ls.builtins.code_actions.eslint,
    -- Remove this as it conflicts with luasnip snippets and adds double entries
    null_ls.builtins.completion.luasnip
  },
  on_attach = on_attach
})
