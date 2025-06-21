return {
        "folke/tokyonight.nvim",
        priority = 1000,
        config = function()
            require("tokyonight").setup({
                style = "night", -- storm, moon, night, day
                light_style = "night",
                transparent = false,
                terminal_colors = true,
                styles = {
                    comments = { italic = true },
                    keywords = { italic = true },
                    functions = {},
                    variables = {},
                    sidebars = "dark",
                    floats = "dark",
                },
                sidebars = { "qf", "help" },
                day_brightness = 0.0,
                hide_inactive_statusline = false,
                dim_inactive = false,
                lualine_bold = false,
            })

            vim.cmd.colorscheme("tokyonight")
        end,
    }
