vim.g.mapleader = " "
vim.keymap.set("n", "<leader>n", vim.cmd.Ex)
vim.api.nvim_set_keymap("n", "<leader>y", '"+y', {noremap=true, silent=true})
vim.api.nvim_set_keymap("n", "<leader>p", '"+p', {noremap=true, silent=true})
vim.api.nvim_set_keymap("n", "<leader>m", ':make %< <CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap("n", "<leader>w", ':w <CR>', {noremap=true, silent=true})
