call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'lervag/vimtex'
Plug 'norcalli/nvim-colorizer.lua'
call plug#end()

set termguicolors

colorscheme gruvbox
set bg=dark

"do not automatically insert comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

if has('syntax') && !exists('g:syntax_on')
    syntax enable
endif

if &listchars ==# 'eol:$'
    set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

if !&scrolloff
    set scrolloff=1
endif

set smarttab expandtab tabstop=4 shiftwidth=4 softtabstop=4

set number relativenumber
set incsearch nohlsearch ignorecase
set autoread
set wildmenu
set ruler

map <C-d> :! zathura --fork %:t:r.pdf <CR><CR>
