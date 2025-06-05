local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    checker = { enabled = false },
    spec = {

        -- install plugins
        { 'nvim-lua/plenary.nvim' },
        { 'nvimtools/none-ls.nvim' },
        { 'nvim-tree/nvim-tree.lua' },
        { 'nvim-telescope/telescope.nvim' },
        {
            'nvim-telescope/telescope-file-browser.nvim',
            dependencies = { 
                'nvim-telescope/telescope.nvim', 
                'nvim-lua/plenary.nvim' 
            }
        },
        { 'akinsho/toggleterm.nvim', cmd = 'ToggleTerm' },
      { 'nvim-treesitter/nvim-treesitter', event = { 'BufReadPre', 'BufNewFile' } },
      { 'windwp/nvim-autopairs', event = 'InsertEnter' },
      { 'neovim/nvim-lspconfig', event = 'BufReadPre' },
      { 'williamboman/nvim-lsp-installer', event = 'BufReadPre' },
      { 'lukas-reineke/indent-blankline.nvim', main = 'ibl', opts = {} },
      { 'tpope/vim-fugitive', event = 'BufNewFile' },
      { 'petertriho/cmp-git', event = 'InsertEnter' },
      { 'lewis6991/gitsigns.nvim', event = { 'BufReadPre', 'BufNewFile' } },
      { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },
      { 'rcarriga/nvim-notify' },
      { 'numToStr/Comment.nvim' },
      {
          'hrsh7th/nvim-cmp',
          event = 'InsertEnter',
          dependencies = {
            { 'hrsh7th/cmp-nvim-lsp', event = 'InsertEnter' },
            { 'hrsh7th/cmp-buffer', event = 'InsertEnter' },
            { 'hrsh7th/cmp-path', event = 'InsertEnter' },
            { 'hrsh7th/cmp-cmdline', event = 'CmdlineEnter' },
            { 'L3MON4D3/LuaSnip', event = 'InsertEnter' },
          }
      },
      { require('plugins.cmp') },
      { require('plugins.tree') },
      { require('plugins.notify') },
      { require('plugins.nonels') },
      { require('plugins.lualine') },
      { require('plugins.comment') },
      { require('plugins.gitsigns') },
      { require('plugins.autopairs') },
      { require('plugins.blankline') },
      { require('plugins.telescope') },
      { require('plugins.treesitter') },
      { require('plugins.toggleterm') },
      { require('core.themes.themes').install() },
    },
})

require('plugins.lsp.lsp')
require('core.themes.themes').load_theme()
