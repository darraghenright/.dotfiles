syntax on
filetype on

" general  
set nocompatible
set nowrap
set number
set showmatch
set visualbell

" indentation/formatting
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4

" search
set hlsearch
set incsearch

" temp files
set directory=/tmp

" insert mode remaps
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap ?? <?php<Space>
inoremap ## /**<CR><Space>*<CR>*/<Space><CR>

" omnicomplete
filetype plugin on
au FileType php set omnifunc=phpcomplete#CompletePHP

" check php syntax  
autocmd FileType php noremap <C-L> :!/usr/bin/env php -l %<CR>

" closetag script (http://www.vim.org/scripts/script.php?script_id=13)
" let g:closetag_html_style=1
" source ~/.vim/scripts/closetag.vim
" au Filetype html,xml,xsl source ~/.vim/scripts/closetag.vim
