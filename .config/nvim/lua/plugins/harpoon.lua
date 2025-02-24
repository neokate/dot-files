return {
	{
		"ThePrimeagen/harpoon",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function(_, opts)
			opts = {
				global_settings = {
					mark_branch = true,
				},
			}
			require("harpoon").setup(opts)
			require("telescope").load_extension("harpoon")

			vim.keymap.set("n", "<leader>hx", function()
				require("harpoon.mark").toggle_file()
			end)
			vim.keymap.set("n", "<leader>hn", function()
				require("harpoon.ui").nav_next()
			end)
			vim.keymap.set("n", "<leader>hp", function()
				require("harpoon.ui").nav_prev()
			end)
			vim.keymap.set("n", "<leader>hm", ":Telescope harpoon marks<CR>")
		end,
	},
}
