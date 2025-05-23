require("config.lazy")
require("remap")
require("set")

vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('HighlightYank', {}),
  pattern = '*',
  callback = function()
    vim.highlight.on_yank({
      higroup = 'IncSearch',
      timeout = 40,
    })
  end,
})

-- registering the python adapter
-- https://github.com/mfussenegger/nvim-dap-python
require("dap-python").setup("python3")

vim.opt.clipboard:append { 'unnamed', 'unnamedplus' }
