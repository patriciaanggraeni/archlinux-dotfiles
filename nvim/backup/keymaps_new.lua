vim.g.mapleader = '/'
vim.g.localmapleader = '/'

local Keymaps = {}
local telescope = require("telescope.builtin")

local normal_keymaps = {
    { mode = 'n', keys = '<leader>x', command = '"+d$' },
    { mode = 'n', keys = '<leader>c', command = '"+y$' },
    { mode = 'n', keys = '<leader>v', command = '"+p' },

    { mode = 'n', keys = '<leader>s', command = ':w<CR>' },
    { mode = 'n', keys = '<leader>q', command = ':q<CR>' },
    { mode = 'n', keys = '<leader>S', command = ':wq<CR>' },

    { mode = 'n', keys = '<leader>z', command = 'u' },
    { mode = 'n', keys = '<leader>y', command = '<C-r>' },
    { mode = 'n', keys = '<leader>a', command = 'ggVG' },

    { mode = 'n', keys = '<leader>H', command = ':split<CR>' },
    { mode = 'n', keys = '<leader>V', command = ':vsplit<CR>' },
    { mode = 'n', keys = '<leader>Q', command = ':close<CR>' },

    { mode = 'n', keys = '<leader>k', command = '<C-w>k' },
    { mode = 'n', keys = '<leader>j', command = '<C-w>j' },
    { mode = 'n', keys = '<leader>h', command = '<C-w>h' },
    { mode = 'n', keys = '<leader>l', command = '<C-w>l' },

    { mode = 'n', keys = '<leader>/', command = '/' },
    { mode = 'n', keys = '<leader>R', command = ':%s/\\<<C-r><C-w>\\>/' },

    { mode = 'n', keys = '<leader>w', command = '<C-w>w' },
    { mode = 'n', keys = '<leader>b', command = ':NvimTreeToggle<CR>' },
    { mode = 'n', keys = '<leader>e', command = ':NvimTreeFocus<CR>' },

    { mode = 'n', keys = '<leader>fg', command = telescope.find_files, opts = { desc = 'Live Grep' } },
    { mode = 'n', keys = '<leader>ff', command = telescope.find_files, opts = { desc = 'Find File' } },
    { mode = 'n', keys = '<leader>fb', command = function() require('telescope').extensions.file_browser.file_browser() end, opts = { desc = 'File Browser' } },
    
    { mode = 'n', keys = '<leader>ls', command = ':lua lazy_sync()<CR>', opts = { noremap = true, silent = true } }
}

local visual_keymaps = {
    { mode = 'v', keys = '<leader>d', command = 'd' },
    { mode = 'v', keys = '<leader>x', command = '"+d' },
    { mode = 'v', keys = '<leader>c', command = '"+y' }
}

local insert_keymaps = {
    -- { mode = 'i', keys = '<leader><Space>', command = "cmp.mapping.complete()" },
    -- { mode = 'i', keys = '<leader>t', command = "cmp.mapping.select_next_item()" },
    -- { mode = 'i', keys = '<leader>y', command = "cmp.mapping.select_prev_item()" },
    -- { mode = 'i', keys = '<CR>', command = "cmp.mapping.confirm({ select = true }) },
}

local set_keymap = function(mode, mappings)
    for _, map in ipairs(mappings) do
        vim.keymap.set(
            mode, 
            map.keys, 
            map.command, 
            vim.tbl_extend('force', { noremap = true, silent = true }, map.opts or {})
        )
    end
end

function Keymaps.setup()
    set_keymap('n', normal_keymaps)
    set_keymap('i', insert_keymaps)
    set_keymap('v', visual_keymaps)
end

return Keymaps