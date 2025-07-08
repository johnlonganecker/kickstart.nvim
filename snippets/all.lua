-- ~/.config/nvim/snippets/python.lua
local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local function read_file_lines(path)
  local lines = {}
  for line in io.lines(path) do
    table.insert(lines, line)
  end
  return lines
end

local sre_path = vim.fn.stdpath 'config' .. '/snippets/snipFiles/sre.txt'
local security_hire_path = vim.fn.stdpath 'config' .. '/snippets/snipFiles/security_hire.txt'
local notes_path = vim.fn.stdpath 'config' .. '/snippets/snipFiles/notes.txt'

return {
  s('sre', {
    t(read_file_lines(sre_path)),
    i(0),
  }),
  s('security_hire', {
    t(read_file_lines(security_hire_path)),
    i(0),
  }),
  s('notes', {
    t(read_file_lines(notes_path)),
    i(0),
  }),
}
