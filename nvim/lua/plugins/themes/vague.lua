vim.pack.add({
	{ src = "https://github.com/vague2k/vague.nvim" },
})

local default_color = "vague"

require("vague").setup({
  transparent = true,
  on_highlights = function(hl, colors)
    hl.Visual = { bg = "#2c4f7c" } -- or add fg = colors.fg, reverse = true, etc.
  end,
})

vim.cmd('colorscheme ' .. default_color)
