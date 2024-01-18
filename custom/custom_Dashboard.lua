local nvdash = {}

nvdash = {
  load_on_startup = true,

  header = {
    "                                                    ",
    " ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    " ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    " ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    " ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    " ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    " ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "                                                    ",
  },

  buttons = {
    { "  Find File", "Spc f f", "Telescope find_files" },
    { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
    { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
    { "  Bookmarks", "Spc m a", "Telescope marks" },
    { "  Mappings", "Spc c h", "NvCheatsheet" },
  },
}

return nvdash
