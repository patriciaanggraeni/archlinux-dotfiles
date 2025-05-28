local capabilities = require('cmp_nvim_lsp').default_capabilities()
local M = {}

require('lspconfig').lua_ls.setup({
    capabilities = capabilities,
    cmd = { vim.fn.expand('~/.config/archlinux-dotfiles/assets/nvim-lsp/lua-language-server/bin/lua-language-server') },
    on_init = function(client)
        if client.workspace_folders then
            local path = client.workspace_folders[1].name

            if path ~= vim.fn.stdpath('config') and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc')) then
                return
            end
        end

        client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
            runtime = {
                version = 'LuaJIT',
                path = {
                    'lua/?.lua',
                    'lua/?/init.lua',
                },
            },
            workspace = {
                checkThirdParty = false,
                library = {
                    vim.env.VIMRUNTIME,
                },
            },
        })
    end,
    settings = {
        Lua = {
            workspace = {
                preloadFileSize = 500,
            }
        },
    },
})

return M
