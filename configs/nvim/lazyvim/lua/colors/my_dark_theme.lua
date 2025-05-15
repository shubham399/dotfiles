-- lua/colors/my_dark_theme.lua
local theme = {}

theme.normal = {
  a = { fg = "#000000", bg = "#dadde5" },
  b = { fg = "#dadde5", bg = "#252a38" },
  c = { fg = "#d4d4d4", bg = "#171b26" },
}

theme.insert = {
  a = { fg = "#000000", bg = "#66ccaa" },
}

theme.visual = {
  a = { fg = "#000000", bg = "#f2858c" },
}

theme.replace = {
  a = { fg = "#000000", bg = "#f48cca" },
}

theme.command = {
  a = { fg = "#000000", bg = "#80bbff" },
}

theme.inactive = {
  a = { fg = "#9599a6", bg = "#171b26" },
  b = { fg = "#9599a6", bg = "#252a38" },
  c = { fg = "#9599a6", bg = "#171b26" },
}

return theme
