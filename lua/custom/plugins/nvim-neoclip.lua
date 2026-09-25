return {
  'acksld/nvim-neoclip.lua',
    dependencies = {
    -- {'kkharji/sqlite.lua', module = 'sqlite'},
    {'nvim-telescope/telescope.nvim'},
    {'ibhagwan/fzf-lua'},
  },
  config = function()
    -- 1. Setup neoclip itself
    require('neoclip').setup({
      -- optional configuration goes here, or leave empty for defaults
    })

    -- 2. Explicitly load the telescope extension
    require('telescope').load_extension('neoclip')
  end,
}
