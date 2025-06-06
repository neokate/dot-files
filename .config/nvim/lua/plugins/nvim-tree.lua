return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 35,
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = true,
			},
			git = {
				timeout = 5000,
			},
		})

		vim.keymap.set("n", "<leader>tt", ":NvimTreeToggle<CR>")
		vim.cmd(":NvimTreeOpen<CR>")
	end,
}
