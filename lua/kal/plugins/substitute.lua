return {
    "gbprod/substitute.nvim",
    event = {"BufReadPre", "BufNewFile"}, 
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    }, 
    config = function()
      local substitute  = require("substitute")
      vim.keymap.set("n", "s", substitute.operator, {desc = "Substitue with motion", noremap=true})
      vim.keymap.set("n", "ss", substitute.line, {desc = "Substitue line", noremap=true})
      vim.keymap.set("n", "S", substitute.eol, {desc = "Substitue to end of line", noremap=true})
      vim.keymap.set("x", "s", substitute.operator, {desc = "Substitue in visual mode", noremap=true})
    end
}
