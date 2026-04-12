--[[

=====================================================================
==================== READ THIS BEFORE CONTINUING ====================
=====================================================================
========                                    .-----.          ========
========         .----------------------.   | === |          ========
========         |.-""""""""""""""""""-.|   |-----|          ========
========         ||                    ||   | === |          ========
========         ||   KICKSTART.NVIM   ||   |-----|          ========
========         ||                    ||   | === |          ========
========         ||                    ||   |-----|          ========
========         ||:Tutor              ||   |:::::|          ========
========         |'-..................-'|   |____o|          ========
========         `"")----------------(""`   ___________      ========
========        /::::::::::|  |::::::::::\  \ no mouse \     ========
========       /:::========|  |==hjkl==:::\  \ required \    ========
========      '""""""""""""'  '""""""""""""'  '""""""""""'   ========
========                                                     ========
=====================================================================
=====================================================================

What is Kickstart?

  Kickstart.nvim is *not* a distribution.

  Kickstart.nvim is a starting point for your own configuration.
    The goal is that you can read every line of code, top-to-bottom, understand
    what your configuration is doing, and modify it to suit your needs.

    Once you've done that, you can start exploring, configuring and tinkering to
    make Neovim your own! That might mean leaving Kickstart just the way it is for a while
    or immediately breaking it into modular pieces. It's up to you!

    If you don't know anything about Lua, I recommend taking some time to read through
    a guide. One possible example which will only take 10-15 minutes:
      - https://learnxinyminutes.com/docs/lua/

    After understanding a bit more about Lua, you can use `:help lua-guide` as a
    reference for how Neovim integrates Lua.
    - :help lua-guide
    - (or HTML version): https://neovim.io/doc/user/lua-guide.html

Kickstart Guide:

  TODO: The very first thing you should do is to run the command `:Tutor` in Neovim.

    If you don't know what this means, type the following:
      - <escape key>
      - :
      - Tutor
      - <enter key>

    (If you already know the Neovim basics, you can skip this step.)

  Once you've completed that, you can continue working through **AND READING** the rest
  of the kickstart init.lua.

  Next, run AND READ `:help`.
    This will open up a help window with some basic information
    about reading, navigating and searching the builtin help documentation.

    This should be the first place you go to look when you're stuck or confused
    with something. It's one of my favorite Neovim features.

    MOST IMPORTANTLY, we provide a keymap "<space>sh" to [s]earch the [h]elp documentation,
    which is very useful when you're not exactly sure of what you're looking for.

  I have left several `:help X` comments throughout the init.lua
    These are hints about where to find more information about the relevant settings,
    plugins or Neovim features used in Kickstart.

   NOTE: Look for lines like this

    Throughout the file. These are for you, the reader, to help you understand what is happening.
    Feel free to delete them once you know what you're doing, but they should serve as a guide
    for when you are first encountering a few different constructs in your Neovim config.

If you experience any errors while trying to install kickstart, run `:checkhealth` for more info.

I hope you enjoy your Neovim journey,
- TJ

P.S. You can delete this when you're done too. It's your config now! :)
--]]

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.o.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
<<<<<<< HEAD
vim.o.relativenumber = true

vim.o.shiftwidth = 4
vim.o.tabstop = 4 -- Always 4 (see :h tabstop)
vim.o.softtabstop = 4

