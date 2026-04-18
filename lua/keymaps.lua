vim.keymap.set('n', ',nt', '<Cmd>Neotree toggle<CR>', { desc = 'Toggle Neotree pane' })
vim.keymap.set('n', '<leader>en', vim.diagnostic.goto_next, { desc = '[e]rror [n]ext' })
vim.keymap.set('n', '<leader>ep', vim.diagnostic.goto_prev, { desc = '[e]rror [p]revious' })

local builtin = require 'telescope.builtin'

function Get_selection()
  return vim.fn.getregion(vim.fn.getpos '.', vim.fn.getpos 'v', { mode = vim.fn.mode() })
end

vim.keymap.set('v', '<leader>v', function()
	local val = table.concat(Get_selection())
	print(val)
	builtin.live_grep {
	  prompt_title = 'Search Using Visual Selection',
	  default_text = table.concat(Get_selection()),
	}
end, { desc = '[v]isual search' })

vim.keymap.set('n', '<leader>rw', MiniTrailspace.trim, { desc = '[r]emove [w]hitespace' })

vim.keymap.set('n', '<Leader>cp', ":let @+=expand('%:p')<CR>", { noremap = true, silent = true })

function GotoGithubPR()
  local pr_num = vim.fn.expand '<cword>'
  vim.fn.system('gh browse ' .. pr_num)
end

vim.keymap.set('n', '<leader>gtp', GotoGithubPR, { desc = '[g]o [t]o [p]ull request' })

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

