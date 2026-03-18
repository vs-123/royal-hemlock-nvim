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
   Cursor           = { fg = colours.white, bg = colours.black },
   CursorLine       = { bg = colours.hl_line },
   CursorLineNr     = { fg = colours.majestic, bg = colours.background, bold = true },
   Directory        = { fg = colours.majestic, bg = colours.background, bold = true },
   IncSearch        = { fg = colours.black, bg = colours.highlight_bg, bold = true },
   LineNr           = { fg = colours.grey, bg = colours.background },
   MatchParen       = { fg = colours.black, bg = colours.highlight_bg },
   ModeMsg          = { fg = colours.majestic, bg = colours.background },
   Normal           = { fg = colours.text, bg = colours.background },
   Operator         = { fg = colours.black },
   Pmenu            = { fg = colours.text, bg = colours.hl_line },
   Search           = { fg = colours.black, bg = colours.highlight_bg, bold = true },
   StatusLine       = { fg = colours.white, bg = colours.majestic, bold = true },
   StatusLineNC     = { fg = colours.grey, bg = colours.text },
   Visual           = { fg = colours.black, bg = colours.cursor_bg },

   Comment          = { fg = colours.string },
   Constant         = { fg = colours.pink, bold = true },
   Error            = { fg = colours.majestic, bold = true },
   Function         = { fg = colours.text },
   Identifier       = { fg = colours.black },
   PreProc          = { fg = colours.majestic, bold = true },
   Special          = { fg = colours.majestic, bold = true },
   Statement        = { fg = colours.majestic, bold = true },
   String           = { fg = colours.string },
   Todo             = { fg = colours.pink, bold = true },
   Type             = { fg = colours.majestic, bold = true },
   Underlined       = { fg = colours.majestic, underline = true, bold = true },

   ["@function"]    = { fg = colours.text },
   ["@keyword"]     = { fg = colours.majestic, bold = true },
   ["@number"]      = { fg = colours.pink, bold = true },
   ["@operator"]    = { fg = colours.black },
   ["@punctuation"] = { fg = colours.black },
   ["@string"]      = { fg = colours.string },
   ["@type"]        = { fg = colours.majestic, bold = true },
   ["@variable"]    = { fg = colours.black },
}

for group, settings in pairs(groups) do
   vim.api.nvim_set_hl(0, group, settings)
end
