local ListTheme = {}

ListTheme.themes = {
  catppuccin = function()
    vim.cmd("colorscheme catppuccin")
  end,
  onedark = function()
    require("onedark").load()
  end,
  tokyodark = function()
    vim.cmd("colorscheme tokyodark")
  end,
}

return ListTheme