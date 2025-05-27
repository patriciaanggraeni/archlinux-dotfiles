-- local save = require('lua.core.themes.utils.save_theme')
local read = require('core.themes.utils.read_theme')
local load = require('core.themes.utils.load_theme')
local themes = require('core.themes.utils.list_theme')
local change = require('core.themes.utils.change_theme')

local Themes = {}
local theme_path = vim.fn.stdpath("config") .. "/lua/core/themes/log/theme.txt"
local last_theme = read.read_theme(theme_path)

if last_theme and themes.themes[last_theme] then
  themes.themes[last_theme]()
  load.load_theme(last_theme)
end

vim.api.nvim_create_user_command("ChangeTheme", function(opts)
  change.change_theme(theme_path, opts.args)
end, {
  nargs = 1,
  complete = function()
    return { "catppuccin", "onedark", "tokyodark" }
  end,
})

return Themes