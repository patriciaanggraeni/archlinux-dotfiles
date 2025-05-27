local ReadTheme = {}

function ReadTheme.read_theme(theme_path)
  local f = io.open(theme_path, "r")
  if f then
    local name = f:read("*l")
    f:close()
    return name
  end
  return nil
end

return ReadTheme