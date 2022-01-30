local modules = {'_options', '_plugins', '_config', '_mappings', '_lsp', '_cmp'}

for _, module_name in ipairs(modules) do
    local ok, err = pcall(require, module_name)
    if not ok then
        error('Error calling ' .. module_name .. err)
    end
end
