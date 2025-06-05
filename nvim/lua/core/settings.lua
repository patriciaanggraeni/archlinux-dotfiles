local set = vim.opt
local api = vim.api
local group = api.nvim_create_augroup("Setting", { clear = true })

local options = {

    -- General
    mouse = "",
    backup = false,
    swapfile = false,
    writebackup = false,
    fileencoding = "utf-8",
    clipboard = "unnamedplus",
    completeopt = "menuone,noinsert,noselect",
    guicursor = { "n-v-c:block-blinkon500", "i:block-blinkon500" },

    -- Appearance
    wrap = false,
    number = true,
    showmode = true,
    linebreak = true,
    splitright = true,
    splitbelow = true,
    cursorline = false,
    breakindent = true,
    relativenumber = false,

    background = "dark",
    termguicolors = true,

    -- Indentation
    tabstop = 4,
    shiftwidth = 4,
    smarttab = true,
    expandtab = true,
    autoindent = true,
    smartindent = true,

    -- Search
    hlsearch = true,
    smartcase = true,
    ignorecase = true,

    -- Misc
    updatetime = 200,
    timeoutlen = 500,
    ttimeoutlen = 10,
    -- scrolloff = 8,
    -- undofile = true,
    -- cmdheight = 2,
    -- showcmd = true,
    -- redrawtime = 1000,
}

for k, v in pairs(options) do
    set[k] = v
end

vim.cmd([[
    syntax on
    filetype plugin indent on
]])

api.nvim_create_autocmd("BufWritePost", {
    group = group,
    pattern = "*.lua",
    callback = function(ctx)
        vim.cmd("source " .. ctx.file)
    end,
})
