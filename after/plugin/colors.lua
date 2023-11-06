-- require("catppuccin").setup({
--     flavour = "mocha", -- latte, frappe, macchiato, mocha
--     background = {
--         -- :h background
--         light = "latte",
--         dark = "mocha"
--     },
--     priority = 150,
--     transparent_background = false,
--     show_end_of_buffer = false, -- show the '~' characters after the end of buffers
--     term_colors = true,
--     dim_inactive = {enabled = false, shade = "dark", percentage = 0.15},
--     no_italic = false, -- Force no italic
--     no_bold = false, -- Force no bold
--     styles = {
--         comments = {"italic"},
--         properties = {},
--         functions = {},
--         keywords = {},
--         operators = {},
--         conditionals = {},
--         loops = {},
--         booleans = {},
--         numbers = {},
--         types = {},
--         strings = {},
--         variables = {}
--     },
--     color_overrides = {
--         mocha = {
--             rosewater = "#EA6962",
--             flamingo = "#EA6962",
--             pink = "#D3869B",
--             mauve = "#D3869B",
--             red = "#EA6962",
--             maroon = "#EA6962",
--             peach = "#BD6F3E",
--             yellow = "#D8A657",
--             green = "#7bb555",
--             teal = "#89B482",
--             sky = "#89B482",
--             sapphire = "#89B482",
--             blue = "#7DAEA3",
--             lavender = "#7DAEA3",
--             text = "#D4BE98",
--             subtext1 = "#BDAE8B",
--             subtext0 = "#A69372",
--             overlay2 = "#8C7A58",
--             overlay1 = "#735F3F",
--             overlay0 = "#958272",
--             surface2 = "#4B4F51",
--             surface1 = "#2A2D2E",
--             surface0 = "#232728",
--             base = "#11111B",
--             mantle = "#181825",
--             crust = "#0f0f17"
--         }
--     },
--     custom_highlights = function(colors)
--         return {
--             ["@variable"] = {fg = colors.yellow},
--             NormalFloat = {bg = colors.crust},
--             FloatBorder = {bg = colors.crust, fg = colors.crust},
--             VertSplit = {bg = colors.base, fg = colors.surface0},
--             CursorLineNr = {fg = colors.mauve},
--             Pmenu = {bg = colors.crust, fg = ""},
--             PmenuSel = {bg = colors.surface0, fg = ""},
--             TelescopeSelection = {bg = colors.surface0},
--             TelescopePromptCounter = {fg = colors.mauve},
--             TelescopePromptPrefix = {bg = colors.surface0},
--             TelescopePromptNormal = {bg = colors.surface0},
--             TelescopeResultsNormal = {bg = colors.mantle},
--             TelescopePreviewNormal = {bg = colors.crust},
--             TelescopePromptBorder = {bg = colors.surface0, fg = colors.surface0},
--             TelescopeResultsBorder = {bg = colors.mantle, fg = colors.mantle},
--             TelescopePreviewBorder = {bg = colors.crust, fg = colors.crust},
--             TelescopePromptTitle = {fg = colors.surface0, bg = colors.surface0},
--             TelescopeResultsTitle = {fg = colors.mantle, bg = colors.mantle},
--             TelescopePreviewTitle = {fg = colors.crust, bg = colors.crust},
--             IndentBlanklineChar = {fg = colors.surface0},
--             IndentBlanklineContextChar = {fg = colors.surface2},
--             GitSignsChange = {fg = colors.peach},
--             NvimTreeIndentMarker = {link = "IndentBlanklineChar"},
--             NvimTreeExecFile = {fg = colors.text}
--         }
--     end,
--     integrations = {
--         treesitter = true,
--         cmp = true,
--         gitsigns = true,
--         nvimtree = true,
--         telescope = true,
--         notify = false,
--         mini = false,
--         neotree = true,
--         native_lsp = {
--             enabled = true,
--             virtual_text = {
--                 errors = {"italic"},
--                 hints = {"italic"},
--                 warnings = {"italic"},
--                 information = {"italic"}
--             },
--             underlines = {
--                 errors = {"underline"},
--                 hints = {"underline"},
--                 warnings = {"underline"},
--                 information = {"underline"}
--             }
--         }
--         -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--     }
-- })
-- vim.opt.background = "dark"
-- theme setup and enable
require('kanagawa').setup({
    colors = {
        palette = {
            springGreen = "#11f063",
            waveRed = "#E46876",
            fujiWhite = "#fcfcf7",
            surimiOrange = "#fc8338",
            carpYellow = "#e8ca46",
            autumnGreen = "#519437",
            waveAqua2 = "#2dc2a4",
            oniViolet = "#5df2fc"
        }
    }
})
vim.cmd.colorscheme "kanagawa-wave"
-- require("onedark").setup {
--   style = "deep",
--   colors = {
--     bg0 = "#06060a"
--   },
--   highlights = {
--     ["@variable"] = {fg = '#cc471f', fmt = 'italic'},
--   }
-- }
-- require("onedark").load();
