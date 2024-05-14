local M =  {}
M.setup = function()
local conform_status_ok, conform = pcall(require, "conform")
if not conform_status_ok then
  return
end
conform.setup{ 
    formatters_by_ft = {
	cpp = {"clang-format"},
	rust = {"rust-fmt"},
	python = {"black" },
	javascript = { "prettier" },
	typescript = { "prettier" },
	javascriptreact = { "prettier" },
	typescriptreact = { "prettier" },
  },
  formatters_on_save = {
      lsp_fallback = true, 
      async = false ,
      timeout_ms = 500,
  }, 
  vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      })
    end, { desc = "Format file or range (in visual mode)" })
}


end 
return M
