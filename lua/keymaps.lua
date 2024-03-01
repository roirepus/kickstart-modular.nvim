-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

--nvim-tree keymaps
vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>tf", ":NvimTreeFocus<CR>")

--competitest keymaps
vim.keymap.set("n", "<leader>run", ":CompetiTest run<CR>")
vim.keymap.set("n", "<leader>atc", ":CompetiTest add_testcase<CR>")
vim.keymap.set("n", "<leader>etc", ":CompetiTest edit_testcase<CR>")
vim.keymap.set("n", "<leader>qn", ":CompetiTest receive problem<CR>")
vim.keymap.set("n", "<leader>ct", ":CompetiTest receive contest<CR>")
--code_runner keymaps
vim.keymap.set("n", "<leader>cr", ":RunCode<CR>")
vim.keymap.set("n", "<leader>er", ":RunClose<CR>")

-- vim: ts=2 sts=2 sw=2 et
