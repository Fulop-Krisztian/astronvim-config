-- this is an AI code completion tool
-- For this to work, a community package was installed as well
-- It modifies keybindings so that TAB has less functions, as to not compete with the AI code completion

return {
  "supermaven-inc/supermaven-nvim",
  event = "InsertEnter",
  cmd = { "SupermavenUseFree", "SupermavenUsePro" },
  opts = {
    keymaps = {
      accept_suggestion = nil, -- handled by completion engine
    },
  },
  specs = {
    {
      "AstroNvim/astrocore",
      opts = {
        options = {
          g = {
            -- set the ai_accept function
            ai_accept = function()
              local suggestion = require "supermaven-nvim.completion_preview"
              if suggestion.has_suggestion() then
                vim.schedule(function() suggestion.on_accept_suggestion() end)
                return true
              end
            end,
          },
        },
      },
    },
  },
}
