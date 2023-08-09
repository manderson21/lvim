vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "lemminx" })

local home = os.getenv "HOME"
local cacheLocation = home .. "/.cache/lemminx/"
local lemminxLocation = home .. "/repos/community/lemminx/"

local lsp_manager = require("lvim.lsp.manager")
lsp_manager.setup("lemminx", {
  cmd = {
    -- Command to execute the server:
    "java",

    -- Comment out for Remote Debugging of the Lemminx LSP Server:
    -- "-agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=*:5005",

    -- ClassPath
    "-cp", lemminxLocation .. "lemminx-maven/lemminx-maven/target/vscode-lemminx-maven-jars/*",

    -- Main Class
    "org.eclipse.lemminx.XMLServerLauncher"
  },

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
