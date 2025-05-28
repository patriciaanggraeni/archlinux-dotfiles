local comment = {
    'numToStr/Comment.nvim',
    event = { 'BufReadPost', 'BufNewFile' },
    opts = {
        padding = true,
        sticky = false,
        ignore = nil,
        toggler = {
            line = 'gcc',
            block = 'gbc'
        },
        opleader = {
            line = 'gc',
            block = 'gb'
        },
        mappings = {
            basic = true,
        },
        pre_hook = nil,
        post_hook = nil
    }
}

return comment
