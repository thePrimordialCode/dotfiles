return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = function()
    local logo = [[
 _   _              ___      _                         _ _       _     ___          _      
| |_| |__   ___    / _ \_ __(_)_ __ ___   ___  _ __ __| (_) __ _| |   / __\___   __| | ___ 
| __| '_ \ / _ \  / /_)/ '__| | '_ ` _ \ / _ \| '__/ _` | |/ _` | |  / /  / _ \ / _` |/ _ \
| |_| | | |  __/ / ___/| |  | | | | | | | (_) | | | (_| | | (_| | | / /__| (_) | (_| |  __/
 \__|_| |_|\___| \/    |_|  |_|_| |_| |_|\___/|_|  \__,_|_|\__,_|_| \____/\___/ \__,_|\___|
 ]]
    local opts = {
      dashboard = {
        preset = {
          header = logo,
          -- stylua: ignore
          ---@type snacks.dashboard.Item[]
          keys = {
            { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
            { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
            { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
            { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
            { icon = " ", key = "s", desc = "Restore Session", section = "session" },
            { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
            { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
            { icon = " ", key = "q", desc = "Quit", action = ":qa" },
          },
        },
      },
      bigfile = { enabled = true },
      indent = { enabled = true },
      input = { enabled = true },
      notifier = { enabled = true },
      quickfile = { enabled = true },
      scroll = { enabled = false },
      statuscolumn = { enabled = true },
      words = { enabled = true },
    }
    return opts
  end,
}
