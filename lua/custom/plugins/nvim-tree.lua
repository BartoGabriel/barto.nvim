return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('nvim-tree').setup {
      view = {
        width = 35,
        side = 'left',
      },
      renderer = {
        group_empty = true,
        highlight_git = true,
      },
      filters = {
        dotfiles = false,
      },
    }
    -- Mapeo: <leader>e para abrir/cerrar el árbol
    vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
  end,
}
