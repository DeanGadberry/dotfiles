-- vim.cmd([[autocmd BufEnter *.pdf execute "!zathura '%'" | bdelete %]])
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
