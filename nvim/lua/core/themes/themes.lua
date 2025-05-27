local Themes = {}

function Themes.install()
    return {
        { 'catppuccin/nvim', lazy = false },
        { 'navarasu/onedark.nvim', lazy = false },
        { 'tiagovla/tokyodark.nvim', lazy = false },
    }
end

function Themes.load_theme()
    require('core.themes.list_theme.catppuccin')
end

return Themes