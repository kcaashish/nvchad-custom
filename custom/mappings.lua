local M = {}

M.move = {
	n = {
		["<A-j>"] = { "<cmd> m +1 <CR> gv=gv" },
		["<A-k>"] = { "<cmd> m -2 <CR> gv=gv" },
	},
}

return M
