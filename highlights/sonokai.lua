return function()
  local get_hlgroup = require("astronvim.utils").get_hlgroup
  local normal = get_hlgroup "Normal"
  return {
    FloatBorder = {
      bg = normal.bg,
      fg = normal.fg,
    },
    NormalFloat = {
      bg = normal.bg,
      fg = normal.fg,
    },
  }
end
