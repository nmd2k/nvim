vim.api.nvim_create_user_command("PackAdd", function(opts)
    vim.pack.add(opts.fargs)
end, { nargs = "+", desc = "Add plugin (:PackAdd user/repo user/repo2)" })

vim.api.nvim_create_user_command("PackDel", function(opts)
    vim.pack.del(opts.fargs)
end, { nargs = "+", desc = "Delete plugin (:PackAdd plugin1 plugin2)" })

vim.api.nvim_create_user_command("PackUpdate", function(opts)
    -- checks if any argument is passed
    if opts.args:match("%S") then
        local plugins = vim.split(opts.args, "%s+", { trimempty = true })
        vim.pack.update(plugins)
    else
        vim.pack.update()
    end
end, { nargs = "+", desc = "Update all plugins or specific ones" })

