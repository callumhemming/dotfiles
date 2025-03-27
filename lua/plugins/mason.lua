

return {{
	"williamboman/mason.nvim",

	config = function ()
		require("mason").setup()


	end
},{
		"williamboman/mason-lspconfig.nvim",

		config = function()

			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "grammarly", "tsp_server", "cssls" }

			})

		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function ()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.grammarly.setup({})
			lspconfig.tsp_server.setup({})
			lspconfig.cssls.setup({})



			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', '{', vim.lsp.buf.definition, {})
			vim.keymap.set({ 'n', 'v' }, '<C- >', vim.lsp.buf.code_action, {})
		end
	}
}
