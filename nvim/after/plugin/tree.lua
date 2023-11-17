require("nvim-tree").setup({
    view = { width = 30 },
    renderer = { group_empty = true },
    filters = { dotfiles = false },
		on_attach = function(bufnr)
			local api = require("nvim-tree.api")
			local opts = function(desc)
				return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
			end

			-- open as vsplit on current node
			local vsplit_preview = function()
				local node = api.tree.get_node_under_cursor()

				if node.nodes ~= nil then
					api.node.open.edit()
				else
					api.node.open.vertical()
				end

				api.tree.focus()
			end

			-- default keymaps
		  vim.keymap.set("n", "o", api.node.open.edit, opts "Open")
			vim.keymap.set("n", "r", api.fs.rename, opts "Rename")
			vim.keymap.set("n", "R", api.tree.reload, opts "Refresh")
			vim.keymap.set("n", "S", api.tree.search_node, opts "Search")
			vim.keymap.set("n", "W", api.tree.collapse_all, opts "Collapse")
			vim.keymap.set("n", "E", api.tree.expand_all, opts "Expand All")
			vim.keymap.set("n", "d", api.fs.remove, opts "Delete")
			vim.keymap.set("n", "D", api.fs.trash, opts "Trash")
			vim.keymap.set("n", "Y", api.fs.copy.relative_path, opts "Copy Relative Path")
			-- custom keymaps
			vim.keymap.set('n', '<leader>E', ':NvimTreeToggle<CR>', { silent = true, remap = false })
			vim.keymap.set("n", "L", vsplit_preview)
		end,
})
