return {
  "nvim-neo-tree/neo-tree.nvim",
  requires = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("neo-tree").setup({
      popup_border_style = "rounded",
      window = {
        -- position = "float",
        width = 25,
        mappings = {
          -- ["<bs>"] = "navigate_up",
          -- ["."] = "set_root",
          -- ["H"] = "toggle_hidden",
          -- ["/"] = "fuzzy_finder",
          -- ["D"] = "fuzzy_finder_directory",
          -- ["#"] = "fuzzy_sorter", -- fuzzy sorting using the fzy algorithm
          -- ["f"] = "filter_on_submit",
          -- ["<c-x>"] = "clear_filter",
          -- ["[g"] = "prev_git_modified",
          -- ["]g"] = "next_git_modified",
          -- ["o"] = { "show_help", nowait = false, config = { title = "Order by", prefix_key = "o" } },
          -- ["oc"] = { "order_by_created", nowait = false },
          -- ["od"] = { "order_by_diagnostics", nowait = false },
          -- ["og"] = { "order_by_git_status", nowait = false },
          -- ["om"] = { "order_by_modified", nowait = false },
          -- ["on"] = { "order_by_name", nowait = false },
          -- ["os"] = { "order_by_size", nowait = false },
          -- ["ot"] = { "order_by_type", nowait = false },
        },
      },
      filesystem = {
        filtered_items = {
          hide_dotfiles = false, -- Show dotfiles if needed
        },
        commands = {
          -- Override delete to use trash instead of rm
          delete = function(state)
            local inputs = require("neo-tree.ui.inputs")
            local path = state.tree:get_node().path
            local msg = "Are you sure you want to trash " .. path
            inputs.confirm(msg, function(confirmed)
              if not confirmed then
                return
              end

              vim.fn.system({ "trash", vim.fn.fnameescape(path) })
              require("neo-tree.sources.manager").refresh(state.name)
            end)
          end,

          -- over write default 'delete_visual' command to 'trash' x n.
          delete_visual = function(state, selected_nodes)
            local inputs = require("neo-tree.ui.inputs")

            -- get table items count
            function GetTableLen(tbl)
              local len = 0
              for n in pairs(tbl) do
                len = len + 1
              end
              return len
            end

            local count = GetTableLen(selected_nodes)
            local msg = "Are you sure you want to trash " .. count .. " files ?"
            inputs.confirm(msg, function(confirmed)
              if not confirmed then
                return
              end
              for _, node in ipairs(selected_nodes) do
                vim.fn.system({ "trash", vim.fn.fnameescape(node.path) })
              end
              require("neo-tree.sources.manager").refresh(state.name)
            end)
          end,
        },
      },
    })
  end,
}
