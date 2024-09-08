return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
	local config = require("nvim-treesitter.configs")
	config.setup({
		-- 添加不同语言
		ensure_installed = { "bash", "lua", "go", "rust", "python"}, -- one of "all" or a list of languages

		highlight = { enable = true },
		indent = { enable = true },

		-- 不同括号颜色区分
		rainbow = {
			enable = true,
			extended_mode = true,
			max_file_lines = nil,
		}
	})
    end
}
