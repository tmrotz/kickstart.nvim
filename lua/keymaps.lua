-- Move selected text up and down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'J', 'mzJ`z')

-- While half page jumping, stay centered
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- While searching, keep found text in center of screen
--vim.keymap.set('n', 'n', "nzzzv")
--vim.keymap.set('n', 'N', "Nzzzv")

-- vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz', { desc = "Forward qfixlist" })
-- vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz', { desc = "Backward qfixlist" })
--vim.keymap.set('n', '<leader>k>', '<cmd>lnext<CR>zz', { desc = "Forward location list" })
--vim.keymap.set('n', '<leader>j>', '<cmd>lprev<CR>zz', { desc = "Backward location list" })

vim.keymap.set('v', '<leader>p', '"_dP', { desc = "Don't yank on visual paste" })

vim.keymap.set({ 'n', 'x' }, 's', '<Nop>')
