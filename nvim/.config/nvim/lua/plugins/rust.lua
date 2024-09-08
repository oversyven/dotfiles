return	{
	{
		-- formatting rust file
		'rust-lang/rust.vim',
		ft = { "rust" },
		config = function()
			vim.g.rustfmt_autosave = 1
			vim.g.rustfmt_emit_files = 1
			vim.g.rustfmt_fail_silently = 0
			vim.g.rust_clip_command = 'wl-copy'
		end
	},
	-- {
	-- 	--
	-- 	"simrat39/rust-tools.nvim",
	-- 	ft = "rust",
	-- 	dependencies = "neovim/nvim-lspconfig",
	-- 	config = function ()
	--
	-- 	end
	-- }
}
