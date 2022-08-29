-- Supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,

M.ui = {
	theme = "ayu-dark",
}

M.plugins = {

	override = {
		["NvChad/ui"] = {
			statusline = {
				-- separator_style = "block",
				overriden_modules = function()
					return require("custom.plugins.statusline")
				end,
			},
		},
	},

	user = {
		["neovim/nvim-lspconfig"] = {
			config = function()
				require("plugins.configs.lspconfig")
				require("custom.plugins.lspconfig")
			end,
		},

		["jose-elias-alvarez/null-ls.nvim"] = {
			after = "nvim-lspconfig",
			config = function()
				require("custom.plugins.null-ls")
			end,
		},
	},
}

M.mappings = require("custom.mappings")

return M
