set = vim.opt
set.termguicolors = true
set.writebackup = false
set.swapfile = false
set.number = true
set.expandtab = true
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.autoindent = true
set.smarttab = true
set.mouse = 'a'
set.wrap = true
set.cursorline = true
set.scrolloff = 5
set.fileencoding = 'utf-8'
set.hidden = true
set.ignorecase = true
set.incsearch = true
set.timeoutlen = 1000
set.ttimeoutlen = 0
set.statusline = '3'

-- LSP Diagnostics/Errors icons
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- Display LSP errors in the place of line numbers, instead of
-- making second column and shifting vim to the right.
if vim.fn.has("nvim-0.5.0") or vim.fn.has("patch-8.1.1564") then
  set.signcolumn = "number"
else
  set.signcolumn = "yes"
end

-- Autosave plugin config
local autosave = require("autosave")
autosave.setup({
  enabled = true,
  execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
  events = {"InsertLeave", "TextChanged"},
  conditions = {
    exists = true,
    filename_is_not = {},
    filetype_is_not = {},
    modifiable = true
  },
  write_all_buffers = false,
  on_off_commands = true,
  clean_command_line_interval = 0,
  debounce_delay = 135
})
