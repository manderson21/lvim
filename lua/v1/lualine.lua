local core_components = require("lvim.core.lualine.components")
local custom_components = {
  -- Display metals (Scala LSP) status in the status line
  metals_status = {
    function ()
      local status = vim.g["metals_status"]
      if status == nil then
        return ""
      else
        return status
      end
    end
  }
}

lvim.builtin.lualine.sections.lualine_c = {
  -- NOTE: There isn't an easy way to append a component, so we need to include
  --       the default components supplied by lunarvim in `lualine_c`
  core_components.python_env,
  core_components.diff,

  -- Custom Components:
  custom_components.metals_status,
}

lvim.builtin.lualine.options.component_separators = { left = '', right = '' }
lvim.builtin.lualine.options.section_separators = { left = '', right = '' }

