local mason_lspconfig = require("mason-lspconfig")

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

mason_lspconfig.setup({
    ensure_installed = {
        --"basedpyright",
        "pyright",
        "clangd",
        "gopls",
        "hls", --haskell-language-server
        "julials", --julia-lsp
        "lua_ls", --lua-language-server
        --"mypy",
        "rust_analyzer", --rust-analyzer
        "zls",
    },
    automatic_installation = true,
})


