return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate", -- :MasonUpdate actualiza el registro de paquetes después de la instalación
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"pyright", "clangd", "jdtls", "ts_ls"}, 
        -- Aquí defines qué LSPs quieres instalar automáticamente
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Aquí configuras los LSPs
      local lspconfig = require("lspconfig")
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      require("mason-lspconfig").setup_handlers({
        -- Este manejador se ejecuta para cada LSP instalado por mason
        function(server_name)
          lspconfig[server_name].setup({
            capabilities = capabilities,
            on_attach = on_attach, -- Asegúrate de tener esta función definida
          })
        end,
      })
    end
  }
}
