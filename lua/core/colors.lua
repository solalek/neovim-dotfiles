-- Function to set a colorscheme and customize background highlights
function ColorMyPencils(color, bg)
    -- Use provided colorscheme or fallback to default
    color = color or "rose-pine"

    -- Optional argument for background, defaults to "none"
    bg = bg or "none"

    -- Attempt to set the colorscheme, handle errors if it doesn't exist
    local status_ok, _ = pcall(vim.cmd.colorscheme, color)
    if not status_ok then
        vim.notify("Colorscheme " .. color .. " not found!", vim.log.levels.ERROR)
        return
    end

    -- Set the highlight groups with customizable background
    vim.api.nvim_set_hl(0, "Normal", { bg = bg })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = bg })

    -- Return the selected colorscheme and background
    return { colorscheme = color, background = bg }
end

-- Call the function with default colorscheme and background
ColorMyPencils()

