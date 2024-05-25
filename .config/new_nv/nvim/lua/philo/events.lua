vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
--[[ vim.api.nvim_create_autocmd('ExitPre', { ]] -- if you want auto save on exit 
--[[   desc = 'formatting the text before exiting', ]]
--[[   group = vim.api.nvim_create_augroup('philo-save-format', { clear = true }), ]]
--[[   callback = function() ]]
--[[       require("conform").format({ ]]
--[[         lsp_fallback = true, ]]
--[[         async = false, ]]
--[[         timeout_ms = 500, ]]
--[[       }) ]]
--[[       vim.api.nvim_command(':wq') ]]
--[[   end, ]]
--[[ }) ]]

