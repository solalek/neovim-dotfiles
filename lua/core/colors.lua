-- Nord colorscheme options
vim.g.nord_contrast = true
vim.g.nord_disable_background = true
vim.g.nord_cursorline_transparent = false
vim.g.nord_borders = false
vim.g.nord_italic = false

-- Function to set a colorscheme and customize background highlights
function ColorMyPencils(color, bg)
    -- Use provided colorscheme or fallback to default
    color = color or "nord"

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
--ColorMyPencils()
local colorscheme = "nord"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
