-- Code parsing, highlighting, and navigation
return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			"bash",
			"c",
			"fish",
			"git_config",
			"gitcommit",
			"gitignore",
			"go",
			"javascript",
			"jsdoc",
			"json",
			"lua",
			"markdown",
			"markdown_inline",
			"python",
			"query",
			"regex",
			"toml",
			"typescript",
			"vim",
			"vimdoc",
		},
		highlight = { enabled = true },
		indent = { enable = true },

		textobjects = {
			move = {
				enable = true,
				goto_next = {
					["]a"] = "@parameter.inner",
					["]b"] = "@block.outer",
					["]c"] = "@class.outer",
					["]f"] = "@function.outer",
					["]i"] = "@conditional.outer",
					["]l"] = "@loop.outer",
				},
				goto_previous = {
					["[a"] = "@parameter.inner",
					["[b"] = "@block.outer",
					["[c"] = "@class.outer",
					["[f"] = "@function.outer",
					["[i"] = "@conditional.outer",
					["[l"] = "@loop.outer",
				},
			},
			select = {
				enable = true,
				lookahead = true,
				keymaps = {
					["aa"] = "@parameter.outer",
					["ia"] = "@parameter.inner",
					["ab"] = "@block.outer",
					["ib"] = "@block.inner",
					["ac"] = "@class.outer",
					["ic"] = "@class.inner",
					["af"] = "@function.outer",
					["if"] = "@function.inner",
					["ai"] = "@conditional.outer",
					["ii"] = "@conditional.inner",
					["al"] = "@loop.outer",
					["il"] = "@loop.inner",
				},
			},
		},
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
