return {
	"lalitmee/cobalt2.nvim",
	event = { "ColorSchemePre" }, -- if you want to lazy load
	dependencies = { "tjdevries/colorbuddy.nvim", tag = "v1.0.0" },
	init = function()
		require("colorbuddy").colorscheme("cobalt2")
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
