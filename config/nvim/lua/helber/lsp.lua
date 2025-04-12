
local lspconfig = require('lspconfig')
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

mason.setup()
mason_lspconfig.setup({
    ensure_installed = { "pyright", "r_language_server" },
    automatic_installation = true,
})

-- Python
lspconfig.pyright.setup({})
-- R
lspconfig.r_language_server.setup({})
