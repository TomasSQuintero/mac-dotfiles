vim.pack.add({
	{ src = "https://github.com/rebelot/kanagawa.nvim" },
})

require("kanagawa").setup({
	theme = "dragon", -- "wave" | "dragon" | "lotus"
	background = {
		dark = "dragon",
		light = "lotus",
	},
	transparent = false,
	overrides = function(colors)
		local p = colors.palette
		return {
			LineNr = { fg = p.dragonBlack6, bg = "none" },
			CursorLineNr = { fg = p.dragonGray2, bg = "none", bold = true },
		}
	end,
	colors = {
		theme = {
			all = {
				ui = {
					-- make number column / sign column match the editor background
					bg_gutter = "none",
				},
			},
		},
	},
})

vim.cmd("colorscheme kanagawa-dragon")
