set nocompatible
set number
set tabstop=2
set updatetime=100
"set cursorline
"set cursorcolumn
"highlight CursorLine cterm=bold ctermbg=blue ctermfg=yellow guibg=NONE guifg=NONE
"highlight CursorColumn cterm=NONE ctermbg=gray ctermfg=yellow guibg=NONE guifg=NONE
filetype off
 
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
"Vundle
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'lervag/vimtex'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar' 
Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'

call vundle#end() 
filetype plugin indent on 

"vimtex 
let g:tex_flavor = 'latex'
let g:vimtex_compiler_latexmk_engines={'_':'-xelatex'}
let g:vimtex_compiler_latexrun_engines={'_':'xelatex'}
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode = 1
set conceallevel=1
let g:tex_conceal='abdmg'

"color scheme : solarized
let g:solarized_termtrans = 1 
let g:solarized_visivility = "high"

if has('gui_running')
  set backgound=light
else
  set background=dark
endif
"colorscheme solarized

"powerline
set laststatus=2
set noshowmode
set t_Co=256

"NERDTree
let NERDTreeHightlightCursorline = 1
let NERDTreeShowLineNumbers      = 1
map <leader>tn :NERDTreeToggle<cr>
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"TagBar & ctags
let g:tagbar_ctags_bin = 'ctags'
let g:tarbar_left      = 1
map <leader>tb :TagbarToggle<CR>

"vim-gitgutter
highlight GitGutterAdd    ctermfg=blue
highlight GitGutterChange ctermfg=green
highlight GitGutterDelete ctermfg=red
let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = 'MM'
let g:gitgutter_sign_removed = '--'
let g:gitgutter_sign_removed_first_line = '^^'
let g:gitgutter_sign_removed_above_and_below = '{'
let g:gitgutter_sign_modified_removed = 'ww'

"source without quit when profile changed
autocmd BufWritePost $MYVIMRC source $MYVIMRC
