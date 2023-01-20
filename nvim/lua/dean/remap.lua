vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.api.nvim_set_keymap("n", "<leader>y", '"+y', {noremap=true, silent=true})
vim.api.nvim_set_keymap("n", "<leader>p", '"+p', {noremap=true, silent=true})
