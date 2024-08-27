return {
  "williamboman/mason.nvim",
  dependencies= {
    "williamboman/mason-lspconfig.nvim"
  },
  config = function()
    local mason = require("mason")
    mason.setup({    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }})
    -- REMEMBER TO ALWAYS SETUP FIRST MASON AND THEN MASON-LSPCONFIG
    local mason_lspconfig = require("mason-lspconfig")
    mason_lspconfig.setup({
      ensure_installed = {
        "html",
        "lua_ls",
        "jdtls",
        "clangd"
      },
    })
  end
}

