-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

---@module 'lazy'
---@type LazySpec
return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  ---@module 'neo-tree'
  ---@type neotree.Config
  opts = {
    sources = { 'filesystem', 'buffers', 'git_status' },
    filesystem = {
<<<<<<< HEAD
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        never_show = { '.git' },
      },
      follow_current_file = {
        enabled = true,
        leave_dirs_open = true,
      },
    },
    window = {
      mappings = {
        ['\\'] = 'close_window',
||||||| parent of a5993a8 (neo-tree change)
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
=======
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        never_show = { '.git' },
      },
      follow_current_file = {
        enabled = true,
        leave_dirs_open = false,
      },
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
>>>>>>> a5993a8 (neo-tree change)
      },
    },
  },
}
