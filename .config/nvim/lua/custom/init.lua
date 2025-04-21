-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

vim.keymap.set('n', '<C-d>', '10j', { noremap = true, silent = true })
vim.keymap.set('n', '<C-u>', '10k', { noremap = true, silent = true })

vim.keymap.set('v', '<C-d>', '10j', { noremap = true, silent = true })
vim.keymap.set('v', '<C-u>', '10k', { noremap = true, silent = true })
