let mapleader = ","
let g:netrw_banner=0

set noswapfile
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set scrolloff=2
set nowrap
set splitright
set splitbelow
set colorcolumn=80
"set expandtab
set ve="onemore"

"autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))

" Same as flyspell-buffer in emacs
map <F7> :setlocal spell! spelllang=en_us<CR>

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'lervag/vimtex'

Plug 'lifepillar/vim-solarized8'

Plug 'itchyny/lightline.vim'

Plug 'junegunn/fzf.vim'

Plug 'tmhedberg/matchit'

call plug#end()

"" solarized
set termguicolors
set background=dark
colorscheme solarized8
let g:solarized_diffmode="high"
let g:solarized_visibility="high"

"" lightline
set noshowmode

"" fzf
nnoremap <leader>r :History<CR>
nnoremap <leader>b :Buffers<CR>
