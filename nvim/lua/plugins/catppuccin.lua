return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		opts = {
			flavor = "macchiato",
		},
		config = function(_, opts)
			require("catppuccin").setup(opts)
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
