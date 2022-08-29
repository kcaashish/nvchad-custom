local st_modules = require("nvchad_ui.statusline.modules")

return {
	cursor_position = function()
		local r, c = unpack(vim.api.nvim_win_get_cursor(0))
		return st_modules.cursor_position() .. "L" .. r .. "C" .. c
	end,
}
