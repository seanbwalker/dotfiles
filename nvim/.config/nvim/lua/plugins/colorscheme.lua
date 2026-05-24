return {
  dir = vim.fn.stdpath("config") .. "/lua/colors",
  name = "seashells",
  priority = 1000,
  config = function()
    require("colors.seashells").setup()
  end,
}
