return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  init = function()
    vim.opt.termguicolors = true
    local bufferline = require 'bufferline'
    bufferline.setup {

      options = {
        mode = 'buffers',
        diagnostics = 'nvim_lsp',
        style_preset = bufferline.style_preset.default,
        offsets = {
          {
            filetype = 'neo-tree',
            text = 'File Explorer',
            highlight = 'Directory',
            separator = true,
          },
        },
      },
    }
    vim.keymap.set('n', ']b', ':BufferLineCycleNext<cr>')
    vim.keymap.set('n', '[b', ':BufferLineCyclePrev<cr>')
  end,
}
