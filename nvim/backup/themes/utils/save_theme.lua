local SaveTheme = {}

function SaveTheme.save_theme(theme_path, name)
  local f = io.open(theme_path, "w")
  if f then
    f:write(name)
    f:close()
  end
end

return SaveTheme