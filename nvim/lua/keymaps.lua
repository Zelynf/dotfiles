-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Keybinds to focus panes with HJKL
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Keybind to open noetree on Leader + E
vim.keymap.set('n', '<Leader>e', '<Cmd>Neotree toggle<CR>', { desc = 'Toggle NoeTree side panel' })


-- Briefly highlight yanked text (From Kickstart.nvim)
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- Remap 'x' to 'd' since d wont copy deleted text due to no-cut.lua plugin
vim.keymap.set("n", "x", "d", { noremap = true, silent = true })
vim.keymap.set("n", "X", "D", { noremap = true, silent = true })
vim.keymap.set("v", "x", "d", { noremap = true, silent = true })
vim.keymap.set("v", "X", "D", { noremap = true, silent = true })

-- Show all Diagnostics with Leader + D
vim.keymap.set('n', '<leader>d', function()
  vim.diagnostic.setloclist({open=true})
end, {silent=true})
