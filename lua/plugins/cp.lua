return{
    'xeluxee/competitest.nvim',
    dependencies = 'MunifTanjim/nui.nvim',
    config = function() 
        require('competitest').setup({
            compile_command = {
                c = { exec = "gcc", args = { "-Wall", "$(FNAME)", "-o", "$(FNOEXT)" } },
                cpp = { exec = "g++", args = { "-I", os.getenv("HOME").. "/.local/include","-std=c++20","-DlocalInclude","-Wall", "$(FNAME)", "-o", "$(FNOEXT)" } },
                rust = { exec = "rustc", args = { "$(FNAME)" } },
                java = { exec = "javac", args = { "$(FNAME)" } },
            },
            popup_ui = {
                total_width = 0.8,
                total_height = 0.8,
                layout = {
                    { 2, "tc" },
                    { 3, {
                        { 1, "so" },
                        { 1, "si" },
                    } },
                    { 3, {
                        { 1, "eo" },
                        { 1, "se" },
                    } },
                }
            },
        }) 
    end,
}

