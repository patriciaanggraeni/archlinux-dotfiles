local Themes = {}

function Themes.install()
    return {
        { 'catppuccin/nvim', lazy = false },
        { 'navarasu/onedark.nvim', lazy = false },
        { 'tiagovla/tokyodark.nvim', lazy = false },
        { 'craftzdog/solarized-osaka.nvim', lazy = false, priority = 1000, opts = {}, }
    }
end

function Themes.load_theme()
    require('core.themes.list_theme.solarized-osaka')
end

return Themes
