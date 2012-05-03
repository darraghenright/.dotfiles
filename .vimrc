syntax on
filetype on

" general  
set nocompatible
set nowrap
set number
set showmatch
set visualbell
set background=dark 
set cursorline

" solarized options 
let g:solarized_termcolors=256 
let g:solarized_visibility="high" 
let g:solarized_contrast="high" 
colorscheme solarized

" indentation/formatting
set smartindent
set expandtab

set tabstop=4
set shiftwidth=4

" indentation overrides
au FileType ruby,yaml set tabstop=2
au FileType ruby,yaml set shiftwidth=2

" twig syntax highlighting
au BufRead,BufNewFile *.twig set syntax=html

" search
set hlsearch
set incsearch

" temp files
set directory=/tmp

" normal mode mappings
nmap <Space> i_<Esc>r

" templates
au BufNewFile *.php  r ~/.vim/skeleton/skeleton.php
au BufNewFile *.html r ~/.vim/skeleton/skeleton.html

" insert mode mappings
"inoremap )) ()<Left>
"inoremap ]] []<Left>
inoremap ?? <?php<Space>
inoremap ## /**<CR><Space>*<CR>*/<Space><CR><Left>

" php omnicomplete
filetype plugin on
au FileType php set omnifunc=phpcomplete#CompletePHP

" check php syntax  
autocmd FileType php noremap <C-L> :!/usr/bin/env php -l %<CR>

" closetag script (http://www.vim.org/scripts/script.php?script_id=13)
" let g:closetag_html_style=1
" source ~/.vim/scripts/closetag.vim
" au Filetype html,xml,xsl source ~/.vim/scripts/closetag.vim
