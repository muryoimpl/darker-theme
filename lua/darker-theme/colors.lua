local colors = {}

colors.get_colors = function()
  local colors = {
    none       = "NONE",
    background = "#1d1f21",
    foreground = "#c5c8c6",
    selection  = "#373b41",
    line       = "#282a2e",
    comment    = "#707880",
    red        = "#cc6666",
    orange     = "#de935f",
    yellow     = "#f0c674",
    green      = "#b5bd68",
    aqua       = "#8abeb7",
    blue       = "#81a2be",
    purple     = "#b294bb",
    window     = "#303030",
    darkcolumn = "#1c1c1c",
    addbg      = "#5F875F",
    addfg      = "#d7ffaf",
    changebg   = "#5F5F87",
    changefg   = "#d7d7ff",
    delbg      = "#cc6666",
    darkblue   = "#00005f",
    darkcyan   = "#005f5f",
    darkred    = "#5f0000",
    darkpurple = "#5f005f",

    longlinewarn = "#371F1C",
  }

  return colors
end

colors.get_styles = function()
  local styles = {
    none = 'NONE',
    bold = 'bold',
    underline = 'underline',
    undercurl = 'undercurl',
    inverse = 'inverse',
    italic = 'italic',
    stanout = 'stanout',
    noCombine = 'nocombine',
    strikethrough = 'strikethrough',
  }

  return styles
end

return colors
