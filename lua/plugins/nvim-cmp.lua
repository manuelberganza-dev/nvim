return {
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
    },
    event = "VeryLazy",
    main = "config.cmp",
    config = function()
    local cmp = require('cmp')
    cmp.setup({
      -- Configuración de fuentes de autocompletado
      sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        -- Añade más fuentes según necesites
      },
      -- Configuración de mapeos de teclado, etc.
    })
  end
  }
  
}
