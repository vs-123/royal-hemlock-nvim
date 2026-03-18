-- [THEME] Royal Hemlock Theme
-- [LICENSE] GNU Affero General Public License v3.0
-- [DESCRIPTION] A Neovim port of my Royal Hemlock Theme, originally for Emacs
-- [AUTHOR] vs-123
-- [LINK] https://github.com/vs-123/royal-hemlock-nvim

local colours = {
   black        = "#000000",
   grey         = "#AAAAAA",
   white        = "#FFFFFF",
   background   = "#FFFFEE",
   hl_line      = "#F2F2E1",
   cursor_bg    = "#BFFFFF",
   highlight_bg = "#3FFFFF",
   majestic     = "#0000BB",
   string       = "#007F00",
   text         = "#3F3F3F",
   pink         = "#FC55C2",
}

if vim.g.colors_name then
   vim.cmd("hi clear")
end

vim.o.termguicolors = true
vim.g.colors_name = "royal-hemlock"

local groups = {
   Normal           = { fg = colours.text, bg = colours.background },
   Cursor           = { fg = colours.white, bg = colours.black },
   CursorLine       = { bg = colours.hl_line },
   Visual           = { fg = colours.black, bg = colours.cursor_bg },
   Search           = { fg = colours.black, bg = colours.highlight_bg, bold = true },
   IncSearch        = { fg = colours.black, bg = colours.highlight_bg, bold = true },
   LineNr           = { fg = colours.grey, bg = colours.background },
   CursorLineNr     = { fg = colours.majestic, bg = colours.background, bold = true },
   StatusLine       = { fg = colours.white, bg = colours.majestic, bold = true },
   StatusLineNC     = { fg = colours.grey, bg = colours.text },
   Pmenu            = { fg = colours.text, bg = colours.hl_line },
   MatchParen       = { fg = colours.black, bg = colours.highlight_bg },
   Operator         = { fg = colours.black },

   Comment          = { fg = colours.string },
   Constant         = { fg = colours.pink, bold = true },
   String           = { fg = colours.string },
   Identifier       = { fg = colours.black },
   Function         = { fg = colours.text },
   Statement        = { fg = colours.majestic, bold = true },
   PreProc          = { fg = colours.majestic, bold = true },
   Type             = { fg = colours.majestic, bold = true },
   Special          = { fg = colours.majestic, bold = true },
   Underlined       = { fg = colours.majestic, underline = true, bold = true },
   Error            = { fg = colours.majestic, bold = true },
   Todo             = { fg = colours.pink, bold = true },

   ["@variable"]    = { fg = colours.black },
   ["@punctuation"] = { fg = colours.black },
   ["@operator"]    = { fg = colours.black },
   ["@keyword"]     = { fg = colours.majestic, bold = true },
   ["@function"]    = { fg = colours.text },
   ["@string"]      = { fg = colours.string },
   ["@number"]      = { fg = colours.pink, bold = true },
   ["@type"]        = { fg = colours.majestic, bold = true },
}

for group, settings in pairs(groups) do
   vim.api.nvim_set_hl(0, group, settings)
end
