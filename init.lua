require("config.lazy")
require("config.options")
require("config.lsp")

vim.api.nvim_create_autocmd('FileType', {
  pattern = { '<filetype>' },
  callback = function() vim.treesitter.start() end,
})

vim.cmd[[
    colorscheme solarized-osaka
]]
