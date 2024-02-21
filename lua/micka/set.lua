vim.opt.guicursor = ""

vim.opt.cursorline = true
-- Show line numbers
vim.opt.nu = true
vim.wo.signcolumn = "yes"

-- show relative line numbers (hybrid because we also show line numbers)
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.smartindent = true

vim.opt.wrap = false

-- use os clipboard for copy/paste/cut
vim.opt.clipboard = unnamedplus
vim.opt.clipboard:append('unnamedplus')

vim.opt.hidden = true

vim.opt.mouse = "a"

vim.opt.splitbelow = true

vim.opt.splitright = true

vim.opt.title = true

vim.opt.wildmenu = true

vim.opt.ignorecase = true     -- Case insensitive searching UNLESS /C or capital in search

vim.opt.iskeyword:append("-") -- Dash will be considered a part  of a word

vim.opt.updatetime = 50

vim.opt.scrolloff = 8
vim.opt.showmode = false

-- used for folding
-- vim.o.foldcolumn = '3' -- '0' is not bad
-- vim.o.foldnestmax = 7
-- vim.o.foldlevel = 99   -- Using ufo provider need a large value, feel free to decrease the value
-- vim.o.foldlevelstart = 99
-- vim.o.foldenable = true
-- vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]

-- remove ligthbulb codeaction
vim.g.lspsaga_codeaction_prompt_enable = 0

-- vim.opt.statuscolumn = " "
