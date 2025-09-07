-- ~/.config/nvim/lua/config/keymaps.lua
-- Neovim keymaps configuration

local keymap = vim.keymap

-- General keymaps
keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode with jk" })

-- Navigation
keymap.set("n", "J", "%", { desc = "Jump to matching bracket", silent = true })
keymap.set("n", "L", "$", { desc = "Jump to end of line", silent = true })
keymap.set("n", "H", "^", { desc = "Jump to beginning of line", silent = true })
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center", silent = true })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center", silent = true })
keymap.set("n", "n", "nzzzv", { desc = "Next search result and center", silent = true })
keymap.set("n", "N", "Nzzzv", { desc = "Previous search result and center", silent = true })

-- Window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically", silent = true })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally", silent = true })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size", silent = true })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split", silent = true })
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window", silent = true })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to lower window", silent = true })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to upper window", silent = true })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window", silent = true })

keymap.set("n", "<leader>do", "<cmd>lua vim.diagnostic.open_float()<CR>", { desc = "diagnostics", silent = true })

-- Window resizing
keymap.set("n", "<C-Up>", "<cmd>resize +2<CR>", { desc = "Increase window height", silent = true })
keymap.set("n", "<C-Down>", "<cmd>resize -2<CR>", { desc = "Decrease window height", silent = true })
keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<CR>", { desc = "Decrease window width", silent = true })
keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { desc = "Increase window width", silent = true })

-- Buffer management
-- keymap.set("n", "<S-h>", "<cmd>bprevious<CR>", { desc = "Previous buffer", silent = true })
-- keymap.set("n", "<S-l>", "<cmd>bnext<CR>", { desc = "Next buffer", silent = true })
keymap.set("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Delete buffer", silent = true })

-- Tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab", silent = true })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab", silent = true })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab", silent = true })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab", silent = true })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab", silent = true })

-- Editing
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number", silent = true })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number", silent = true })
keymap.set("n", "<space>=", "ggVG=", { desc = "Format entire file", silent = true })
keymap.set("n", "<space>ad", "ggVGd", { desc = "Select and delete all content", silent = true })
keymap.set("n", "Y", 'gg"+yG', { desc = "Yank entire file to clipboard", silent = true })
keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "Save file", silent = true })
keymap.set("n", "<leader>qq", "<cmd>qa<CR>", { desc = "Quit all", silent = true })

-- Visual mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down", silent = true })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up", silent = true })
keymap.set("v", "L", ">gv", { desc = "Indent right", silent = true })
keymap.set("v", "H", "<gv", { desc = "Indent left", silent = true })
keymap.set("v", "p", '"_dP', { desc = "Paste without yanking", silent = true })
keymap.set("v", "<", "<gv", { desc = "Indent left and reselect", silent = true })
keymap.set("v", ">", ">gv", { desc = "Indent right and reselect", silent = true })

-- Line movement
keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down", silent = true })
keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up", silent = true })
keymap.set("v", "<S-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down", silent = true })
keymap.set("v", "<S-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up", silent = true })

-- File operations
keymap.set("n", "<space>f", "<cmd>Ex<CR>", { desc = "Open file explorer", silent = true })
keymap.set("n", "<space>w", "<cmd>wq<CR>", { desc = "Save and quit", silent = true })

-- Competitive Programming
keymap.set("n", "<space>cc", "<cmd>CompetiTest receive contest<CR>", { desc = "CompetiTest receive contest", silent = true })
keymap.set("n", "<space>cr", "<cmd>CompetiTest run<CR>", { desc = "CompetiTest run", silent = true })
keymap.set("n", "<space>aa", "<cmd>CompetiTest add_testcase<CR>", { desc = "CompetiTest add testcase", silent = true })
keymap.set("n", "<space>dd", "<cmd>CompetiTest delete_testcase<CR>", { desc = "CompetiTest delete testcase", silent = true })
keymap.set("n", "<space>ee", "<cmd>CompetiTest edit_testcase<CR>", { desc = "CompetiTest edit testcase", silent = true })
keymap.set("n", "<space>ct", "<cmd>CompetiTest receive testcases<CR>", { desc = "CompetiTest receive testcases", silent = true })
keymap.set("n", "gt", "/cin >> t;<CR>_xxx<ESC>/void solve()<CR>j<ESC>zz", { desc = "Go to test cases", silent = true })
keymap.set("n", "R", "/cin >> t;<CR>i// <ESC>/void solve()<CR>j<ESC>zz", { desc = "Comment test cases", silent = true })
keymap.set("n", "gs", "/void solve()<CR>j<ESC>zz", { desc = "Go to solve function", silent = true })
keymap.set("n", "<space>z", "ggV/upto<CR>zf/void solve()<CR>j<ESC>zz", { desc = "Fold solve function", silent = true })
keymap.set("n", "<space>cs", "/void solve()<CR>Vj%y", { desc = "Copy solve function", silent = true })
keymap.set("n", "<space>ci", "/void solve()<CR>jvi{d%o", { desc = "Edit solve function", silent = true })

-- Insert mode
keymap.set("i", "ww", "<C-w>", { desc = "Delete word in insert mode", silent = true })
keymap.set("i", "wd", "<ESC>ddO", { desc = "Delete line and create new line", silent = true })

vim.opt.laststatus = 0

vim.keymap.set("n", "<space>r", function()
    -- 1. Save the current file before doing anything
    vim.cmd("w")

    -- 2. Get file information
    local filepath = vim.fn.expand("%")            -- Full path, e.g., /path/to/file.cpp
    local filename_no_ext = vim.fn.expand("%:r")   -- Path and filename without extension, e.g., /path/to/file
    local file_ext = vim.fn.expand("%:e")          -- Just the extension, e.g., cpp

    -- 3. Shell-escape the file paths to handle spaces or special characters
    local escaped_filepath = vim.fn.shellescape(filepath)
    local escaped_filename_no_ext = vim.fn.shellescape(filename_no_ext)

    -- 4. Determine the command to run based on the file extension
    local command_to_run
    if file_ext == "cpp" then
        command_to_run = "g++ -I ~/.local/include -DlocalInclude -fsanitize=address -std=c++20 -Wall -Wextra -Wshadow -Dlocal -O2 -o "
                         .. escaped_filename_no_ext .. " " .. escaped_filepath .. " && ./" .. escaped_filename_no_ext .. "\n"
    elseif file_ext == "c" then
        command_to_run = "gcc -std=c89 -pedantic -Wall -Wextra " .. escaped_filepath .. " -o " .. escaped_filename_no_ext
                         .. " && ./" .. escaped_filename_no_ext .. "\n"
    elseif file_ext == "py" then
        command_to_run = "python3 " .. escaped_filepath .. "\n"
    else
        -- If the file type is not supported, notify the user and stop.
        vim.notify("Unsupported file type for running: " .. file_ext, vim.log.levels.WARN)
        return
    end

    -- 5. Open a terminal to run the command
    vim.cmd("terminal")

    -- 6. Defer sending the command to ensure the terminal has initialized
    vim.defer_fn(function()
        -- 7. Send the constructed command to the terminal's channel
        vim.api.nvim_chan_send(
            vim.b.terminal_job_id,
            command_to_run
        )
        -- 8. Switch to insert mode in the terminal for convenience
        vim.api.nvim_feedkeys("i", "t", false)
    end, 100)
end, { noremap = true, silent = true, desc = "Compile/Run current file based on type" })

