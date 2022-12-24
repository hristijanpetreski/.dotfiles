-- Tokyo Night Theme
--vim.g.tokyonight_transparent_sidebar = true
--vim.g.tokyonight_transparent = true
--vim.opt.background = "dark"
--vim.cmd("colorscheme tokyonight")

-- Ayu Theme
--vim.opt.termguicolors = true
--vim.opt.background = dark
--vim.g.ayucolor = "dark"
--vim.cmd("colorscheme ayu")

function ColorMyVim(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    -- Transparent background
    vim.api.nvim_set_hl(0, "Normal", { bg = 'none' })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = 'none' })
end

ColorMyVim()
