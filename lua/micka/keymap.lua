local status, telescope = pcall(require, 'telescope');
if (not status) then return end

local function telescope_buffer_dir() return vim.fn.expand('%:p:h') end

vim.g.mapleader = " " -- map key is now space

-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend("force", options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Auto complete
-- function _G.check_back_space()
--     local col = vim.fn.col('.') - 1
--     return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
-- end

-- Telescope related keymaps
map("n", "<C-p>", ":Telescope find_files find_command=rg,--ignore,--files<CR>")

-- Telescope live grep
map("n", "<leader>fg",
    ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")

-- keymaps for cycling thrcugh buffers and tabs
map("n", "<Tab>", ":bnext<CR>", {silent = true})
map("n", "<S-Tab>", ":bprevious<CR>", {silent = true})
map("n", "<c-Y>", ":bprevious<CR>", {silent = true})

-- key remap for exiting terminal
map("t", "<Esc>", "<C-\\><C-n>")

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- use splits efficiently with leader key
map('n', '<leader>sv', '<C-w>v') -- split window vertically
map('n', '<leader>sh', '<C-w>s') -- split window horizontally
map('n', '<leader>se', '<C-w>=') -- make split windows equal width
map('n', '<leader>sx', ':close<CR>') -- close current split window
map('n', '<leader>sw', '<C-w>w') -- switch to any floating window

-- close buffer
map('n', '<C-q>', ':Bdelete<CR>', {silent = true})

-- when delete character, do not copy in clipboard
map('n', 'x', '"_x')

-- Telescope open browser at current buffer
-- vim.keymap.set("n", "<leader>e", function()
--   telescope.extensions.file_browser.file_browser({
--     path = "%:p:h",
--     cwd = telescope_buffer_dir(),
--     respect_gitignore = false,
--     hidden = true,
--     grouped = true,
--     initial_mode = "normal",
--   })
-- end)

-- Telescope open browser at root folder
-- vim.keymap.set("n", "<C-z>",
--   -- function()
--   "<Cmd>Telescope file_browser<CR>", {noremap = true}
--   -- telescope.extensions.file_browser.file_browser({
--   --   respect_gitignore = false,
--   --   hidden = true,
--   --   grcuped = true,
--   --   initial_mode = "normal",
--   -- })
-- -- end
-- )

-- LspSaga keymaps
local opts = {noremap = true, silent = true}
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gf', '<Cmd>Lspsaga finder<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga goto_definition<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga lsp_rename<CR>', opts)
vim.keymap.set('n', 'gca', '<Cmd>Lspsaga code_action<CR>', opts)
vim.keymap.set({"n", "t"}, "<A-d>", "<cmd>Lspsaga term_toggle<CR>",
               {silent = true})
vim.keymap.set('n', 'go', '<Cmd>Lspsaga outline<CR>', opts);
vim.keymap.set('n', 'ge', '<Cmd>Lspsaga show_buf_diagnostics<CR>', opts);
-- Center screen after vertical jumps
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- Harpoon commands
vim.keymap.set('n', '<leader>ha', ':lua require("harpoon.mark").add_file()<CR>',
               opts)
vim.keymap.set('n', '<leader>he',
               ':lua require("harpoon.ui").toggle_quick_menu()<CR>', opts)

-- Move line up or down
vim.keymap.set('n', "<A-j>", "ddp", {silent = true})
vim.keymap.set('n', "<A-k>", "ddkP", {silent = true})

-- NeoTree keymaps
vim.keymap.set('n', '<leader>e', '<Cmd>Neotree toggle<CR>', opts)
vim.keymap.set('n', '<C-e>', '<Cmd>Neotree focus<CR>', opts)
