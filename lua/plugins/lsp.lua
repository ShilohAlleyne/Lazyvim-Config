return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                lua_ls = {
                    settings = {
                        Lua = {
                            format = {
                                enable = true,
                                defaultConfig = {
                                    indent_style = "space",
                                    indent_size = "4",
                                },
                            },
                        },
                    },
                },
                gleam = {
                    settings = {
                        Gleam = {
                            format = {
                                enable = true,
                                defaultConfig = {
                                    indent_style = "space",
                                    indent_size = "4",
                                },
                            },
                        },
                    },
                },
                rust_analyzer = {
                    settings = {
                        ["rust-analyzer"] = {
                            imports = {
                                granularity = {
                                    group = "module",
                                },
                                prefix = "self",
                            },
                            cargo = {
                                buildScripts = {
                                    enable = true,
                                },
                            },
                            procMacro = {
                                enable = true,
                            },
                        },
                    },
                },
            },
        },
    },
}
