-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      -- Vim configuration languages 
      "lua",
      "vim",
      -- Config file languages 
      "yaml",
      "json",
      "toml",
      "nginx",
      -- Programming languages
      -- "rust",
      -- "python",
      -- "c",
      -- "cpp",
      -- Webdev 
      -- "typescript",
      -- "javascript",
      -- "html"
      -- "css"
      -- add more arguments for adding more treesitter parsers
    },
    -- Autoinstall should take care of the rest.
    auto_install = true,

  },
}
