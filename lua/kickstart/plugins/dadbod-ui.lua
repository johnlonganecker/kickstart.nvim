return {
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    { 'tpope/vim-dadbod', lazy = true },
    { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true }, -- Optional
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    'DBUIFindBuffer',
  },
  init = function()
    -- Your DBUI configuration
    vim.g.db_ui_use_nerd_fonts = 1
    vim.g.dbs = {
      mysql = 'mysql://root@localhost:3306?protocol=tcp',
      postgres = 'postgres://postgres@localhost:5432',
    }
    -- https://github.com/kristijanhusak/vim-dadbod-ui/issues/141
    -- autocmd FileType dbout setlocal nofoldenable
  end,
}
