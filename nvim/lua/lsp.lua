-- ~/.config/nvim/lua/lsp.lua
local lspconfig = require('lspconfig')
local mason_lspconfig = require('mason-lspconfig')

-- Setup LSP for each language
local servers = {
  phpactor = {},         -- PHP LSP (for Symfony and general PHP development)
  ts_ls = {},         -- TypeScript and JavaScript LSP
  bashls = {},           -- Bash LSP
  cssls = {},            -- CSS LSP
  html = {},             -- HTML LSP (needed for CSS/HTML)
  emmet_ls = {},         -- Emmet LSP for HTML/CSS
  jsonls = {},           -- JSON LSP (useful for AWS CloudFormation, etc.)
  eslint = {},           -- ESLint for JS/TS linting
  tflint = {},

}

-- Automatically install and configure the LSPs using mason-lspconfig
mason_lspconfig.setup({
  ensure_installed = {  -- List the LSP servers you want
    'phpactor', 'ts_ls', 'bashls', 'cssls', 'html', 'emmet_ls', 'jsonls', 'eslint', 'tflint', 
  },
  automatic_installation = true,  -- Install the servers automatically if they're missing
})

-- Loop through all LSPs and configure them
for server, opts in pairs(servers) do
  lspconfig[server].setup(opts)
end


