local colors = {
  black0      = '#0d0c0c',
  black1      = '#12120f',
  black2      = '#1d1c19',
  black3      = '#181616',
  black4      = '#282727',
  black5      = '#393836',
  black6      = '#625e5a',
  white       = '#c5c9c5',
  gray        = '#a6a69c',
  gray2       = '#9e9b93',
  gray3       = '#7a8382',
  blue        = '#658594',
  blue2       = '#8ba4b0',
  green       = '#87a987',
  yellow      = '#c4b28a',
  orange      = '#b6927b',
  red         = '#c4746e',
  pink        = '#a292a3',
  violet      = '#8992a7',
}

return {
  normal = {
    a = { bg = colors.blue2,   fg = colors.black0, gui = 'bold' },
    b = { bg = colors.black5,  fg = colors.white },
    c = { bg = colors.black4,  fg = colors.gray },
  },
  insert = {
    a = { bg = colors.green,   fg = colors.black0, gui = 'bold' },
    b = { bg = colors.black5,  fg = colors.white },
    c = { bg = colors.black4,  fg = colors.gray },
  },
  visual = {
    a = { bg = colors.pink,    fg = colors.black0, gui = 'bold' },
    b = { bg = colors.black5,  fg = colors.white },
    c = { bg = colors.black4,  fg = colors.gray },
  },
  replace = {
    a = { bg = colors.red,     fg = colors.black0, gui = 'bold' },
    b = { bg = colors.black5,  fg = colors.white },
    c = { bg = colors.black4,  fg = colors.gray },
  },
  command = {
    a = { bg = colors.yellow,  fg = colors.black0, gui = 'bold' },
    b = { bg = colors.black5,  fg = colors.white },
    c = { bg = colors.black4,  fg = colors.gray },
  },
  inactive = {
    a = { bg = colors.black2,  fg = colors.black6, gui = 'bold' },
    b = { bg = colors.black2,  fg = colors.black6 },
    c = { bg = colors.black3,  fg = colors.black6 },
  },
}
