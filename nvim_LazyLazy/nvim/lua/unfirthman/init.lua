--require("theprimeagen.set")
require("unfirthman.remap")
require("unfirthman.packer")

vim.cmd("source ~/.config/nvim/lua/unfirthman/init.vim")

local augroup = vim.api.nvim_create_augroup
local UnfirthmanGroup = augroup('Unfirthman', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = UnfirthmanGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- set rainbow parenthesis
vim.g.rainbow_active = 1
vim.cmd([[ autocmd FileType * highlight rainbowcol1 guifg=#7B68EE gui=bold ]])
--hi rainbowcol1 guifg=#7B68EE
--autocmd VimEnter * RainbowToggle





