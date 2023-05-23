
local ayu_colors = require('ayu.colors')
ayu_colors.generate(true) -- Pass `true` to enable mirage

require('rose-pine').setup({
    variant = "main", --main, moon, dawn	
    dark_variant = "main",
})
require('catppuccin').setup({
    flavour = "macchiato", --latte, frappe, macchiato, mocha
})
require('kanagawa').setup({
    theme = "lotus", --wave, dragon, lotus
})
require('onedark').setup {
    style = 'cool'
}
require('ayu').setup({
    mirage = true, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
    overrides = { -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
        -- TO DEFINE
        -- parentheses: #ffd700
        -- classes (also covers exceptions): ayu_colors.entity #73D0FF

        DiagnosticUnnecessary = {fg = '#9f8bba', sp = ayu_colors.regexp, undercurl = true, italic = true},
        Comment = {fg = '#6c7a8b', italic = true},
        --['@lsp.type.parameter'] = { fg = ayu_colors.lsp_parameter },
        --['@lsp.type.parameter'] = { fg = '#00ff00' },
    },
})

vim.opt.termguicolors = true


function ColorRefresh(theme)

    print("Setting color scheme to", theme)



    -- Apply theme and disable background
    --vim.cmd.colorscheme('ayu-mirage')
    vim.cmd.colorscheme(theme)
    --vim.api.nvim_set_hl(0, "Normal", {bg = "none", ctermbg = "none"})
    --vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none", ctermbg = "none"})
    --print("test")

    --vim.api.nvim_set_hl(0, '@lsp.type.parameter', {fg = 'Purple'})
    --vim.api.nvim_set_hl(0, '@lsp.type.parameter', {fg = ayu_colors.lsp_parameter})
    --vim.api.nvim_set_hl(0, 'parameter', {fg = ayu_colors.lsp_parameter})
    --vim.api.nvim_set_hl(0, '@lsp.type.parameter', {fg = '#00ff00'})
    --vim.api.nvim_set_hl(0, 'parameter', {fg = '#00ff00'})

    --require('lualine').setup({
    --  options = {
    --    theme = 'ayu',
    --  },
    --})

end

ColorRefresh('ayu-mirage')

--vim.api.nvim_create_autocmd("BufEnter", command = ":hi Normal guibg=none ctermbg=none")
--vim.api.nvim_create_autocmd("BufEnter", command = ":hi NormalFloat guibg=none ctermbg=none")

--vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
--vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})

vim.keymap.set('n', '<A-1>', function() ColorRefresh('ayu-mirage') end)
vim.keymap.set('n', '<A-2>', function() ColorRefresh('tokyonight-night') end)
vim.keymap.set('n', '<A-3>', function() ColorRefresh('catppuccin-mocha') end)
vim.keymap.set('n', '<A-4>', function() ColorRefresh('rose-pine') end)
vim.keymap.set('n', '<A-5>', function() ColorRefresh('dracula') end)
vim.keymap.set('n', '<A-6>', function() ColorRefresh('onedark') end)
vim.keymap.set('n', '<A-7>', function()
    vim.g.material_style = "deep ocean"
    ColorRefresh('material')
end)
vim.keymap.set('n', '<A-8>', function()
    vim.g.material_style = "palenight"
    ColorRefresh('material')
end)

vim.keymap.set('n', '<A-9>', function() ColorRefresh('neobones') end)
vim.keymap.set('n', '<A-0>', function() ColorRefresh('rosebones') end)
vim.keymap.set('n', '<A-->', function() ColorRefresh('tokyobones') end)
vim.keymap.set('n', '<A-=>', function() ColorRefresh('nightfly') end)


