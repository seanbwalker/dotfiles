return {
	"akinsho/toggleterm.nvim",
	version = "*",
	keys = {
		{ "<leader>tt", desc = "Toggle terminal" },
		{ "<leader>tf", desc = "Float terminal" },
		{ "<leader>th", desc = "Horizontal terminal" },
		{ "<leader>tv", desc = "Vertical terminal" },
	},
	opts = {
		size = function(term)
			if term.direction == "horizontal" then
				return 15
			elseif term.direction == "vertical" then
				return math.floor(vim.o.columns * 0.4)
			end
		end,
		open_mapping = [[<leader>tt]],
		direction = "float",
		close_on_exit = true,
		shell = vim.o.shell,
		float_opts = {
			border = "curved",
			winblend = 3,
		},
	},
	config = function(_, opts)
		require("toggleterm").setup(opts)

		function _G.set_terminal_keymaps()
			local map = function(lhs, rhs)
				vim.keymap.set("t", lhs, rhs, { buffer = 0 })
			end
			map("<Esc>", [[<C-\><C-n>]])
			map("<C-h>", [[<Cmd>wincmd h<CR>]])
			map("<C-j>", [[<Cmd>wincmd j<CR>]])
			map("<C-k>", [[<Cmd>wincmd k<CR>]])
			map("<C-l>", [[<Cmd>wincmd l<CR>]])
		end

		vim.cmd("autocmd! TermOpen term://*toggleterm* lua set_terminal_keymaps()")

		-- Explicit direction terminals
		local Terminal = require("toggleterm.terminal").Terminal

		local float_term = Terminal:new({ direction = "float" })
		local horizontal_term = Terminal:new({ direction = "horizontal" })
		local vertical_term = Terminal:new({ direction = "vertical" })

		vim.keymap.set("n", "<leader>tf", function()
			float_term:toggle()
		end, { desc = "Float terminal" })
		vim.keymap.set("n", "<leader>th", function()
			horizontal_term:toggle()
		end, { desc = "Horizontal terminal" })
		vim.keymap.set("n", "<leader>tv", function()
			vertical_term:toggle()
		end, { desc = "Vertical terminal" })
	end,
}
