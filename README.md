# nvim-cp
⚡Neovim setup optimized for Competitive Programming

> A lightweight, Neovim configuration optimized for competitive programming. Built with minimal plugins for maximum speed and efficiency.

## 🚀 Why Choose This Setup?

- ⚡ **Lightning Fast** - Starts instantly with minimal overhead
- 🎯 **Focused** - Only what you need for competitive programming
- 🔧 **Minimal** - No bloat, just essential tools
- 🛠️ **Maintainable** - Clean and simple configuration
- 🔄 **Efficient** - Optimized keymaps for faster coding

## 🔌 Plugins Used

This configuration uses a minimal set of carefully selected plugins:

### Core Plugins
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - Configurations for Neovim LSP client
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Completion plugin
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippet engine for Neovim
- [folke/flash.nvim](https://github.com/folke/flash.nvim) - Enhanced search and navigation
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs) - Autopair plugin
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim) - Clean and beautiful color scheme

### Competitive Programming
- [xeluxee/competitest.nvim](https://github.com/xeluxee/competitest.nvim) - Test runner for competitive programming


## 🛠️ Quick Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/anish384/nvim-cp ~/.config/nvim
   ```

2. **Install Dependencies**:
   - Neovim 0.8 or later
   - g++ (for C++ compilation)
   - clangd (for code intelligence)

3. **Launch Neovim**:
   ```bash
   nvim
   ```
   Plugins will install automatically on first run.

> 💡 **Note**: For optimal experience, ensure you have a Nerd Font installed in your terminal.

## 🎯 Optimized Keymaps for CP

Navigate and edit your competitive programming solutions with these efficient keymaps:

| Key          | Action                                 |
|--------------|----------------------------------------|
| `gt`         | Jump to test cases and back            |
| `T`          | Toggle comment on test cases           |
| `gs`         | Jump to solve function                |
| `<space>z`   | Fold solve function                  |
| `<space>cs`  | Copy solve function                  |
| `<space>ci`  | Edit solve function                  |

### Keymap Details

1. **Navigate Test Cases** (`gt`)
   ```lua
   keymap.set("n", "gt", "/cin >> t;<CR>_xxx<ESC>/void solve()<CR>j<ESC>zz",
     { desc = "Jump between test cases and solution", silent = true })
   ```
   Quickly jump to test cases section and back to your solution.

2. **Toggle Test Cases** (`T`)
   ```lua
   keymap.set("n", "T", "/cin >> t;<CR>i// <ESC>/void solve()<CR>j<ESC>zz",
     { desc = "Toggle test cases comment", silent = true })
   ```
   Comment/uncomment test cases with a single key.

3. **Go to Solve** (`gs`)
   ```lua
   keymap.set("n", "gs", "/void solve()<CR>j<ESC>zz",
     { desc = "Jump to solve function", silent = true })
   ```
   Instantly jump to your solution function.

4. **Fold Solve** (`<space>z`)
   ```lua
   keymap.set("n", "<space>z", "ggV/upto<CR>zf/void solve()<CR>j<ESC>zz",
     { desc = "Fold solve function", silent = true })
   ```
   Focus better by folding the solution.

> 💡 **Note**: These keymaps are tailored for a My CP template. Adjust them according to yours.

## 📝 Snippets for Competitive Programming

### 🛠️ Setting Up Snippets

1. **Snippet Location**
   - Snippets are stored in: `~/.config/nvim-cp/cp_c++/cpp.snippets`
   - Using SnipMate format for simplicity and ease of use

2. **Configure Snippet Path**
   Update the path in `~/.config/nvim/lua/plugins/snippets.lua` according to yours:
   ```lua
   require("luasnip.loaders.from_snipmate").lazy_load({
     paths = { "~/.config/nvim-cp/cp_c++" }  -- Update this path
   })
   ```

### ✨ Creating Snippets

Use the SnipMate format for easy snippet creation. Example:

```snippets
# Basic C++ template
snippet basic
	#include <bits/stdc++.h>
	using namespace std;
	#define int long long

	void solve() {
	    ${0}
	}

	int32_t main() {
	    ios_base::sync_with_stdio(false);
	    cin.tie(NULL);

	    int t = 1;
	    // cin >> t;

	    while (t--) {
	        solve();
	    }

	    return 0;
	}

```


## 🎨 Visuals

### Color Scheme
- Clean, minimal color scheme for reduced eye strain
- Optimized for long coding sessions
- Customize in `lua/plugins/colorscheme.lua`

### Font
- Recommended: Any Nerd Font (e.g., FiraCode Nerd Font)
- Configure in your terminal emulator


## 📜 License

MIT License - Feel free to use and modify as you see fit.

## 🙏 Credits

- Neovim team for the amazing editor
- Plugin authors for their fantastic work
- Competitive programming community for inspiration

---

Happy Coding! 🚀

