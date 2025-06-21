return{
  "L3MON4D3/LuaSnip",
  config = function()
    local ls = require("luasnip")

    -- Load snippets
    require("luasnip.loaders.from_snipmate").lazy_load({
      paths = { "~/.config/nvim/snippets/cp_c++" },
    })

    -- Key mappings
    vim.keymap.set({"i", "s"}, "<Tab>", function()
      if ls.expand_or_jumpable() then
        ls.expand_or_jump()
      else
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
      end
    end)

    vim.keymap.set({"i", "s"}, "<S-Tab>", function()
      if ls.jumpable(-1) then
        ls.jump(-1)
      else
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<S-Tab>", true, false, true), "n", false)
      end
    end)
  end,
}
