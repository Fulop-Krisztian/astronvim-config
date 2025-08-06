-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
-- User Configuration. This is where you define configurations for neovim itself
-- TODO: This is where you configure tabs vs spaces. Configure for tabs.
-- vim.opt.autochdir = true
vim.opt.wrap = true
-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Enable KDE clipboard integration
-- https://nramkumar.org/tech/blog/2025/05/11/neovim-copying-to-the-system-clipboard-in-kde/
-- (you need the wl-clipboard package installed as well on wayland)
-- yay -S wl-clipboard
vim.api.nvim_set_option_value("clipboard", "unnamedplus", {})
