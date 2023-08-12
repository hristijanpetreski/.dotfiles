function ColorMyVim(color, transparent)
    color = color or "onedark"
    vim.cmd.colorscheme(color)

    if transparent then
        -- Transparent background
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
end

ColorMyVim()
