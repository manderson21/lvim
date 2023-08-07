vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "lemminx" })

local cacheLocation = "~/.cache/lemminx"

local lsp_manager = require("lvim.lsp.manager")
lsp_manager.setup("lemminx", {
  cmd = { "lemminx" },

  -- Possible Settings are defined at: 
  --    https://github.com/redhat-developer/vscode-xml/blob/main/docs/Preferences.md
  settings = {
    xml = {
      server = {
        workDir = cacheLocation,
      }
    }
  }
})
