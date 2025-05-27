local save = require('core.themes.utils.save_theme')
local load = require('core.themes.utils.load_theme')
local theme = require('core.themes.utils.list_theme')

local ChangeTheme = {}

function ChangeTheme.change_theme(theme_path, name)
  if theme.themes[name] then
    theme.themes[name]()
    vim.notify("Tema berhasil diganti menjadi " .. name, vim.log.levels.INFO)
    save.save_theme(theme_path, name)
    load.load_theme(name)
  else
    vim.notify("Tema tidak ditemukan: " .. name, vim.log.levels.ERROR)
  end
end

return ChangeTheme