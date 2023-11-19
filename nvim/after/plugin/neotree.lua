require("neo-tree").setup({
	filesystem = {
		hijack_netrw_behavior = "disabled",
		window = {
			position = "left",
			width = 30,
			mapping_options = { noremap = true, nowait = true },
			mappings = {
				["d"] = "delete",
				["r"] = "rename",
				["m"] = "move",
				["c"] = "copy",
				["l"] = "open",
				["A"] = "add_directory",
				["a"] = "add",
				["h"] = "close_node",
				["H"] = "close_all_nodes",
				["s"] = "open_vsplit",
				["S"] = "open_split",
			}
		},
		filtered_items = {
			visible = false,
      hide_dotfiles = false,
      hide_gitignored = false,
			hide_by_name = {".git"},
		}
	},
	default_component_configs = {
		indent = { with_markers = false, indent_size = 2 },
		modified = {
			symbol = "",
			highlight = "NeoTreeModified",
		},
	},
	renderers = {
    directory = {
      { "indent" },
      { "icon" },
      { "current_filter" },
      {
        "container",
        content = {
          {
						"diagnostics",
						errors_only = true,
						zindex = 20,
						align = "right",
						hide_when_expanded = false,
						symbols = {
							hint = "",
							info = "",
							warn = "",
							error = "",
						},
					},
          {
						"git_status",
						zindex = -10,
						align = "right",
						hide_when_expanded = false,
						symbols = {
								added     = "",
								deleted   = "",
								modified  = "",
								renamed   = "",
								untracked = "",
								ignored   = "",
								conflict  = "",
								unstaged  = "",
								staged    = "",
						},
					},
          { "name", zindex = 10 },
          { "symlink_target", zindex = 10, highlight = "NeoTreeSymbolicLinkTarget" },
          { "clipboard", zindex = 10 },
          { "file_size", zindex = 10, align = "right" },
          { "type", zindex = 10, align = "right" },
          { "last_modified", zindex = 10, align = "right" },
          { "created", zindex = 10, align = "right" },
        },
      },
    },
    file = {
      { "indent" },
      { "icon" },
      {
        "container",
        content = {
          {
						"diagnostics",
						zindex = 20,
						align = "right",
						symbols = {
							hint = "1+",
							info = "1+",
							warn = "1+",
							error = "1+",
						},
					},
          {
						"git_status",
						zindex = 10,
						align = "right",
						symbols = {
								added     = "A",
								deleted   = "D",
								modified  = "M",
								renamed   = "R",
								untracked = "U",
								ignored   = "I",
								conflict  = "C",
								unstaged  = "",
								staged    = "",
						}
					},
          { "name", zindex = 10 },
          { "symlink_target", zindex = 10, highlight = "NeoTreeSymbolicLinkTarget" },
          { "clipboard", zindex = 10 },
          { "bufnr", zindex = 10 },
          { "modified", zindex = 20, align = "right" },
          { "file_size", zindex = 10, align = "right" },
          { "type", zindex = 10, align = "right" },
          { "last_modified", zindex = 10, align = "right" },
          { "created", zindex = 10, align = "right" },
        },
      },
    },
    message = {
      { "indent", with_markers = false },
      { "name", highlight = "NeoTreeMessage" },
    },
    terminal = {
      { "indent" },
      { "icon" },
      { "name" },
      { "bufnr" }
    }
  },
})

