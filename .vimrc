set nocompatible              " be iMproved
filetype off

so ~/.vim/plugins.vim

syntax enable

set backspace=indent,eol,start		" Make backspace behave like every other editor.
let mapleader = ','			" The default leader is \, but a comma is much better.
set number				" Let's activate line numbers.



"========================Visuals========================"
colorscheme atom-dark-256
set t_CO=256				"Use 256 colors for terminal version of vim



"========================Search========================"
set hlsearch
set incsearch



"========================Split Management========================"
set splitbelow
set splitright



"========================Mappings========================"

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

"Make NERDTree easier to toggle
nmap <C-k><C-b> :NERDTreeToggle<cr>



"======================== Plugins ========================"

"-
" CtrlP
"-
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
let g:ctrlp_custom_ignore = {
	\ 'dir': '\v[\/]\.(git)$',
	\ 'file': '\v\.(o)$',
	\ }

"========================Auto-Commands========================"

"Automatically source the Vimrc file on save.

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END



