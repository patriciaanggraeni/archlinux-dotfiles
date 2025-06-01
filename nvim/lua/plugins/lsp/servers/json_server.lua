local capabilities = require('cmp_nvim_lsp').default_capabilities()
local M = {}

function M.setup()
    require('lspconfig').jsonls.setup {
        capabilities = capabilities,
        -- cmd = { vim.fn.expand('~/.config/archlinux-dotfiles/assets/nvim-lsp/node_modules/vscode-langservers-extracted/bin/vscode-json-language-server'), '--stdio' },
        root_dir = vim.fn.getcwd(),
        settings = {
            json = {
                schemas = {
                    { 
                        fileMatch = { "package.json" },
                        url = "https://raw.githubusercontent.com/SchemaStore/schemas/master/json/schemas/npm-package.json" 
                    },
                    { 
                        fileMatch = { ".eslintrc", ".eslintrc.json" },
                        url = "https://raw.githubusercontent.com/SchemaStore/schemas/master/json/schemas/eslintrc.json" 
                    },
                    { 
                        fileMatch = { "tsconfig.json", "jsconfig.json" },
                        url = "https://raw.githubusercontent.com/SchemaStore/schemas/master/json/schemas/tsconfig.json" 
                    },
                    {
                        fileMatch = { ".json" },
                        url = "http://json.schemastore.org/abstract-json-schema",
                    },
                },
            },
        },
    }
end

return M
