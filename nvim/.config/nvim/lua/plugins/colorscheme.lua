return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		vim.cmd("colorscheme rose-pine-moon")
	end,
}

--[[return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    vim.cmd.colorscheme("tokyonight-night")
  end,
}
]]

--[[return {
  dir = vim.fn.stdpath("config") .. "/lua/colors",
  name = "seashells",
  priority = 1000,
  config = function()
    require("colors.seashells").setup()
  end,
}
]]
