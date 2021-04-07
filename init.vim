" custom leader key
let mapleader=","

" vim-plug plugins
call plug#begin('~/.local/share/nvim/plugged')

  Plug 'dense-analysis/ale' " Async Lint Engine (lang syntax)
  Plug 'mattn/emmet-vim' " emmet in vim
  Plug 'sheerun/vim-polyglot' " Language support (highlighting, syntax)
  Plug 'terryma/vim-multiple-cursors' " Multiple cursors (gamer moment)
  Plug 'othree/html5.vim' " html syntax plugin
  Plug 'tpope/vim-surround' " surrounds (tags, quotes, brackets)
  Plug 'tpope/vim-repeat' " allows . repeating for plugin actions

call plug#end()

" remap emmet vim trigger
let g:user_emmet_leader_key=","

" display line numbers
set number
" set relativenumber

" remap Escape to jk
inoremap jk <Esc>
tnoremap jk <C-\><C-n>

" give each nvim instance a 'proper' title
set title

" set up 'tabs = 2 spaces' behaviour
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set smarttab

" word wrapping
set linebreak
set colorcolumn=+1

" use middle-click clipboard for yank/delete by default
set clipboard=unnamed

" syntax highlighting
syntax on

set termguicolors

" use Vim Code Dark color scheme
" (based on VS Code)
colorscheme codedark

" line folding
set foldenable
" folds based on detected syntax
set foldmethod=syntax
" folds differently in html files
autocmd FileType html setl foldmethod=indent
" sets default fold depth
set foldlevel=6

" sets split behaviour - split new files right or below
set splitright splitbelow

" controls for tab switching (alt + tab number)
nnoremap <M-1> :b1<CR>
nnoremap <M-2> :b2<CR>
nnoremap <M-3> :b3<CR>
nnoremap <M-4> :b4<CR>
nnoremap <M-5> :b5<CR>
nnoremap <M-6> :b6<CR>
nnoremap <M-7> :b7<CR>
nnoremap <M-8> :b8<CR>
nnoremap <M-9> :b9<CR>
nnoremap <M-0> :b10<CR>


" sets mouseclick to append
set mouse=a

" sets whitespace visualization
set listchars=space:·

" sets the above to be visible by default
set list

" sets open files to update on external changes
set autoread

" sets file save to leader+w
nmap <leader>w :w<cr>

" nohl on escape
nmap <silent><esc> :nohl<cr>

" Move visually selected lines up and down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Easy access to init.vim
map <leader>ec :e! ~/.config/nvim/init.vim<CR>
