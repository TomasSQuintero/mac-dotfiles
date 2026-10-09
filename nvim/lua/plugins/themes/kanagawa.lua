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
		local theme = colors.theme
		return {
			LineNr = { fg = p.dragonBlack6, bg = "none" },
			CursorLineNr = { fg = p.dragonGray2, bg = "none", bold = true },
			MatchParen = { fg = p.dragonYellow, bg = p.dragonBlack5, bold = true },

			-- popup de autocomplete (nativo)
			Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
			PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
			PmenuSbar = { bg = theme.ui.bg_m1 },
			PmenuThumb = { bg = theme.ui.bg_p2 },

			-- blink.cmp
			BlinkCmpMenu = { link = "Pmenu" },
			BlinkCmpMenuSelection = { link = "PmenuSel" },
			BlinkCmpMenuBorder = { fg = theme.ui.bg_p2, bg = theme.ui.bg_p1 },
			BlinkCmpDoc = { link = "NormalFloat" },

			-- nvim-cmp
			CmpPmenu = { link = "Pmenu" },
			CmpSel = { link = "PmenuSel" },
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
