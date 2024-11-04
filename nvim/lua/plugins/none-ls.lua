-- Initialize Mason and Null-LS
require("mason").setup()

-- Function to ensure tools are installed
local function ensure_installed(servers)
	local mason_registry = require("mason-registry")
	for _, server in ipairs(servers) do
		local pkg = mason_registry.get_package(server)
		if not pkg:is_installed() then
			pkg:install()
		end
	end
end

return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		-- List of tools to ensure are installed
		local tools = {
			"stylua",
			"prettier",
		}

		-- Ensure the tools are installed
		ensure_installed(tools)

		-- Set up null-ls with the installed tools
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				-- null_ls.builtins.diagnostics.eslint_d,
				-- null_ls.builtins.diagnostics.htmlhint,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
