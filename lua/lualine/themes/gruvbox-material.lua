-- =============================================================================
-- URL: https://github.com/sainnhe/gruvbox-material
-- Filename: lua/lualine/themes/gruvbox-material.lua
-- Author: sainnhe
-- Email: sainnhe@gmail.com
-- License: MIT License
-- =============================================================================

local background = vim.opt.background:get()
local configuration = vim.fn['gruvbox_material#get_configuration']()
local palette = vim.fn['gruvbox_material#get_palette'](background, configuration.palette)

local theme
if configuration.statusline_style == 'default' then
  theme = {
    normal = {
      a = {bg = palette.grey2[1], fg = palette.bg0[1], gui = 'bold'},
      b = {bg = palette.bg_statusline3[1], fg = palette.fg1[1]},
      c = {bg = palette.bg_statusline1[1], fg = palette.fg1[1]}
    },
    insert = {
      a = {bg = palette.bg_green[1], fg = palette.bg0[1], gui = 'bold'},
      b = {bg = palette.bg_statusline3[1], fg = palette.fg1[1]},
      c = {bg = palette.bg_statusline1[1], fg = palette.fg1[1]}
    },
    visual = {
      a = {bg = palette.bg_red[1], fg = palette.bg0[1], gui = 'bold'},
      b = {bg = palette.bg_statusline3[1], fg = palette.fg1[1]},
      c = {bg = palette.bg_statusline1[1], fg = palette.fg1[1]}
    },
    replace = {
      a = {bg = palette.bg_yellow[1], fg = palette.bg0[1], gui = 'bold'},
      b = {bg = palette.bg_statusline3[1], fg = palette.fg1[1]},
      c = {bg = palette.bg_statusline1[1], fg = palette.fg1[1]}
    },
    command = {
      a = {bg = palette.blue[1], fg = palette.bg0[1], gui = 'bold'},
      b = {bg = palette.bg_statusline3[1], fg = palette.fg1[1]},
      c = {bg = palette.bg_statusline1[1], fg = palette.fg1[1]}
    },
    terminal = {
      a = {bg = palette.purple[1], fg = palette.bg0[1], gui = 'bold'},
      b = {bg = palette.bg_statusline3[1], fg = palette.fg1[1]},
      c = {bg = palette.bg_statusline1[1], fg = palette.fg1[1]}
    },
    inactive = {
      a = {bg = palette.bg_statusline1[1], fg = palette.grey2[1]},
      b = {bg = palette.bg_statusline1[1], fg = palette.grey2[1]},
      c = {bg = palette.bg_statusline1[1], fg = palette.grey2[1]}
    }
  }
elseif configuration.statusline_style == 'mix' then
  theme = {
    normal = {
      a = {bg = palette.grey2[1], fg = palette.bg0[1], gui = 'bold'},
      b = {bg = palette.bg_statusline3[1], fg = palette.grey2[1]},
      c = {bg = palette.bg_statusline2[1], fg = palette.grey2[1]}
    },
    insert = {
      a = {bg = palette.bg_green[1], fg = palette.bg0[1], gui = 'bold'},
      b = {bg = palette.bg_statusline3[1], fg = palette.fg1[1]},
      c = {bg = palette.bg_statusline2[1], fg = palette.fg1[1]}
    },
    visual = {
      a = {bg = palette.bg_red[1], fg = palette.bg0[1], gui = 'bold'},
      b = {bg = palette.bg_statusline3[1], fg = palette.fg1[1]},
      c = {bg = palette.bg_statusline2[1], fg = palette.fg1[1]}
    },
    replace = {
      a = {bg = palette.bg_yellow[1], fg = palette.bg0[1], gui = 'bold'},
      b = {bg = palette.bg_statusline3[1], fg = palette.fg1[1]},
      c = {bg = palette.bg_statusline2[1], fg = palette.fg1[1]}
    },
    command = {
      a = {bg = palette.blue[1], fg = palette.bg0[1], gui = 'bold'},
      b = {bg = palette.bg_statusline3[1], fg = palette.fg1[1]},
      c = {bg = palette.bg_statusline2[1], fg = palette.fg1[1]}
    },
    terminal = {
      a = {bg = palette.purple[1], fg = palette.bg0[1], gui = 'bold'},
      b = {bg = palette.bg_statusline3[1], fg = palette.fg1[1]},
      c = {bg = palette.bg_statusline2[1], fg = palette.fg1[1]}
    },
    inactive = {
      a = {bg = palette.bg_statusline2[1], fg = palette.grey2[1]},
      b = {bg = palette.bg_statusline2[1], fg = palette.grey2[1]},
      c = {bg = palette.bg_statusline2[1], fg = palette.grey2[1]}
    }
  }
else
  theme = {
    normal = {
      a = {bg = palette.grey2[1], fg = palette.bg0[1], gui = 'bold'},
      b = {bg = palette.bg_statusline3[1], fg = palette.grey2[1]},
      c = {bg = palette.bg_statusline2[1], fg = palette.grey2[1]}
    },
    insert = {
      a = {bg = palette.blue[1], fg = palette.bg0[1], gui = 'bold'},
      b = {bg = palette.bg_statusline3[1], fg = palette.fg1[1]},
      c = {bg = palette.bg_statusline3[1], fg = palette.fg1[1]}
    },
    visual = {
      a = {bg = palette.orange[1], fg = palette.bg0[1], gui = 'bold'},
      b = {bg = palette.bg_statusline3[1], fg = palette.fg1[1]},
      c = {bg = palette.grey0[1], fg = palette.bg0[1]}
    },
    replace = {
      a = {bg = palette.aqua[1], fg = palette.bg0[1], gui = 'bold'},
      b = {bg = palette.bg_statusline3[1], fg = palette.fg1[1]},
      c = {bg = palette.bg_statusline3[1], fg = palette.fg1[1]}
    },
    command = {
      a = {bg = palette.green[1], fg = palette.bg0[1], gui = 'bold'},
      b = {bg = palette.bg_statusline3[1], fg = palette.fg1[1]},
      c = {bg = palette.bg_statusline3[1], fg = palette.fg1[1]}
    },
    terminal = {
      a = {bg = palette.purple[1], fg = palette.bg0[1], gui = 'bold'},
      b = {bg = palette.bg_statusline3[1], fg = palette.fg1[1]},
      c = {bg = palette.bg_statusline3[1], fg = palette.fg1[1]}
    },
    inactive = {
      a = {bg = palette.bg_statusline2[1], fg = palette.grey2[1]},
      b = {bg = palette.bg_statusline2[1], fg = palette.grey2[1]},
      c = {bg = palette.bg_statusline2[1], fg = palette.grey2[1]}
    }
  }
end

return theme
