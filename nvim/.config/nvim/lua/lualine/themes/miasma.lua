local p = {
  bg          = "#222222",
  bg_dark     = "#1a1a1a",
  bg_light    = "#2a2a24",
  fg          = "#c2c2b0",
  comment     = "#6c6c60",

  green       = "#5f875f",
  green_br    = "#7fa86f",
  yellow      = "#b36d43",
  yellow_br   = "#c9a554",
  blue        = "#78824b",
  blue_br     = "#8f9c5a",
  magenta     = "#bb7744",
  red_br      = "#8a6a52",
}

local miasma = {}

miasma.normal = {
  a = { fg = p.bg, bg = p.blue_br, gui = "bold" },
  b = { fg = p.fg, bg = p.bg_light },
  c = { fg = p.comment, bg = p.bg_dark },
}

miasma.insert = {
  a = { fg = p.bg, bg = p.green_br, gui = "bold" },
  b = { fg = p.fg, bg = p.bg_light },
  c = { fg = p.comment, bg = p.bg_dark },
}

miasma.visual = {
  a = { fg = p.bg, bg = p.magenta, gui = "bold" },
  b = { fg = p.fg, bg = p.bg_light },
  c = { fg = p.comment, bg = p.bg_dark },
}

miasma.replace = {
  a = { fg = p.bg, bg = p.red_br, gui = "bold" },
  b = { fg = p.fg, bg = p.bg_light },
  c = { fg = p.comment, bg = p.bg_dark },
}

miasma.command = {
  a = { fg = p.bg, bg = p.yellow_br, gui = "bold" },
  b = { fg = p.fg, bg = p.bg_light },
  c = { fg = p.comment, bg = p.bg_dark },
}

miasma.inactive = {
  a = { fg = p.comment, bg = p.bg_dark },
  b = { fg = p.comment, bg = p.bg_dark },
  c = { fg = p.comment, bg = p.bg_dark },
}

return miasma
