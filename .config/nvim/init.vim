let mapleader = ","

set noswapfile
set number
set relativenumber

" Same as flyspell-buffer in emacs
map <F7> :setlocal spell! spelllang=en_us<CR>

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'morhetz/gruvbox'

Plug 'itchyny/lightline.vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" This is huge and should be compiled separately
Plug 'Valloric/YouCompleteMe', { 'for': ['c', 'cpp'] }

Plug 'rhysd/vim-clang-format'

Plug 'jceb/vim-orgmode'

Plug 'tmhedberg/matchit'

call plug#end()

" gruvbox
colorscheme gruvbox
set termguicolors
set background=dark
hi! Normal ctermbg=NONE guibg=NONE

" lightline
set noshowmode

" fzf
nnoremap <leader>r :History<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>t :Files<CR>
