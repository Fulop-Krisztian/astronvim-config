-- This file should basically do what the docs say (it is copied from there)
-- https://docs.astronvim.com/recipes/advanced_lsp/#automatic-signature-help
--
-- In summary it makes the hint popups automatic

return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    features = {
      signature_help = true, -- enable automatic signature help popup globally on startup
    },
  },
}
