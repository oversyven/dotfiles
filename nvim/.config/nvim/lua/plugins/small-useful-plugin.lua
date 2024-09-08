return {
	-- auto pairs characters
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup()
		end
	},
	{
		"folke/flash.nvim",
		  event = "VeryLazy",
		  ---@type Flash.Config
		  opts = {},
		  -- stylua: ignore
		  keys = {
			{ "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
			{ "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
			{ "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
			{ "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
			{ "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
		  },
	},
	{
	  "folke/todo-comments.nvim",
	  dependencies = { "nvim-lua/plenary.nvim" },
	  opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	  }
	},
	-- show keymaps
	{
		"folke/which-key.nvim",
		event =  "VeryLazy",
		opts = {},
		keys = {
			{
				"<leader?>",
				function ()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
	-- better %
	{
		'andymass/vim-matchup',
		config = function()
			vim.g.matchup_matchparen_offscreen = { method = "popup" }
		end
	},
	-- auto-cd to root of git project TODO: learn about it first, then use it
	-- 'airblade/vim-rooter'
	-- {
	-- 	'notjedi/nvim-rooter.lua',
	-- 	config = function()
	-- 		require('nvim-rooter').setup()
	-- 	end
	-- },

	-- fzf support for ^p TODO: learn fzf first, then use it
	-- {
	-- 	'junegunn/fzf.vim',
	-- 	dependencies = {
	-- 		{ 'junegunn/fzf', dir = '~/.fzf', build = './install --all' },
	-- 	},
	-- 	config = function()
	-- 		-- stop putting a giant window over my editor
	-- 		vim.g.fzf_layout = { down = '~20%' }
	-- 		-- when using :Files, pass the file list through
	-- 		--
	-- 		--   https://github.com/jonhoo/proximity-sort
	-- 		--
	-- 		-- to prefer files closer to the current file.
	-- 		function list_cmd()
	-- 			local base = vim.fn.fnamemodify(vim.fn.expand('%'), ':h:.:S')
	-- 			if base == '.' then
	-- 				-- if there is no current file,
	-- 				-- proximity-sort can't do its thing
	-- 				return 'fd --type file --follow'
	-- 			else
	-- 				return vim.fn.printf('fd --type file --follow | proximity-sort %s', vim.fn.shellescape(vim.fn.expand('%')))
	-- 			end
	-- 		end
	-- 		vim.api.nvim_create_user_command('Files', function(arg)
	-- 			vim.fn['fzf#vim#files'](arg.qargs, { source = list_cmd(), options = '--tiebreak=index' }, arg.bang)
	-- 		end, { bang = true, nargs = '?', complete = "dir" })
	-- 	end
	-- },
}

















