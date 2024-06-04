local M =  {}
M.setup = function()
local copilot_status_ok, copilot = pcall(require, "copilot")
if not copilot_status_ok then
  return
end
copilot.setup({ 
  suggestion = { enabled = false },
  panel = { enabled = false },
  filetypes = {
    yaml = false,
    markdown = false,
    help = false,
    gitcommit = false,
    gitrebase = false,
    hgcommit = false,
    svn = false,
    cvs = false,
    ["."] = false,
  },
  copilot_node_command = 'node', -- Node.js version must be > 18.x
  server_opts_overrides = {},
})



end 
return M
