local colors = require("darker-theme.colors")
local theme = require("darker-theme.theme")

local init = {}

init.setup = function(conf)
  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end
  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.cmd("highlight clear")
  vim.g.colors_name = "darker-theme"

  -- setup 関数からdefault_configを上書き
  for key, value in pairs(conf) do
    if value ~= nil then
      if default_config.
    end
  end

  -- 
  theme.setup()
end

return init
