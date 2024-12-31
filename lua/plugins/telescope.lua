return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    config = function()
      require("telescope").setup()
    end
  }
}
