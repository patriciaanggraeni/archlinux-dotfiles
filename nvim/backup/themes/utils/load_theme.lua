local LoadTheme = {}

function LoadTheme.load_theme(name)
    local ok, err = pcall(require, 'lua.core.themes.list_theme.' .. name)
    if not ok then
        vim.notify("Gagal memuat tema " .. name .. ": " .. err, vim.log.levels.WARN)
    end
end

return LoadTheme