vim.o.conceallevel = 1
||||||| parent of c92ea7c (Replace vim.opt with vim.o (#1495))
-- vim.opt.relativenumber = true
=======
-- vim.o.relativenumber = true
>>>>>>> c92ea7c (Replace vim.opt with vim.o (#1495))

-- Enable mouse mode, can be useful for resizing splits for example!
vim.o.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.o.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
<<<<<<< HEAD
<<<<<<< HEAD
vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)
||||||| parent of c92ea7c (Replace vim.opt with vim.o (#1495))
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)
=======
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)
>>>>>>> c92ea7c (Replace vim.opt with vim.o (#1495))
||||||| parent of 7e54a4c (fix: trimming down config and updating stylua)
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)
=======
vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)
>>>>>>> 7e54a4c (fix: trimming down config and updating stylua)

-- Enable break indent
vim.o.breakindent = true

<<<<<<< HEAD
<<<<<<< HEAD
-- Enable undo/redo changes even after closing and reopening a file
vim.o.undofile = false
||||||| parent of c92ea7c (Replace vim.opt with vim.o (#1495))
-- Save undo history
vim.opt.undofile = true
=======
-- Save undo history
||||||| parent of 86f1ba2 (Improve undofile comment)
-- Save undo history
=======
-- Enable undo/redo changes even after closing and reopening a file
>>>>>>> 86f1ba2 (Improve undofile comment)
vim.o.undofile = true
>>>>>>> c92ea7c (Replace vim.opt with vim.o (#1495))

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
<<<<<<< HEAD
--
--  Notice listchars is set using `vim.opt` instead of `vim.o`.
--  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
--   See `:help lua-options`
--   and `:help lua-guide-options`
vim.o.list = true
||||||| parent of c92ea7c (Replace vim.opt with vim.o (#1495))
vim.opt.list = true
=======
--
--  Notice listchars is set using `vim.opt` instead of `vim.o`.
--  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
--   See `:help lua-options`
--   and `:help lua-guide-options`
vim.o.list = true
>>>>>>> c92ea7c (Replace vim.opt with vim.o (#1495))
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
<<<<<<< HEAD
vim.o.scrolloff = 10

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.o.confirm = true
||||||| parent of c92ea7c (Replace vim.opt with vim.o (#1495))
vim.opt.scrolloff = 10
=======
vim.o.scrolloff = 10
>>>>>>> c92ea7c (Replace vim.opt with vim.o (#1495))

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.o.confirm = true

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

<<<<<<< HEAD
-- Diagnostic Config & Keymaps
-- See :help vim.diagnostic.Opts
vim.diagnostic.config {
  update_in_insert = false,
  severity_sort = true,
  float = { border = 'rounded', source = 'if_many' },
  underline = { severity = { min = vim.diagnostic.severity.WARN } },

  -- Can switch between these as you prefer
  virtual_text = true, -- Text shows up at the end of the line
  virtual_lines = false, -- Text shows up underneath the line, with virtual lines

  -- Auto open the float, so you can easily read the errors when jumping with `[d` and `]d`
  jump = { float = true },
}

||||||| parent of e79572c (fix: continue cleaning up docs and config)
-- Diagnostic keymaps
=======
-- Diagnostic Config & Keymaps
-- See :help vim.diagnostic.Opts
vim.diagnostic.config {
  update_in_insert = false,
  severity_sort = true,
  float = { border = 'rounded', source = 'if_many' },
  underline = { severity = { min = vim.diagnostic.severity.WARN } },

  -- Can switch between these as you prefer
  virtual_text = true, -- Text shows up at the end of the line
  virtual_lines = false, -- Text shows up underneath the line, with virtual lines

  -- Auto open the float, so you can easily read the errors when jumping with `[d` and `]d`
  jump = { float = true },
}

>>>>>>> e79572c (fix: continue cleaning up docs and config)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

<<<<<<< HEAD
<<<<<<< HEAD
-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })
vim.keymap.set('n', ',nt', '<Cmd>Neotree toggle<CR>', { desc = 'Toggle Neotree pane' })
vim.keymap.set('n', '<leader>en', vim.diagnostic.goto_next, { desc = '[e]rror [n]ext' })
vim.keymap.set('n', '<leader>ep', vim.diagnostic.goto_prev, { desc = '[e]rror [p]revious' })

||||||| parent of e947649 (feat(keymap): move windows without `<C-w>` (#1368))
=======
-- NOTE: Some terminals have coliding keymaps or are not able to send distinct keycodes
||||||| parent of 8a5a52f (fix: minor misspellings (#1450))
-- NOTE: Some terminals have coliding keymaps or are not able to send distinct keycodes
=======
-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
>>>>>>> 8a5a52f (fix: minor misspellings (#1450))
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

>>>>>>> e947649 (feat(keymap): move windows without `<C-w>` (#1368))
-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
<<<<<<< HEAD
<<<<<<< HEAD
  callback = function() vim.hl.on_yank() end,
||||||| parent of 6ba2408 (fix: rename vim.highlight.on_yank to vim.hl.on_yank (#1482))
  callback = function()
    vim.highlight.on_yank()
  end,
=======
  callback = function()
    vim.hl.on_yank()
  end,
>>>>>>> 6ba2408 (fix: rename vim.highlight.on_yank to vim.hl.on_yank (#1482))
||||||| parent of 7e54a4c (fix: trimming down config and updating stylua)
  callback = function()
    vim.hl.on_yank()
  end,
=======
  callback = function() vim.hl.on_yank() end,
>>>>>>> 7e54a4c (fix: trimming down config and updating stylua)
})

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
<<<<<<< HEAD
<<<<<<< HEAD
  if vim.v.shell_error ~= 0 then error('Error cloning lazy.nvim:\n' .. out) end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)
||||||| parent of c92ea7c (Replace vim.opt with vim.o (#1495))
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)
=======
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
||||||| parent of 7e54a4c (fix: trimming down config and updating stylua)
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
=======
  if vim.v.shell_error ~= 0 then error('Error cloning lazy.nvim:\n' .. out) end
>>>>>>> 7e54a4c (fix: trimming down config and updating stylua)
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)
>>>>>>> c92ea7c (Replace vim.opt with vim.o (#1495))

-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup({
<<<<<<< HEAD
<<<<<<< HEAD
  -- NOTE: Plugins can be added via a link or github org/name. To run setup automatically, use `opts = {}`
  { 'NMAC427/guess-indent.nvim', opts = {} },
||||||| parent of 2b2f0f8 (feat: switch vim-sleuth for guess-indent.nvim (#1512))
  -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
=======
  -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
  'NMAC427/guess-indent.nvim', -- Detect tabstop and shiftwidth automatically
>>>>>>> 2b2f0f8 (feat: switch vim-sleuth for guess-indent.nvim (#1512))
||||||| parent of b2af42a (fix: call setup on guess indent)
  -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
  'NMAC427/guess-indent.nvim', -- Detect tabstop and shiftwidth automatically
=======
  -- NOTE: Plugins can be added via a link or github org/name. To run setup automatically, use `opts = {}`
  { 'NMAC427/guess-indent.nvim', opts = {} },
>>>>>>> b2af42a (fix: call setup on guess indent)

<<<<<<< HEAD
  -- Alternatively, use `config = function() ... end` for full control over the configuration.
  -- If you prefer to call `setup` explicitly, use:
  --    {
  --        'lewis6991/gitsigns.nvim',
  --        config = function()
  --            require('gitsigns').setup({
  --                -- Your gitsigns configuration here
  --            })
  --        end,
  --    }
  --
<<<<<<< HEAD
||||||| parent of 71ad926 (docs: clarify using opts = {} vs config = function() ... require('plu… (#1316))
  -- Use `opts = {}` to force a plugin to be loaded.
  --

=======
  -- Use `opts = {}` to automatically pass options to a plugin's `setup()` function, forcing the plugin to be loaded.
  --

||||||| parent of 7e54a4c (fix: trimming down config and updating stylua)
  -- NOTE: Plugins can also be added by using a table,
  -- with the first argument being the link and the following
  -- keys can be used to configure plugin behavior/loading/etc.
  --
  -- Use `opts = {}` to automatically pass options to a plugin's `setup()` function, forcing the plugin to be loaded.
  --

=======
>>>>>>> 7e54a4c (fix: trimming down config and updating stylua)
  -- Alternatively, use `config = function() ... end` for full control over the configuration.
  -- If you prefer to call `setup` explicitly, use:
  --    {
  --        'lewis6991/gitsigns.nvim',
  --        config = function()
  --            require('gitsigns').setup({
  --                -- Your gitsigns configuration here
  --            })
  --        end,
  --    }
  --
>>>>>>> 71ad926 (docs: clarify using opts = {} vs config = function() ... require('plu… (#1316))
  -- Here is a more advanced example where we pass configuration
  -- options to `gitsigns.nvim`.
  --
  -- See `:help gitsigns` to understand what the configuration keys do
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    ---@module 'gitsigns'
    ---@type Gitsigns.Config
    ---@diagnostic disable-next-line: missing-fields
    opts = {
      signs = {
        add = { text = '+' }, ---@diagnostic disable-line: missing-fields
        change = { text = '~' }, ---@diagnostic disable-line: missing-fields
        delete = { text = '_' }, ---@diagnostic disable-line: missing-fields
        topdelete = { text = '‾' }, ---@diagnostic disable-line: missing-fields
        changedelete = { text = '~' }, ---@diagnostic disable-line: missing-fields
      },
    },
  },

  -- { 'tpope/vim-dadbod', opts = {} },
  -- { 'kristijanhusak/vim-dadbod-completion', opts = {}, config = function() end },
  -- { 'kristijanhusak/vim-dadbod-ui', opts = {} },

  -- NOTE: Plugins can also be configured to run Lua code when they are loaded.
  --
  -- This is often very useful to both group configuration, as well as handle
  -- lazy loading plugins that don't need to be loaded immediately at startup.
  --
  -- For example, in the following configuration, we use:
  --  event = 'VimEnter'
  --
  -- which loads which-key before all the UI elements are loaded. Events can be
  -- normal autocommands events (`:help autocmd-events`).
  --
  -- Then, because we use the `opts` key (recommended), the configuration runs
  -- after the plugin has been loaded as `require(MODULE).setup(opts)`.

  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
<<<<<<< HEAD
    event = 'VimEnter',
<<<<<<< HEAD
    ---@module 'which-key'
    ---@type wk.Opts
    ---@diagnostic disable-next-line: missing-fields
||||||| parent of 7e54a4c (fix: trimming down config and updating stylua)
    event = 'VimEnter', -- Sets the loading event to 'VimEnter'
=======
    event = 'VimEnter',
>>>>>>> 7e54a4c (fix: trimming down config and updating stylua)
||||||| parent of 177ff61 (Add type hints to plugin options where possible)
=======
    ---@module 'which-key'
    ---@type wk.Opts
    ---@diagnostic disable-next-line: missing-fields
>>>>>>> 177ff61 (Add type hints to plugin options where possible)
    opts = {
      -- delay between pressing a key and opening which-key (milliseconds)
<<<<<<< HEAD
<<<<<<< HEAD
||||||| parent of c92ea7c (Replace vim.opt with vim.o (#1495))
      -- this setting is independent of vim.opt.timeoutlen
=======
      -- this setting is independent of vim.o.timeoutlen
>>>>>>> c92ea7c (Replace vim.opt with vim.o (#1495))
||||||| parent of 7e54a4c (fix: trimming down config and updating stylua)
      -- this setting is independent of vim.o.timeoutlen
=======
>>>>>>> 7e54a4c (fix: trimming down config and updating stylua)
      delay = 0,
      icons = { mappings = vim.g.have_nerd_font },

      -- Document existing key chains
      spec = {
<<<<<<< HEAD
<<<<<<< HEAD
        { '<leader>s', group = '[S]earch', mode = { 'n', 'v' } },
||||||| parent of 1a5787b (Change LSP Keybindings to Match the Default `gr` Bindings Introduced in Neovim 0.11 (#1427))
        { '<leader>c', group = '[C]ode', mode = { 'n', 'x' } },
        { '<leader>d', group = '[D]ocument' },
        { '<leader>r', group = '[R]ename' },
        { '<leader>s', group = '[S]earch' },
        { '<leader>w', group = '[W]orkspace' },
=======
        { '<leader>s', group = '[S]earch' },
>>>>>>> 1a5787b (Change LSP Keybindings to Match the Default `gr` Bindings Introduced in Neovim 0.11 (#1427))
||||||| parent of 8c6b78c (feat(grep-string): works with visual selection too (#1605))
        { '<leader>s', group = '[S]earch' },
=======
        { '<leader>s', group = '[S]earch', mode = { 'n', 'v' } },
>>>>>>> 8c6b78c (feat(grep-string): works with visual selection too (#1605))
        { '<leader>t', group = '[T]oggle' },
<<<<<<< HEAD
<<<<<<< HEAD
        { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } }, -- Enable gitsigns recommended keymaps first
        { 'gr', group = 'LSP Actions', mode = { 'n' } },
||||||| parent of 80b1ee1 (Add 'gr' group to which-keys)
        { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
=======
        { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
||||||| parent of 886f2bc (Clarify gitsigns keymap for which-key)
        { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
=======
        { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } }, -- Enable gitsigns recommended keymaps first
>>>>>>> 886f2bc (Clarify gitsigns keymap for which-key)
        { 'gr', group = 'LSP Actions', mode = { 'n' } },
>>>>>>> 80b1ee1 (Add 'gr' group to which-keys)
      },
    },
  },

  -- NOTE: Plugins can specify dependencies.
  --
  -- The dependencies are proper plugin specifications as well - anything
  -- you do for a plugin at the top level, you can do for a dependency.
  --
  -- Use the `dependencies` key to specify the dependencies of a particular plugin

  { -- Fuzzy Finder (files, lsp, etc)
    'nvim-telescope/telescope.nvim',
    -- By default, Telescope is included and acts as your picker for everything.

    -- If you would like to switch to a different picker (like snacks, or fzf-lua)
    -- you can disable the Telescope plugin by setting enabled to false and enable
    -- your replacement picker by requiring it explicitly (e.g. 'custom.plugins.snacks')

    -- Note: If you customize your config for yourself,
    -- it’s best to remove the Telescope plugin config entirely
    -- instead of just disabling it here, to keep your config clean.
    enabled = true,
    event = 'VimEnter',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { -- If encountering errors, see telescope-fzf-native README for installation instructions
        'nvim-telescope/telescope-fzf-native.nvim',

        -- `build` is used to run some command when the plugin is installed/updated.
        -- This is only run then, not every time Neovim starts up.
        build = 'make',

        -- `cond` is a condition used to determine whether this plugin should be
        -- installed and loaded.
        cond = function() return vim.fn.executable 'make' == 1 end,
      },
      { 'nvim-telescope/telescope-ui-select.nvim' },

      -- Useful for getting pretty icons, but requires a Nerd Font.
      { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    },
    config = function()
      -- Telescope is a fuzzy finder that comes with a lot of different things that
      -- it can fuzzy find! It's more than just a "file finder", it can search
      -- many different aspects of Neovim, your workspace, LSP, and more!
      --
      -- The easiest way to use Telescope, is to start by doing something like:
      --  :Telescope help_tags
      --
      -- After running this command, a window will open up and you're able to
      -- type in the prompt window. You'll see a list of `help_tags` options and
      -- a corresponding preview of the help.
      --
      -- Two important keymaps to use while in Telescope are:
      --  - Insert mode: <c-/>
      --  - Normal mode: ?
      --
      -- This opens a window that shows you all of the keymaps for the current
      -- Telescope picker. This is really useful to discover what Telescope can
      -- do as well as how to actually do it!

      -- [[ Configure Telescope ]]
      -- See `:help telescope` and `:help telescope.setup()`
      require('telescope').setup {
        -- You can put your default mappings / updates / etc. in here
        --  All the info you're looking for is in `:help telescope.setup()`
        --
        -- defaults = {
        --   mappings = {
        --     i = { ['<c-enter>'] = 'to_fuzzy_refine' },
        --   },
        -- },
        -- pickers = {}
<<<<<<< HEAD
        defaults = {
          vimgrep_arguments = {
            'ack',
            '--nocolor',
            '--nogroup',
            '--column',
            '--smart-case',
          },
||||||| parent of e79572c (fix: continue cleaning up docs and config)
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown(),
          },
=======
        extensions = {
          ['ui-select'] = { require('telescope.themes').get_dropdown() },
>>>>>>> e79572c (fix: continue cleaning up docs and config)
        },
        extensions = {
          ['ui-select'] = { require('telescope.themes').get_dropdown() },
        },
      }

      -- Enable Telescope extensions if they are installed
      pcall(require('telescope').load_extension, 'fzf')
      pcall(require('telescope').load_extension, 'ui-select')

      -- See `:help telescope.builtin`
      local builtin = require 'telescope.builtin'
      vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
      vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
      vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
      vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
      vim.keymap.set({ 'n', 'v' }, '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
      vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
      vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
      vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
      vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
      vim.keymap.set('n', '<leader>sc', builtin.commands, { desc = '[S]earch [C]ommands' })
      vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })

<<<<<<< HEAD
      -- This runs on LSP attach per buffer (see main LSP attach function in 'neovim/nvim-lspconfig' config for more info,
      -- it is better explained there). This allows easily switching between pickers if you prefer using something else!
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('telescope-lsp-attach', { clear = true }),
        callback = function(event)
          local buf = event.buf

          -- Find references for the word under your cursor.
          vim.keymap.set('n', 'grr', builtin.lsp_references, { buffer = buf, desc = '[G]oto [R]eferences' })

          -- Jump to the implementation of the word under your cursor.
          -- Useful when your language has ways of declaring types without an actual implementation.
          vim.keymap.set('n', 'gri', builtin.lsp_implementations, { buffer = buf, desc = '[G]oto [I]mplementation' })

          -- Jump to the definition of the word under your cursor.
          -- This is where a variable was first declared, or where a function is defined, etc.
          -- To jump back, press <C-t>.
          vim.keymap.set('n', 'grd', builtin.lsp_definitions, { buffer = buf, desc = '[G]oto [D]efinition' })

          -- Fuzzy find all the symbols in your current document.
          -- Symbols are things like variables, functions, types, etc.
          vim.keymap.set('n', 'gO', builtin.lsp_document_symbols, { buffer = buf, desc = 'Open Document Symbols' })

          -- Fuzzy find all the symbols in your current workspace.
          -- Similar to document symbols, except searches over your entire project.
          vim.keymap.set('n', 'gW', builtin.lsp_dynamic_workspace_symbols, { buffer = buf, desc = 'Open Workspace Symbols' })

          -- Jump to the type of the word under your cursor.
          -- Useful when you're not sure what type a variable is and you want to see
          -- the definition of its *type*, not where it was *defined*.
          vim.keymap.set('n', 'grt', builtin.lsp_type_definitions, { buffer = buf, desc = '[G]oto [T]ype Definition' })
        end,
      })

      vim.keymap.set('v', '<leader>v', function()
        local val = table.concat(Get_selection())
        print(val)
        builtin.live_grep {
          prompt_title = 'Search Using Visual Selection',
          default_text = table.concat(Get_selection()),
        }
      end, { desc = '[v]isual search' })

      -- Override default behavior and theme when searching
||||||| parent of e87b728 (feat: move Telescope config to be contained by plugin (#1843))
      -- Slightly advanced example of overriding default behavior and theme
=======
      -- This runs on LSP attach per buffer (see main LSP attach function in 'neovim/nvim-lspconfig' config for more info,
      -- it is better explained there). This allows easily switching between pickers if you prefer using something else!
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('telescope-lsp-attach', { clear = true }),
        callback = function(event)
          local buf = event.buf

          -- Find references for the word under your cursor.
          vim.keymap.set('n', 'grr', builtin.lsp_references, { buffer = buf, desc = '[G]oto [R]eferences' })

          -- Jump to the implementation of the word under your cursor.
          -- Useful when your language has ways of declaring types without an actual implementation.
          vim.keymap.set('n', 'gri', builtin.lsp_implementations, { buffer = buf, desc = '[G]oto [I]mplementation' })

          -- Jump to the definition of the word under your cursor.
          -- This is where a variable was first declared, or where a function is defined, etc.
          -- To jump back, press <C-t>.
          vim.keymap.set('n', 'grd', builtin.lsp_definitions, { buffer = buf, desc = '[G]oto [D]efinition' })

          -- Fuzzy find all the symbols in your current document.
          -- Symbols are things like variables, functions, types, etc.
          vim.keymap.set('n', 'gO', builtin.lsp_document_symbols, { buffer = buf, desc = 'Open Document Symbols' })

          -- Fuzzy find all the symbols in your current workspace.
          -- Similar to document symbols, except searches over your entire project.
          vim.keymap.set('n', 'gW', builtin.lsp_dynamic_workspace_symbols, { buffer = buf, desc = 'Open Workspace Symbols' })

          -- Jump to the type of the word under your cursor.
          -- Useful when you're not sure what type a variable is and you want to see
          -- the definition of its *type*, not where it was *defined*.
          vim.keymap.set('n', 'grt', builtin.lsp_type_definitions, { buffer = buf, desc = '[G]oto [T]ype Definition' })
        end,
      })

<<<<<<< HEAD
      -- Slightly advanced example of overriding default behavior and theme
>>>>>>> e87b728 (feat: move Telescope config to be contained by plugin (#1843))
||||||| parent of e79572c (fix: continue cleaning up docs and config)
      -- Slightly advanced example of overriding default behavior and theme
=======
      -- Override default behavior and theme when searching
>>>>>>> e79572c (fix: continue cleaning up docs and config)
      vim.keymap.set('n', '<leader>/', function()
        -- You can pass additional configuration to Telescope to change the theme, layout, etc.
        builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
          winblend = 10,
          previewer = false,
        })
      end, { desc = '[/] Fuzzily search in current buffer' })

      -- It's also possible to pass additional configuration options.
      --  See `:help telescope.builtin.live_grep()` for information about particular keys
      vim.keymap.set(
        'n',
        '<leader>s/',
        function()
          builtin.live_grep {
            grep_open_files = true,
            prompt_title = 'Live Grep in Open Files',
          }
        end,
        { desc = '[S]earch [/] in Open Files' }
      )

      -- Shortcut for searching your Neovim configuration files
      vim.keymap.set('n', '<leader>sn', function() builtin.find_files { cwd = vim.fn.stdpath 'config' } end, { desc = '[S]earch [N]eovim files' })
    end,
  },

  -- LSP Plugins
<<<<<<< HEAD
  -- {
  --   -- `lazydev` configures Lua LSP for your Neovim config, runtime and plugins
  --   -- used for completion, annotations and signatures of Neovim apis
  --   'folke/lazydev.nvim',
  --   ft = 'lua',
  --   opts = {
  --     library = {
  --       -- Load luvit types when the `vim.uv` word is found
  --       { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
  --     },
  --   },
  -- },
  {
||||||| parent of 0c17d32 (maybe: seeing if we can get away without lazydev and just doing simpler setup)
  {
    -- `lazydev` configures Lua LSP for your Neovim config, runtime and plugins
    -- used for completion, annotations and signatures of Neovim apis
    'folke/lazydev.nvim',
    ft = 'lua',
    opts = {
      library = {
        -- Load luvit types when the `vim.uv` word is found
        { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
      },
    },
  },
  {
=======
  {
>>>>>>> 0c17d32 (maybe: seeing if we can get away without lazydev and just doing simpler setup)
    -- Main LSP Configuration
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs and related tools to stdpath for Neovim
      -- Mason must be loaded before its dependents so we need to set it up here.
      -- NOTE: `opts = {}` is the same as calling `require('mason').setup({})`
<<<<<<< HEAD
<<<<<<< HEAD
      {
        'mason-org/mason.nvim',
        ---@module 'mason.settings'
        ---@type MasonSettings
        ---@diagnostic disable-next-line: missing-fields
        opts = {},
      },
||||||| parent of 177ff61 (Add type hints to plugin options where possible)
      { 'mason-org/mason.nvim', opts = {} },
=======
      {
        'mason-org/mason.nvim',
        ---@module 'mason.settings'
        ---@type MasonSettings
        ---@diagnostic disable-next-line: missing-fields
        opts = {},
      },
>>>>>>> 177ff61 (Add type hints to plugin options where possible)
      -- Maps LSP server names between nvim-lspconfig and Mason package names.
      'mason-org/mason-lspconfig.nvim',
||||||| parent of 76cb865 (Change to Mason's new address (#1516))
      { 'williamboman/mason.nvim', opts = {} },
      'williamboman/mason-lspconfig.nvim',
=======
      { 'mason-org/mason.nvim', opts = {} },
<<<<<<< HEAD
<<<<<<< HEAD
      'mason-org/mason-lspconfig.nvim',
>>>>>>> 76cb865 (Change to Mason's new address (#1516))
||||||| parent of e79572c (fix: continue cleaning up docs and config)
      'mason-org/mason-lspconfig.nvim',
=======
>>>>>>> e79572c (fix: continue cleaning up docs and config)
||||||| parent of 1ba1789 (Re-add mason-lspconfig)
=======
      -- Maps LSP server names between nvim-lspconfig and Mason package names.
      'mason-org/mason-lspconfig.nvim',
>>>>>>> 1ba1789 (Re-add mason-lspconfig)
      'WhoIsSethDaniel/mason-tool-installer.nvim',

      -- Useful status updates for LSP.
      { 'j-hui/fidget.nvim', opts = {} },
<<<<<<< HEAD
<<<<<<< HEAD
||||||| parent of d350db2 (feat: switch nvim-cmp for blink.cmp (#1426))

      -- Allows extra capabilities provided by nvim-cmp
      'hrsh7th/cmp-nvim-lsp',
=======

      -- Allows extra capabilities provided by blink.cmp
      'saghen/blink.cmp',
>>>>>>> d350db2 (feat: switch nvim-cmp for blink.cmp (#1426))
||||||| parent of d97de4f (Remove blink from nvim-lspconfig dependencies)

      -- Allows extra capabilities provided by blink.cmp
      'saghen/blink.cmp',
=======
>>>>>>> d97de4f (Remove blink from nvim-lspconfig dependencies)
    },
    config = function()
      -- Brief aside: **What is LSP?**
      --
      -- LSP is an initialism you've probably heard, but might not understand what it is.
      --
      -- LSP stands for Language Server Protocol. It's a protocol that helps editors
      -- and language tooling communicate in a standardized fashion.
      --
      -- In general, you have a "server" which is some tool built to understand a particular
      -- language (such as `gopls`, `lua_ls`, `rust_analyzer`, etc.). These Language Servers
      -- (sometimes called LSP servers, but that's kind of like ATM Machine) are standalone
      -- processes that communicate with some "client" - in this case, Neovim!
      --
      -- LSP provides Neovim with features like:
      --  - Go to definition
      --  - Find references
      --  - Autocompletion
      --  - Symbol Search
      --  - and more!
      --
      -- Thus, Language Servers are external tools that must be installed separately from
      -- Neovim. This is where `mason` and related plugins come into play.
      --
      -- If you're wondering about lsp vs treesitter, you can check out the wonderfully
      -- and elegantly composed help section, `:help lsp-vs-treesitter`

      --  This function gets run when an LSP attaches to a particular buffer.
      --    That is to say, every time a new file is opened that is associated with
      --    an lsp (for example, opening `main.rs` is associated with `rust_analyzer`) this
      --    function will be executed to configure the current buffer
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('kickstart-lsp-attach', { clear = true }),
        callback = function(event)
          -- NOTE: Remember that Lua is a real programming language, and as such it is possible
          -- to define small helper and utility functions so you don't have to repeat yourself.
          --
          -- In this case, we create a function that lets us more easily define mappings specific
          -- for LSP related items. It sets the mode, buffer and description for us each time.
          local map = function(keys, func, desc, mode)
            mode = mode or 'n'
            vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
          end

<<<<<<< HEAD
          -- Rename the variable under your cursor.
          --  Most Language Servers support renaming across files, etc.
          map('grn', vim.lsp.buf.rename, '[R]e[n]ame')

          -- Execute a code action, usually your cursor needs to be on top of an error
          -- or a suggestion from your LSP for this to activate.
          map('gra', vim.lsp.buf.code_action, '[G]oto Code [A]ction', { 'n', 'x' })

          -- WARN: This is not Goto Definition, this is Goto Declaration.
          --  For example, in C this would take you to the header.
          map('grD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
||||||| parent of 1a5787b (Change LSP Keybindings to Match the Default `gr` Bindings Introduced in Neovim 0.11 (#1427))
          -- Jump to the definition of the word under your cursor.
          --  This is where a variable was first declared, or where a function is defined, etc.
          --  To jump back, press <C-t>.
          map('gd', require('telescope.builtin').lsp_definitions, '[G]oto [D]efinition')

          -- Find references for the word under your cursor.
          map('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')

          -- Jump to the implementation of the word under your cursor.
          --  Useful when your language has ways of declaring types without an actual implementation.
          map('gI', require('telescope.builtin').lsp_implementations, '[G]oto [I]mplementation')

          -- Jump to the type of the word under your cursor.
          --  Useful when you're not sure what type a variable is and you want to see
          --  the definition of its *type*, not where it was *defined*.
          map('<leader>D', require('telescope.builtin').lsp_type_definitions, 'Type [D]efinition')

          -- Fuzzy find all the symbols in your current document.
          --  Symbols are things like variables, functions, types, etc.
          map('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')

          -- Fuzzy find all the symbols in your current workspace.
          --  Similar to document symbols, except searches over your entire project.
          map('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

          -- Rename the variable under your cursor.
          --  Most Language Servers support renaming across files, etc.
          map('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')

          -- Execute a code action, usually your cursor needs to be on top of an error
          -- or a suggestion from your LSP for this to activate.
          map('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction', { 'n', 'x' })

          -- WARN: This is not Goto Definition, this is Goto Declaration.
          --  For example, in C this would take you to the header.
          map('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
=======
          -- Rename the variable under your cursor.
          --  Most Language Servers support renaming across files, etc.
          map('grn', vim.lsp.buf.rename, '[R]e[n]ame')

          -- Execute a code action, usually your cursor needs to be on top of an error
          -- or a suggestion from your LSP for this to activate.
          map('gra', vim.lsp.buf.code_action, '[G]oto Code [A]ction', { 'n', 'x' })

          -- WARN: This is not Goto Definition, this is Goto Declaration.
          --  For example, in C this would take you to the header.
          map('grD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')

<<<<<<< HEAD
          -- Fuzzy find all the symbols in your current document.
          --  Symbols are things like variables, functions, types, etc.
          map('gO', require('telescope.builtin').lsp_document_symbols, 'Open Document Symbols')

          -- Fuzzy find all the symbols in your current workspace.
          --  Similar to document symbols, except searches over your entire project.
          map('gW', require('telescope.builtin').lsp_dynamic_workspace_symbols, 'Open Workspace Symbols')

          -- Jump to the type of the word under your cursor.
          --  Useful when you're not sure what type a variable is and you want to see
          --  the definition of its *type*, not where it was *defined*.
          map('grt', require('telescope.builtin').lsp_type_definitions, '[G]oto [T]ype Definition')
>>>>>>> 1a5787b (Change LSP Keybindings to Match the Default `gr` Bindings Introduced in Neovim 0.11 (#1427))

||||||| parent of e87b728 (feat: move Telescope config to be contained by plugin (#1843))
          -- Fuzzy find all the symbols in your current document.
          --  Symbols are things like variables, functions, types, etc.
          map('gO', require('telescope.builtin').lsp_document_symbols, 'Open Document Symbols')

          -- Fuzzy find all the symbols in your current workspace.
          --  Similar to document symbols, except searches over your entire project.
          map('gW', require('telescope.builtin').lsp_dynamic_workspace_symbols, 'Open Workspace Symbols')

          -- Jump to the type of the word under your cursor.
          --  Useful when you're not sure what type a variable is and you want to see
          --  the definition of its *type*, not where it was *defined*.
          map('grt', require('telescope.builtin').lsp_type_definitions, '[G]oto [T]ype Definition')

=======
>>>>>>> e87b728 (feat: move Telescope config to be contained by plugin (#1843))
          -- The following two autocommands are used to highlight references of the
          -- word under your cursor when your cursor rests there for a little while.
          --    See `:help CursorHold` for information about when this is executed
          --
          -- When you move your cursor, the highlights will be cleared (the second autocommand).
          local client = vim.lsp.get_client_by_id(event.data.client_id)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
          if client and client:supports_method('textDocument/documentHighlight', event.buf) then
||||||| parent of db78c0b (fix: arguments for the `vim.lsp.Client.supports_method` method (#1356))
          if client and client.supports_method(vim.lsp.protocol.Methods.textDocument_documentHighlight) then
=======
          if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_documentHighlight) then
>>>>>>> db78c0b (fix: arguments for the `vim.lsp.Client.supports_method` method (#1356))
||||||| parent of e64aa51 (fix: regression introduced in db78c0b217fd9525e2cbcbffd18abbbbddc75b2e (#1367))
          if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_documentHighlight) then
=======
          if client and client_supports_method(client, vim.lsp.protocol.Methods.textDocument_documentHighlight, event.buf) then
>>>>>>> e64aa51 (fix: regression introduced in db78c0b217fd9525e2cbcbffd18abbbbddc75b2e (#1367))
||||||| parent of 3ddda4a (update: remove client_supports_method (#1810))
          if client and client_supports_method(client, vim.lsp.protocol.Methods.textDocument_documentHighlight, event.buf) then
=======
          if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_documentHighlight, event.buf) then
>>>>>>> 3ddda4a (update: remove client_supports_method (#1810))
||||||| parent of 3582280 (fix: remove deprecated methods)
          if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_documentHighlight, event.buf) then
=======
          if client and client:supports_method('textDocument/documentHighlight', event.buf) then
>>>>>>> 3582280 (fix: remove deprecated methods)
            local highlight_augroup = vim.api.nvim_create_augroup('kickstart-lsp-highlight', { clear = false })
            vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
              buffer = event.buf,
              group = highlight_augroup,
              callback = vim.lsp.buf.document_highlight,
            })

            vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
              buffer = event.buf,
              group = highlight_augroup,
              callback = vim.lsp.buf.clear_references,
            })

            vim.api.nvim_create_autocmd('LspDetach', {
              group = vim.api.nvim_create_augroup('kickstart-lsp-detach', { clear = true }),
              callback = function(event2)
                vim.lsp.buf.clear_references()
                vim.api.nvim_clear_autocmds { group = 'kickstart-lsp-highlight', buffer = event2.buf }
              end,
            })
          end

          -- The following code creates a keymap to toggle inlay hints in your
          -- code, if the language server you are using supports them
          --
          -- This may be unwanted, since they displace some of your code
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
          if client and client:supports_method('textDocument/inlayHint', event.buf) then
<<<<<<< HEAD
            map('<leader>th', function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = event.buf }) end, '[T]oggle Inlay [H]ints')
||||||| parent of db78c0b (fix: arguments for the `vim.lsp.Client.supports_method` method (#1356))
          if client and client.supports_method(vim.lsp.protocol.Methods.textDocument_inlayHint) then
||||||| parent of 3ddda4a (update: remove client_supports_method (#1810))
          if client and client_supports_method(client, vim.lsp.protocol.Methods.textDocument_inlayHint, event.buf) then
=======
          if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_inlayHint, event.buf) then
>>>>>>> 3ddda4a (update: remove client_supports_method (#1810))
||||||| parent of 3582280 (fix: remove deprecated methods)
          if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_inlayHint, event.buf) then
=======
          if client and client:supports_method('textDocument/inlayHint', event.buf) then
>>>>>>> 3582280 (fix: remove deprecated methods)
            map('<leader>th', function()
              vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = event.buf })
            end, '[T]oggle Inlay [H]ints')
=======
          if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_inlayHint) then
||||||| parent of e64aa51 (fix: regression introduced in db78c0b217fd9525e2cbcbffd18abbbbddc75b2e (#1367))
          if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_inlayHint) then
=======
          if client and client_supports_method(client, vim.lsp.protocol.Methods.textDocument_inlayHint, event.buf) then
>>>>>>> e64aa51 (fix: regression introduced in db78c0b217fd9525e2cbcbffd18abbbbddc75b2e (#1367))
            map('<leader>th', function()
              vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = event.buf })
            end, '[T]oggle Inlay [H]ints')
>>>>>>> db78c0b (fix: arguments for the `vim.lsp.Client.supports_method` method (#1356))
||||||| parent of 7e54a4c (fix: trimming down config and updating stylua)
            map('<leader>th', function()
              vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = event.buf })
            end, '[T]oggle Inlay [H]ints')
=======
            map('<leader>th', function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = event.buf }) end, '[T]oggle Inlay [H]ints')
>>>>>>> 7e54a4c (fix: trimming down config and updating stylua)
          end
        end,
      })

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
||||||| parent of 76e06fe (feat(diagnostic): add diagnostic config (#1335))
      -- Change diagnostic symbols in the sign column (gutter)
      -- if vim.g.have_nerd_font then
      --   local signs = { ERROR = '', WARN = '', INFO = '', HINT = '' }
      --   local diagnostic_signs = {}
      --   for type, icon in pairs(signs) do
      --     diagnostic_signs[vim.diagnostic.severity[type]] = icon
      --   end
      --   vim.diagnostic.config { signs = { text = diagnostic_signs } }
      -- end

      -- LSP servers and clients are able to communicate to each other what features they support.
      --  By default, Neovim doesn't support everything that is in the LSP specification.
      --  When you add nvim-cmp, luasnip, etc. Neovim now has *more* capabilities.
      --  So, we create new capabilities with nvim cmp, and then broadcast that to the servers.
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

=======
      -- Diagnostic Config
      -- See :help vim.diagnostic.Opts
      vim.diagnostic.config {
        update_in_insert = false,
        severity_sort = true,
        float = { border = 'rounded', source = 'if_many' },
        underline = { severity = vim.diagnostic.severity.ERROR },

        -- Can switch between these as you prefer
        virtual_text = true, -- Text shows up at the end of the line
        virtual_lines = false, -- Teest shows up underneath the line, with virtual lines

        -- Auto open the float, so you can easily read the errors when jumping with `[d` and `]d`
        jump = { float = true },
      }

||||||| parent of e79572c (fix: continue cleaning up docs and config)
      -- Diagnostic Config
      -- See :help vim.diagnostic.Opts
      vim.diagnostic.config {
        update_in_insert = false,
        severity_sort = true,
        float = { border = 'rounded', source = 'if_many' },
        underline = { severity = vim.diagnostic.severity.ERROR },

        -- Can switch between these as you prefer
        virtual_text = true, -- Text shows up at the end of the line
        virtual_lines = false, -- Teest shows up underneath the line, with virtual lines

        -- Auto open the float, so you can easily read the errors when jumping with `[d` and `]d`
        jump = { float = true },
      }

=======
>>>>>>> e79572c (fix: continue cleaning up docs and config)
      -- LSP servers and clients are able to communicate to each other what features they support.
      --  By default, Neovim doesn't support everything that is in the LSP specification.
      --  When you add blink.cmp, luasnip, etc. Neovim now has *more* capabilities.
      --  So, we create new capabilities with blink.cmp, and then broadcast that to the servers.
      local capabilities = require('blink.cmp').get_lsp_capabilities()

>>>>>>> 76e06fe (feat(diagnostic): add diagnostic config (#1335))
||||||| parent of 1f4c21f (Don't extend lsp capabilities because blink does it internally)
      -- LSP servers and clients are able to communicate to each other what features they support.
      --  By default, Neovim doesn't support everything that is in the LSP specification.
      --  When you add blink.cmp, luasnip, etc. Neovim now has *more* capabilities.
      --  So, we create new capabilities with blink.cmp, and then broadcast that to the servers.
      local capabilities = require('blink.cmp').get_lsp_capabilities()

=======
>>>>>>> 1f4c21f (Don't extend lsp capabilities because blink does it internally)
      -- Enable the following language servers
      --  Feel free to add/remove any LSPs that you want here. They will automatically be installed.
<<<<<<< HEAD
      --  See `:help lsp-config` for information about keys and how to configure
<<<<<<< HEAD
      ---@type table<string, vim.lsp.Config>
||||||| parent of e79572c (fix: continue cleaning up docs and config)
      --
      --  Add any additional override configuration in the following tables. Available keys are:
      --  - cmd (table): Override the default command used to start the server
      --  - filetypes (table): Override the default list of associated filetypes for the server
      --  - capabilities (table): Override fields in capabilities. Can be used to disable certain LSP features.
      --  - settings (table): Override the default settings passed when initializing the server.
      --        For example, to see the options for `lua_ls`, you could go to: https://luals.github.io/wiki/settings/
=======
      --  See `:help lsp-config` for information about keys and how to configure
>>>>>>> e79572c (fix: continue cleaning up docs and config)
||||||| parent of b9f3965 (Clean up the lua_ls config)
=======
      ---@type table<string, vim.lsp.Config>
>>>>>>> b9f3965 (Clean up the lua_ls config)
      local servers = {
        -- clangd = {},
        gopls = {},
        pyright = {},
        -- rust_analyzer = {},
        --
        -- Some languages (like typescript) have entire language plugins that can be useful:
        --    https://github.com/pmizio/typescript-tools.nvim
        --
        -- But for many setups, the LSP (`ts_ls`) will work just fine
<<<<<<< HEAD
        ts_ls = {},

        stylua = {}, -- Used to format Lua code
        --

        -- Special Lua Config, as recommended by neovim help docs
        lua_ls = {
          on_init = function(client)
            client.server_capabilities.documentFormattingProvider = false -- Disable formatting (formatting is done by stylua)

            if client.workspace_folders then
              local path = client.workspace_folders[1].name
              if path ~= vim.fn.stdpath 'config' and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc')) then return end
            end

            client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
              runtime = {
                version = 'LuaJIT',
                path = { 'lua/?.lua', 'lua/?/init.lua' },
              },
              workspace = {
                checkThirdParty = false,
                -- NOTE: this is a lot slower and will cause issues when working on your own configuration.
                --  See https://github.com/neovim/nvim-lspconfig/issues/3189
                library = vim.tbl_extend('force', vim.api.nvim_get_runtime_file('', true), {
                  '${3rd}/luv/library',
                  '${3rd}/busted/library',
                }),
              },
            })
          end,
          ---@type lspconfig.settings.lua_ls
          settings = {
            Lua = {
              format = { enable = false }, -- Disable formatting (formatting is done by stylua)
            },
          },
        },
        eslint = {},
        bashls = {},
||||||| parent of 0c17d32 (maybe: seeing if we can get away without lazydev and just doing simpler setup)
        -- ts_ls = {},
<<<<<<< HEAD
        --

        lua_ls = {
          -- cmd = { ... },
          -- filetypes = { ... },
          -- capabilities = {},
          settings = {
            Lua = {
              completion = {
                callSnippet = 'Replace',
              },
              -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
              -- diagnostics = { disable = { 'missing-fields' } },
            },
          },
        },
=======
        -- ts_ls = {},
>>>>>>> 0c17d32 (maybe: seeing if we can get away without lazydev and just doing simpler setup)
||||||| parent of b9f3965 (Clean up the lua_ls config)
=======

        stylua = {}, -- Used to format Lua code

        -- Special Lua Config, as recommended by neovim help docs
        lua_ls = {
          on_init = function(client)
            client.server_capabilities.documentFormattingProvider = false -- Disable formatting (formatting is done by stylua)

            if client.workspace_folders then
              local path = client.workspace_folders[1].name
              if path ~= vim.fn.stdpath 'config' and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc')) then return end
            end

            client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
              runtime = {
                version = 'LuaJIT',
                path = { 'lua/?.lua', 'lua/?/init.lua' },
              },
              workspace = {
                checkThirdParty = false,
                -- NOTE: this is a lot slower and will cause issues when working on your own configuration.
                --  See https://github.com/neovim/nvim-lspconfig/issues/3189
                library = vim.tbl_extend('force', vim.api.nvim_get_runtime_file('', true), {
                  '${3rd}/luv/library',
                  '${3rd}/busted/library',
                }),
              },
            })
          end,
          ---@type lspconfig.settings.lua_ls
          settings = {
            Lua = {
              format = { enable = false }, -- Disable formatting (formatting is done by stylua)
            },
          },
        },
>>>>>>> b9f3965 (Clean up the lua_ls config)
      }

      -- Ensure the servers and tools above are installed
      --
      -- To check the current status of installed tools and/or manually install
      -- other tools, you can run
      --    :Mason
      --
      -- You can press `g?` for help in this menu.
      local ensure_installed = vim.tbl_keys(servers or {})
      vim.list_extend(ensure_installed, {
<<<<<<< HEAD
<<<<<<< HEAD
||||||| parent of e79572c (fix: continue cleaning up docs and config)
        'stylua', -- Used to format Lua code
=======
        'lua_ls', -- Lua Language server
        'stylua', -- Used to format Lua code
>>>>>>> e79572c (fix: continue cleaning up docs and config)
||||||| parent of b9f3965 (Clean up the lua_ls config)
        'lua_ls', -- Lua Language server
        'stylua', -- Used to format Lua code
=======
>>>>>>> b9f3965 (Clean up the lua_ls config)
        -- You can add other tools here that you want Mason to install
        'stylua', -- Used to format Lua code
<<<<<<< HEAD
        'templ', -- Used to work with html templates
        'terraform-ls',
||||||| parent of ad246eb (fix: remove mason-lspconfig, we do not need it anymore)
=======
        -- You can add other tools here that you want Mason to install
>>>>>>> ad246eb (fix: remove mason-lspconfig, we do not need it anymore)
      })

      require('mason-tool-installer').setup { ensure_installed = ensure_installed }

<<<<<<< HEAD
<<<<<<< HEAD
      for name, server in pairs(servers) do
        vim.lsp.config(name, server)
        vim.lsp.enable(name)
      end
||||||| parent of 34e7d29 (Propsed fix for init.lua warnings as per https://github.com/nvim-lua/kickstart.nvim/issues/1305#issuecomment-2657770325 (#1354))
      require('mason-lspconfig').setup {
        handlers = {
          function(server_name)
            local server = servers[server_name] or {}
            -- This handles overriding only values explicitly passed
            -- by the server configuration above. Useful when disabling
            -- certain features of an LSP (for example, turning off formatting for ts_ls)
            server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
            require('lspconfig')[server_name].setup(server)
          end,
        },
      }
=======
      require('mason-lspconfig').setup {
        ensure_installed = { 'lua_ls' },
      }
<<<<<<< HEAD
>>>>>>> 34e7d29 (Propsed fix for init.lua warnings as per https://github.com/nvim-lua/kickstart.nvim/issues/1305#issuecomment-2657770325 (#1354))
||||||| parent of 0c17d32 (maybe: seeing if we can get away without lazydev and just doing simpler setup)
=======

||||||| parent of ad246eb (fix: remove mason-lspconfig, we do not need it anymore)
      require('mason-lspconfig').setup {
        ensure_installed = { 'lua_ls' },
      }

=======
>>>>>>> ad246eb (fix: remove mason-lspconfig, we do not need it anymore)
      for name, server in pairs(servers) do
        vim.lsp.config(name, server)
        vim.lsp.enable(name)
      end
<<<<<<< HEAD

      -- Special Lua Config, as recommended by neovim help docs
      vim.lsp.config('lua_ls', {
        on_init = function(client)
          if client.workspace_folders then
            local path = client.workspace_folders[1].name
            if path ~= vim.fn.stdpath 'config' and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc')) then return end
          end

          client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
            runtime = {
              version = 'LuaJIT',
              path = { 'lua/?.lua', 'lua/?/init.lua' },
            },
            workspace = {
              checkThirdParty = false,
              -- NOTE: this is a lot slower and will cause issues when working on your own configuration.
              --  See https://github.com/neovim/nvim-lspconfig/issues/3189
              library = vim.api.nvim_get_runtime_file('', true),
            },
          })
        end,
        settings = {
          Lua = {},
        },
      })
<<<<<<< HEAD
>>>>>>> 0c17d32 (maybe: seeing if we can get away without lazydev and just doing simpler setup)
||||||| parent of ad246eb (fix: remove mason-lspconfig, we do not need it anymore)
=======
      vim.lsp.enable 'lua_ls'
>>>>>>> ad246eb (fix: remove mason-lspconfig, we do not need it anymore)
||||||| parent of b9f3965 (Clean up the lua_ls config)

      -- Special Lua Config, as recommended by neovim help docs
      vim.lsp.config('lua_ls', {
        on_init = function(client)
          if client.workspace_folders then
            local path = client.workspace_folders[1].name
            if path ~= vim.fn.stdpath 'config' and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc')) then return end
          end

          client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
            runtime = {
              version = 'LuaJIT',
              path = { 'lua/?.lua', 'lua/?/init.lua' },
            },
            workspace = {
              checkThirdParty = false,
              -- NOTE: this is a lot slower and will cause issues when working on your own configuration.
              --  See https://github.com/neovim/nvim-lspconfig/issues/3189
              library = vim.api.nvim_get_runtime_file('', true),
            },
          })
        end,
        settings = {
          Lua = {},
        },
      })
      vim.lsp.enable 'lua_ls'
=======
>>>>>>> b9f3965 (Clean up the lua_ls config)
    end,
  },

  { -- Autoformat
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    keys = {
      {
        '<leader>f',
<<<<<<< HEAD
<<<<<<< HEAD
        function() require('conform').format { async = true } end,
||||||| parent of 7e54a4c (fix: trimming down config and updating stylua)
        function()
          require('conform').format { async = true, lsp_format = 'fallback' }
        end,
=======
        function() require('conform').format { async = true, lsp_format = 'fallback' } end,
>>>>>>> 7e54a4c (fix: trimming down config and updating stylua)
||||||| parent of 459b868 (Use stylua as an lsp formatter instead of an external formatter)
        function() require('conform').format { async = true, lsp_format = 'fallback' } end,
=======
        function() require('conform').format { async = true } end,
>>>>>>> 459b868 (Use stylua as an lsp formatter instead of an external formatter)
        mode = '',
        desc = '[F]ormat buffer',
      },
    },
    ---@module 'conform'
    ---@type conform.setupOpts
    opts = {
      notify_on_error = false,
      format_on_save = function(bufnr)
<<<<<<< HEAD
        -- You can specify filetypes to autoformat on save here:
        local enabled_filetypes = {
          -- lua = true,
          -- python = true,
        }
        if enabled_filetypes[vim.bo[bufnr].filetype] then
          return { timeout_ms = 500 }
        else
          return nil
        end
||||||| parent of 5e2d7e1 (changed Conform's format_on_save lambda so that buffers that match disable_filetypes return nil. This allows you to enable a formatter for langages in the disable_filetypes table to have a formatter that can be run manually with Leader-f but doesnt enable format_on_save for them (#1395))
        -- Disable "format_on_save lsp_fallback" for languages that don't
        -- have a well standardized coding style. You can add additional
        -- languages here or re-enable it for the disabled ones.
        local disable_filetypes = { c = true, cpp = true }
        local lsp_format_opt
        if disable_filetypes[vim.bo[bufnr].filetype] then
          lsp_format_opt = 'never'
        else
          lsp_format_opt = 'fallback'
        end
        return {
          timeout_ms = 500,
          lsp_format = lsp_format_opt,
        }
=======
        -- Disable "format_on_save lsp_fallback" for languages that don't
        -- have a well standardized coding style. You can add additional
        -- languages here or re-enable it for the disabled ones.
        local disable_filetypes = { c = true, cpp = true }
        if disable_filetypes[vim.bo[bufnr].filetype] then
          return nil
        else
          return { timeout_ms = 500 }
        end
>>>>>>> 5e2d7e1 (changed Conform's format_on_save lambda so that buffers that match disable_filetypes return nil. This allows you to enable a formatter for langages in the disable_filetypes table to have a formatter that can be run manually with Leader-f but doesnt enable format_on_save for them (#1395))
      end,
      default_format_opts = {
        lsp_format = 'fallback', -- Use external formatters if configured below, otherwise use LSP formatting. Set to `false` to disable LSP formatting entirely.
      },
      -- You can also specify external formatters in here.
      formatters_by_ft = {
<<<<<<< HEAD
        -- rust = { 'rustfmt' },
        lua = { 'stylua' },
        go = { 'gofmt' },
||||||| parent of 459b868 (Use stylua as an lsp formatter instead of an external formatter)
        lua = { 'stylua' },
=======
        -- rust = { 'rustfmt' },
>>>>>>> 459b868 (Use stylua as an lsp formatter instead of an external formatter)
        -- Conform can also run multiple formatters sequentially
        -- python = { "isort", "black" },
        --
        -- You can use 'stop_after_first' to run the first available formatter from the list
        -- javascript = { "prettierd", "prettier", stop_after_first = true },
      },
    },
  },

  { -- Autocompletion
    'saghen/blink.cmp',
    event = 'VimEnter',
    version = '1.*',
    dependencies = {
      -- Snippet Engine
      {
        'L3MON4D3/LuaSnip',
        version = '2.*',
        build = (function()
          -- Build Step is needed for regex support in snippets.
          -- This step is not supported in many windows environments.
          -- Remove the below condition to re-enable on windows.
          if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then return end
          return 'make install_jsregexp'
        end)(),
        dependencies = {
          -- `friendly-snippets` contains a variety of premade snippets.
          --    See the README about individual language/framework/plugin snippets:
          --    https://github.com/rafamadriz/friendly-snippets
          {
            'rafamadriz/friendly-snippets',
            config = function()
              require('luasnip.loaders.from_vscode').lazy_load()
            end,
          },
        },
        opts = {},
      },
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
||||||| parent of 282cbb9 (feat: add basic function signature help (#1358))
      'saadparwaiz1/cmp_luasnip',

      -- Adds other completion capabilities.
      --  nvim-cmp does not ship with all sources by default. They are split
      --  into multiple repos for maintenance purposes.
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
=======
      'saadparwaiz1/cmp_luasnip',

      -- Adds other completion capabilities.
      --  nvim-cmp does not ship with all sources by default. They are split
      --  into multiple repos for maintenance purposes.
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
<<<<<<< HEAD
      'hrsh7th/cmp-path',
<<<<<<< HEAD
      'htsh7th/cmp-nvim-lsp-signature-help',
>>>>>>> 282cbb9 (feat: add basic function signature help (#1358))
||||||| parent of 7c49ba1 (Fix: fix the cmp-nvim-lsp-signature-help link (#1363))
      'htsh7th/cmp-nvim-lsp-signature-help',
=======
||||||| parent of ea60b2b (Remove duplicate cmp-path (#1369))
      'hrsh7th/cmp-path',
=======
>>>>>>> ea60b2b (Remove duplicate cmp-path (#1369))
      'hrsh7th/cmp-nvim-lsp-signature-help',
>>>>>>> 7c49ba1 (Fix: fix the cmp-nvim-lsp-signature-help link (#1363))
||||||| parent of d350db2 (feat: switch nvim-cmp for blink.cmp (#1426))
      'saadparwaiz1/cmp_luasnip',

      -- Adds other completion capabilities.
      --  nvim-cmp does not ship with all sources by default. They are split
      --  into multiple repos for maintenance purposes.
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lsp-signature-help',
=======
      'folke/lazydev.nvim',
>>>>>>> d350db2 (feat: switch nvim-cmp for blink.cmp (#1426))
||||||| parent of 0c17d32 (maybe: seeing if we can get away without lazydev and just doing simpler setup)
      'folke/lazydev.nvim',
=======
>>>>>>> 0c17d32 (maybe: seeing if we can get away without lazydev and just doing simpler setup)
    },
<<<<<<< HEAD
<<<<<<< HEAD
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = {
        -- 'default' (recommended) for mappings similar to built-in completions
        --   <c-y> to accept ([y]es) the completion.
        --    This will auto-import if your LSP supports it.
        --    This will expand snippets if the LSP sent a snippet.
        -- 'super-tab' for tab to accept
        -- 'enter' for enter to accept
        -- 'none' for no mappings
        --
        -- For an understanding of why the 'default' preset is recommended,
        -- you will need to read `:help ins-completion`
||||||| parent of d350db2 (feat: switch nvim-cmp for blink.cmp (#1426))
    config = function()
      -- See `:help cmp`
      local cmp = require 'cmp'
      local luasnip = require 'luasnip'
      luasnip.config.setup {}

      cmp.setup {
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        completion = { completeopt = 'menu,menuone,noinsert' },

        -- For an understanding of why these mappings were
        -- chosen, you will need to read `:help ins-completion`
=======
    --- @module 'blink.cmp'
    --- @type blink.cmp.Config
||||||| parent of 177ff61 (Add type hints to plugin options where possible)
    --- @module 'blink.cmp'
    --- @type blink.cmp.Config
=======
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
>>>>>>> 177ff61 (Add type hints to plugin options where possible)
    opts = {
      keymap = {
        -- 'default' (recommended) for mappings similar to built-in completions
        --   <c-y> to accept ([y]es) the completion.
        --    This will auto-import if your LSP supports it.
        --    This will expand snippets if the LSP sent a snippet.
        -- 'super-tab' for tab to accept
        -- 'enter' for enter to accept
        -- 'none' for no mappings
        --
        -- For an understanding of why the 'default' preset is recommended,
        -- you will need to read `:help ins-completion`
>>>>>>> d350db2 (feat: switch nvim-cmp for blink.cmp (#1426))
        --
        -- No, but seriously. Please read `:help ins-completion`, it is really good!
        --
        -- All presets have the following mappings:
        -- <tab>/<s-tab>: move to right/left of your snippet expansion
        -- <c-space>: Open menu or open docs if already open
        -- <c-n>/<c-p> or <up>/<down>: Select next/previous item
        -- <c-e>: Hide menu
        -- <c-k>: Toggle signature help
        --
        -- See :h blink-cmp-config-keymap for defining your own keymap
        preset = 'default',

        -- For more advanced Luasnip keymaps (e.g. selecting choice nodes, expansion) see:
        --    https://github.com/L3MON4D3/LuaSnip?tab=readme-ov-file#keymaps
      },

      appearance = {
        -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
        -- Adjusts spacing to ensure icons are aligned
        nerd_font_variant = 'mono',
      },

      completion = {
        -- By default, you may press `<c-space>` to show the documentation.
        -- Optionally, set `auto_show = true` to show the documentation after a delay.
        documentation = { auto_show = false, auto_show_delay_ms = 500 },
      },

<<<<<<< HEAD
      sources = {
        default = { 'lsp', 'path', 'snippets' },
      },

      snippets = { preset = 'luasnip' },

<<<<<<< HEAD
      -- Blink.cmp includes an optional, recommended rust fuzzy matcher,
      -- which automatically downloads a prebuilt binary when enabled.
      --
      -- By default, we use the Lua implementation instead, but you may enable
      -- the rust implementation via `'prefer_rust_with_warning'`
      --
      -- See :h blink-cmp-config-fuzzy for more information
      fuzzy = { implementation = 'lua' },

      -- Shows a signature help window while you type arguments for a function
      signature = { enabled = true },
    },
||||||| parent of 282cbb9 (feat: add basic function signature help (#1358))
          -- For more advanced Luasnip keymaps (e.g. selecting choice nodes, expansion) see:
          --    https://github.com/L3MON4D3/LuaSnip?tab=readme-ov-file#keymaps
        },
        sources = {
          {
            name = 'lazydev',
            -- set group index to 0 to skip loading LuaLS completions as lazydev recommends it
            group_index = 0,
          },
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
          { name = 'path' },
        },
      }
    end,
=======
          -- For more advanced Luasnip keymaps (e.g. selecting choice nodes, expansion) see:
          --    https://github.com/L3MON4D3/LuaSnip?tab=readme-ov-file#keymaps
||||||| parent of d350db2 (feat: switch nvim-cmp for blink.cmp (#1426))
          -- Manually trigger a completion from nvim-cmp.
          --  Generally you don't need this, because nvim-cmp will display
          --  completions whenever it has completion options available.
          ['<C-Space>'] = cmp.mapping.complete {},

          -- Think of <c-l> as moving to the right of your snippet expansion.
          --  So if you have a snippet that's like:
          --  function $name($args)
          --    $body
          --  end
          --
          -- <c-l> will move you to the right of each of the expansion locations.
          -- <c-h> is similar, except moving you backwards.
          ['<C-l>'] = cmp.mapping(function()
            if luasnip.expand_or_locally_jumpable() then
              luasnip.expand_or_jump()
            end
          end, { 'i', 's' }),
          ['<C-h>'] = cmp.mapping(function()
            if luasnip.locally_jumpable(-1) then
              luasnip.jump(-1)
            end
          end, { 'i', 's' }),

          -- For more advanced Luasnip keymaps (e.g. selecting choice nodes, expansion) see:
          --    https://github.com/L3MON4D3/LuaSnip?tab=readme-ov-file#keymaps
=======
      sources = {
<<<<<<< HEAD
        default = { 'lsp', 'path', 'snippets', 'lazydev' },
        providers = {
          lazydev = { module = 'lazydev.integrations.blink', score_offset = 100 },
>>>>>>> d350db2 (feat: switch nvim-cmp for blink.cmp (#1426))
        },
<<<<<<< HEAD
        sources = {
          {
            name = 'lazydev',
            -- set group index to 0 to skip loading LuaLS completions as lazydev recommends it
            group_index = 0,
          },
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
          { name = 'path' },
          { name = 'nvim_lsp_signature_help' },
        },
      }
    end,
>>>>>>> 282cbb9 (feat: add basic function signature help (#1358))
||||||| parent of d350db2 (feat: switch nvim-cmp for blink.cmp (#1426))
        sources = {
          {
            name = 'lazydev',
            -- set group index to 0 to skip loading LuaLS completions as lazydev recommends it
            group_index = 0,
          },
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
          { name = 'path' },
          { name = 'nvim_lsp_signature_help' },
        },
      }
    end,
=======
||||||| parent of 0c17d32 (maybe: seeing if we can get away without lazydev and just doing simpler setup)
        default = { 'lsp', 'path', 'snippets', 'lazydev' },
        providers = {
          lazydev = { module = 'lazydev.integrations.blink', score_offset = 100 },
        },
=======
        default = { 'lsp', 'path', 'snippets' },
>>>>>>> 0c17d32 (maybe: seeing if we can get away without lazydev and just doing simpler setup)
      },

      snippets = { preset = 'luasnip' },

      -- Blink.cmp includes an optional, recommended rust fuzzy matcher,
      -- which automatically downloads a prebuilt binary when enabled.
      --
      -- By default, we use the Lua implementation instead, but you may enable
      -- the rust implementation via `'prefer_rust_with_warning'`
      --
      -- See :h blink-cmp-config-fuzzy for more information
      fuzzy = { implementation = 'lua' },

      -- Shows a signature help window while you type arguments for a function
      signature = { enabled = true },
    },
>>>>>>> d350db2 (feat: switch nvim-cmp for blink.cmp (#1426))
  },

  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('tokyonight').setup {
        styles = {
          comments = { italic = false }, -- Disable italics in comments
        },
      }

      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'tokyonight-night'
    end,
  },

  -- Highlight todo, notes, etc in comments
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    ---@module 'todo-comments'
    ---@type TodoOptions
    ---@diagnostic disable-next-line: missing-fields
    opts = { signs = false },
  },

  { -- Collection of various small independent plugins/modules
    'nvim-mini/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [I]next [Q]uote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup {
        -- NOTE: Avoid conflicts with the built-in incremental selection mappings on Neovim>=0.12 (see `:help treesitter-incremental-selection`)
        mappings = {
          around_next = 'aa',
          inside_next = 'ii',
        },
        n_lines = 500,
      }

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup()

      require('mini.indentscope').setup { delay = 100 }
      require('mini.trailspace').setup()

      vim.keymap.set('n', '<leader>rw', MiniTrailspace.trim, { desc = '[r]emove [w]hitespace' })

      -- Simple and easy statusline.
      --  You could remove this setup call if you don't like it,
      --  and try some other statusline plugin
      local statusline = require 'mini.statusline'
      -- set use_icons to true if you have a Nerd Font
      statusline.setup { use_icons = vim.g.have_nerd_font }

      -- You can configure sections in the statusline by overriding their
      -- default behavior. For example, here we set the section for
      -- cursor location to LINE:COLUMN
      ---@diagnostic disable-next-line: duplicate-set-field
      statusline.section_location = function() return '%2l:%-2v' end

      -- ... and there is more!
      --  Check out: https://github.com/nvim-mini/mini.nvim
    end,
  },

  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
<<<<<<< HEAD
<<<<<<< HEAD
    lazy = false,
    build = ':TSUpdate',
<<<<<<< HEAD
    branch = 'main',
    -- [[ Configure Treesitter ]] See `:help nvim-treesitter-intro`
    config = function()
      -- ensure basic parser are installed
      local parsers = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' }
      require('nvim-treesitter').install(parsers)

      ---@param buf integer
      ---@param language string
      local function treesitter_try_attach(buf, language)
        -- check if parser exists and load it
        if not vim.treesitter.language.add(language) then return end
        -- enables syntax highlighting and other treesitter features
        vim.treesitter.start(buf, language)

        -- enables treesitter based folds
        -- for more info on folds see `:help folds`
        -- vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        -- vim.wo.foldmethod = 'expr'

        -- check if treesitter indentation is available for this language, and if so enable it
        -- in case there is no indent query, the indentexpr will fallback to the vim's built in one
        local has_indent_query = vim.treesitter.query.get(language, 'indents') ~= nil

        -- enables treesitter based indentation
        if has_indent_query then vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()" end
      end

      local available_parsers = require('nvim-treesitter').get_available()
      vim.api.nvim_create_autocmd('FileType', {
        callback = function(args)
          local buf, filetype = args.buf, args.match

          local language = vim.treesitter.language.get_lang(filetype)
          if not language then return end

          local installed_parsers = require('nvim-treesitter').get_installed 'parsers'

          if vim.tbl_contains(installed_parsers, language) then
            -- enable the parser if it is installed
            treesitter_try_attach(buf, language)
          elseif vim.tbl_contains(available_parsers, language) then
            -- if a parser is available in `nvim-treesitter` auto install it, and enable it after the installation is done
            require('nvim-treesitter').install(language):await(function() treesitter_try_attach(buf, language) end)
          else
            -- try to enable treesitter features in case the parser exists but is not available from `nvim-treesitter`
            treesitter_try_attach(buf, language)
          end
        end,
      })
    end,
||||||| parent of 2d541c4 (fix: update main module reference for nvim-treesitter (#1832))
    main = 'nvim-treesitter.configs', -- Sets main module to use for opts
    -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
    opts = {
      ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' },
      -- Autoinstall languages that are not installed
      auto_install = true,
      highlight = {
        enable = true,
        -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
        --  If you are experiencing weird indenting issues, add the language to
        --  the list of additional_vim_regex_highlighting and disabled languages for indent.
        additional_vim_regex_highlighting = { 'ruby' },
      },
      indent = { enable = true, disable = { 'ruby' } },
    },
    -- There are additional nvim-treesitter modules that you can use to interact
    -- with nvim-treesitter. You should go explore a few and see what interests you:
    --
    --    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
    --    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
    --    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
=======
    main = 'nvim-treesitter.config', -- Sets main module to use for opts
    -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
    opts = {
      ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' },
      -- Autoinstall languages that are not installed
      auto_install = true,
      highlight = {
        enable = true,
        -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
        --  If you are experiencing weird indenting issues, add the language to
        --  the list of additional_vim_regex_highlighting and disabled languages for indent.
        additional_vim_regex_highlighting = { 'ruby' },
      },
      indent = { enable = true, disable = { 'ruby' } },
    },
    -- There are additional nvim-treesitter modules that you can use to interact
    -- with nvim-treesitter. You should go explore a few and see what interests you:
    --
    --    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
    --    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
    --    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
>>>>>>> 2d541c4 (fix: update main module reference for nvim-treesitter (#1832))
||||||| parent of 7ea937d (fix: as far as i can tell i updated to the right tree sitter stuff)
    build = ':TSUpdate',
    main = 'nvim-treesitter.config', -- Sets main module to use for opts
    -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
    opts = {
      ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' },
      -- Autoinstall languages that are not installed
      auto_install = true,
      highlight = {
        enable = true,
        -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
        --  If you are experiencing weird indenting issues, add the language to
        --  the list of additional_vim_regex_highlighting and disabled languages for indent.
        additional_vim_regex_highlighting = { 'ruby' },
      },
      indent = { enable = true, disable = { 'ruby' } },
    },
    -- There are additional nvim-treesitter modules that you can use to interact
    -- with nvim-treesitter. You should go explore a few and see what interests you:
    --
    --    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
    --    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
    --    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
=======
||||||| parent of a6dcf68 (Attach treesitter using language name instead of filetype)
=======
    lazy = false,
    build = ':TSUpdate',
    branch = 'main',
<<<<<<< HEAD
>>>>>>> a6dcf68 (Attach treesitter using language name instead of filetype)
||||||| parent of 4021496 (Add treesitter indentation)
=======
    -- [[ Configure Treesitter ]] See `:help nvim-treesitter-intro`
>>>>>>> 4021496 (Add treesitter indentation)
    config = function()
      -- ensure basic parser are installed
      local parsers = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' }
      require('nvim-treesitter').install(parsers)

      ---@param buf integer
      ---@param language string
      local function treesitter_try_attach(buf, language)
        -- check if parser exists and load it
        if not vim.treesitter.language.add(language) then return end
        -- enables syntax highlighting and other treesitter features
        vim.treesitter.start(buf, language)

        -- enables treesitter based folds
        -- for more info on folds see `:help folds`
        -- vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        -- vim.wo.foldmethod = 'expr'

        -- check if treesitter indentation is available for this language, and if so enable it
        -- in case there is no indent query, the indentexpr will fallback to the vim's built in one
        local has_indent_query = vim.treesitter.query.get(language, 'indents') ~= nil

        -- enables treesitter based indentation
        if has_indent_query then vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()" end
      end

      local available_parsers = require('nvim-treesitter').get_available()
      vim.api.nvim_create_autocmd('FileType', {
        callback = function(args)
          local buf, filetype = args.buf, args.match

          local language = vim.treesitter.language.get_lang(filetype)
          if not language then return end

          local installed_parsers = require('nvim-treesitter').get_installed 'parsers'

          if vim.tbl_contains(installed_parsers, language) then
            -- enable the parser if it is installed
            treesitter_try_attach(buf, language)
          elseif vim.tbl_contains(available_parsers, language) then
            -- if a parser is available in `nvim-treesitter` auto install it, and enable it after the installation is done
            require('nvim-treesitter').install(language):await(function() treesitter_try_attach(buf, language) end)
          else
            -- try to enable treesitter features in case the parser exists but is not available from `nvim-treesitter`
            treesitter_try_attach(buf, language)
          end
        end,
      })
    end,
>>>>>>> 7ea937d (fix: as far as i can tell i updated to the right tree sitter stuff)
  },

  -- The following comments only work if you have downloaded the kickstart repo, not just copy pasted the
  -- init.lua. If you want these files, they are in the repository, so you can just download them and
  -- place them in the correct locations.

  -- NOTE: Next step on your Neovim journey: Add/Configure additional plugins for Kickstart
  --
  --  Here are some example plugins that I've included in the Kickstart repository.
  --  Uncomment any of the lines below to enable them (you will need to restart nvim).
  --
  require 'kickstart.plugins.debug',
  -- require 'kickstart.plugins.indent_line',
  -- require 'kickstart.plugins.lint',
  -- require 'kickstart.plugins.autopairs',
<<<<<<< HEAD
  require 'kickstart.plugins.neo-tree',
  require 'kickstart.plugins.gitsigns', -- adds gitsigns recommend keymaps
  require 'kickstart.plugins.smear-cursor',
  -- require 'kickstart.plugins.dadbod-ui',
  require 'kickstart.plugins.flash',
  require 'kickstart.plugins.obsidian',
  -- require 'kickstart.plugins.avante',
||||||| parent of 886f2bc (Clarify gitsigns keymap for which-key)
  -- require 'kickstart.plugins.neo-tree',
  -- require 'kickstart.plugins.gitsigns', -- adds gitsigns recommend keymaps
=======
  -- require 'kickstart.plugins.neo-tree',
  -- require 'kickstart.plugins.gitsigns', -- adds gitsigns recommended keymaps
>>>>>>> 886f2bc (Clarify gitsigns keymap for which-key)

  -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
  --    This is the easiest way to modularize your config.
  --
  --  Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
  { import = 'custom.plugins' },
  --
  -- For additional information with loading, sourcing and examples see `:help lazy.nvim-🔌-plugin-spec`
  -- Or use telescope!
  -- In normal mode type `<space>sh` then write `lazy.nvim-plugin`
  -- you can continue same window with `<space>sr` which resumes last telescope search
}, { ---@diagnostic disable-line: missing-fields
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et

-- UGLY STUFF

-- Escape all Lua pattern magic characters
local function escape_pattern(text)
  return text:gsub('([^%w])', '%%%1')
end

function GotoGithubFileRange()
  local current_full_path = vim.fn.expand '%'
  local repo_top_level = vim.fn.system('git rev-parse --show-toplevel'):gsub('\n', '')
  print(repo_top_level)
  print(current_full_path)

  --local escaped_repo_top_level = repo_top_level:gsub('^([%^%$%(%)%.%[%]%*%+%-%?])', '%%%1')
  local escaped_repo_top_level = escape_pattern(repo_top_level)

  local cmd = 'gh browse ' .. current_full_path:gsub(escaped_repo_top_level, '') .. ':' .. vim.fn.line "'<" .. '-' .. vim.fn.line "'>"
  print(cmd)

  vim.fn.system(cmd)
end

vim.keymap.set('v', '<leader>gg', GotoGithubFileRange, { desc = '[g]ithub [g]o', noremap = true, silent = true })

function GotoGithubFile()
  local current_full_path = vim.fn.expand '%'
  local repo_top_level = vim.fn.system('git rev-parse --show-toplevel'):gsub('\n', '')
  print(repo_top_level)

  -- local escaped_repo_top_level = repo_top_level:gsub('^([%^%$%(%)%.%[%]%*%+%-%?])', '%%%1')
  local escaped_repo_top_level = escape_pattern(repo_top_level)

  local line_number = vim.api.nvim_win_get_cursor(0)[1]

  local cmd = 'gh browse ' .. current_full_path:gsub(escaped_repo_top_level, '') .. ':' .. line_number
  print(cmd)

  vim.fn.system(cmd)
end
vim.keymap.set('n', '<leader>gg', GotoGithubFile, { desc = '[g]ithub [g]o', noremap = true, silent = true })

function OpenDiffWithGitPath()
  -- Get the current file's relative path in the git repository
  local relative_path = vim.fn.system('git rev-parse --show-prefix'):gsub('\n', '')

  -- Define the base path (update this path as per your needs)
  local oy_path = vim.fn.expand '$HOME' .. '/projects/dc/oy-deployment-configuration'

  -- TODO: create a map to default to IE an override if oy's path is different from ours
  -- local mapping = {['us-path'] = "oy-path"}
  local mappings = {
    ['aws_gs/gsc/iceye_auth/gateway_connection_service/production/'] = 'aws_gs/gsc/iceye_auth/gateway-connection-service/production/',
    ['aws_gs/gsc/iceye_auth/gateway_connection_service/module/'] = 'aws_gs/gsc/iceye_auth/gateway-connection-service/module/',
  }

  if mappings[relative_path] then
    relative_path = mappings[relative_path]
    print 'found mapping using that'
  end
  local target_file = oy_path .. '/' .. relative_path .. vim.fn.expand '%:t'

  -- Open the current file in a diff split with the file from the target path
  vim.cmd('vert diffsplit ' .. target_file)
end

-- Map the function to a keybinding (e.g., <leader>d)
-- TODO: create a way to do :vsplit <oy-file>
vim.keymap.set('n', '<leader>doy', OpenDiffWithGitPath, { noremap = true, silent = true })

-- vim.keymap.set('n', '<leader>gg', ':lua GotoGithubFile()<CR>', { desc = '[g]ithub [g]o', noremap = true, silent = true })

-- function GotoGithubPR()
--   -- Get the blame information for that line
--   gitsigns.blame_line({ num = line, full = true }, function(blame)
--     if blame then
--       -- Yank the commit hash to the clipboard
--       vim.fn.setreg('+', blame.commit)
--       print('Commit hash yanked: ' .. blame.commit)
--     else
--       print 'No blame information found.'
--     end
--   end)
-- end
--
-- vim.keymap.set('n', '<leader>cpn', ':lua GotoGithubPR()<CR>', { desc = '[c]opy [p]ull request [n]umber', noremap = true, silent = true })

function GotoGithubPR()
  local pr_num = vim.fn.expand '<cword>'
  vim.fn.system('gh browse ' .. pr_num)
end

vim.keymap.set('n', '<leader>gtp', GotoGithubPR, { desc = '[g]o [t]o [p]ull request' })

function Get_selection()
  return vim.fn.getregion(vim.fn.getpos '.', vim.fn.getpos 'v', { mode = vim.fn.mode() })
end

vim.keymap.set('n', '<Leader>cp', ":let @+=expand('%:p')<CR>", { noremap = true, silent = true })
