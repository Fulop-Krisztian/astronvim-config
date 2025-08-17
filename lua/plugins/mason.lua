-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Mason

---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        -- install language servers
        "lua-language-server",

        -- install formatters
        "stylua",

        -- install debuggers
        "debugpy",

        -- install any other package
        "tree-sitter-cli",

        -- ==== Custom LSP servers ====

        -- scripting languages
        "bash-language-server",
        -- lua
        "lua-language-server",
        "selene",
        "stylua",
        -- python
        "pyright",
        "ansible-language-server",
        -- javascript/typescript
        "js-debug-adapter",
        "eslint-lsp",
        "vtsls",

        -- markup languages
        "html-lsp",
        "json-lsp",
        "yaml-language-server",
        "taplo", -- TOML

        -- configuration languages
        "hyprls",
        "nginx-language-server",
        "nginx-config-formatter",

        -- low-level languages
        "clangd",

        -- formatters
        "prettier",
        "prettierd",

        "codelldb",
      },
    },
  },
}
