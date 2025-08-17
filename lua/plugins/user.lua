-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
-- I want to keep the example below
---@type LazySpec
if true then
  return {
    {
      "folke/snacks.nvim",
      opts = {
        dashboard = {
          preset = {
            header = table.concat({
              -- I finally feel like I've achieved something great.
              [[
 _     _   _                   ____                 _ _    _                _ _                            __        _ _    _     _______         _ _  __               
| |   | | | |            _    / / /                (_) |  (_)              | (_)                          / /       (_) |  (_)   / /_   _|       | | |/ _|              
| |__ | |_| |_ _ __  ___(_)  / / /__ _ __ __      ___| | ___ _ __   ___  __| |_  __ _   ___  _ __ __ _   / /_      ___| | ___   / /  | |_ __ ___ | | | |_ __ _  ___ ___ 
| '_ \| __| __| '_ \/ __|   / / / _ \ '_ \\ \ /\ / / | |/ / | '_ \ / _ \/ _` | |/ _` | / _ \| '__/ _` | / /\ \ /\ / / | |/ / | / /   | | '__/ _ \| | |  _/ _` |/ __/ _ \
| | | | |_| |_| |_) \__ \_ / / /  __/ | | |\ V  V /| |   <| | |_) |  __/ (_| | | (_| || (_) | | | (_| |/ /  \ V  V /| |   <| |/ /    | | | | (_) | | | || (_| | (_|  __/
|_| |_|\__|\__| .__/|___(_)_/_/ \___|_| |_(_)_/\_/ |_|_|\_\_| .__/ \___|\__,_|_|\__,_(_)___/|_|  \__, /_/    \_/\_/ |_|_|\_\_/_/     \_/_|  \___/|_|_|_| \__,_|\___\___|
              | |                                           | |                                   __/ |                                                                 
              |_|                                           |_|                                  |___/                                                                  

             ]],
            }, "\n"),
          },
          sections = {
            -- I don't want to use the header right now
            -- { section = "header" },
            {
              pane = 2,
              section = "terminal",
              -- It seems that cbonsai has a limit of around 75 characters, so I created a file with quotes that are 75 characters long maximum.
              cmd = "cbonsai --live --base=2 --time=0,01 --life=30 --message=(shuf -n 1 ~/.config/nvim/assets/ddquotes75long.txt)",
              -- I tested it a bit and it seems like it doesn't affect startup time
              -- I kept this here if you want to turn off quotes
              -- cmd = "cbonsai --live --base=2 --time=0,01 --life=30 ",
              height = 25,
              padding = 1,
            },
            { section = "keys", gap = 1, padding = 1 },
            { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
            { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
            { section = "startup" },
          },
        },
      },
    },
  }
end
-- You can also add or configure plugins by creating files in this `plugins/` folder
-- PLEASE REMOVE THE EXAMPLES YOU HAVE NO INTEREST IN BEFORE ENABLING THIS FILE
-- Here are some examples:

---@type LazySpec
return {

  -- == Examples of Adding Plugins ==

  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },

  -- == Examples of Overriding Plugins ==

  -- customize dashboard options
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = table.concat({
            " █████  ███████ ████████ ██████   ██████ ",
            "██   ██ ██         ██    ██   ██ ██    ██",
            "███████ ███████    ██    ██████  ██    ██",
            "██   ██      ██    ██    ██   ██ ██    ██",
            "██   ██ ███████    ██    ██   ██  ██████ ",
            "",
            "███    ██ ██    ██ ██ ███    ███",
            "████   ██ ██    ██ ██ ████  ████",
            "██ ██  ██ ██    ██ ██ ██ ████ ██",
            "██  ██ ██  ██  ██  ██ ██  ██  ██",
            "██   ████   ████   ██ ██      ██",
          }, "\n"),
        },
      },
    },
  },

  -- You can disable default plugins as follows:
  { "max397574/better-escape.nvim", enabled = false },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
    end,
  },

  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom autopairs configuration such as custom rules
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules(
        {
          Rule("$", "$", { "tex", "latex" })
            -- don't add a pair if the next character is %
            :with_pair(cond.not_after_regex "%%")
            -- don't add a pair if  the previous character is xxx
            :with_pair(
              cond.not_before_regex("xxx", 3)
            )
            -- don't move right when repeat character
            :with_move(cond.none())
            -- don't delete if the next character is xx
            :with_del(cond.not_after_regex "xx")
            -- disable adding a newline when you press <cr>
            :with_cr(cond.none()),
        },
        -- disable for .vim files, but it work for another filetypes
        Rule("a", "a", "-vim")
      )
    end,
  },
}
