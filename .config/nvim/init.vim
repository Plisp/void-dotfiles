let mapleader = ","
let g:netrw_banner=0

set noswapfile
set number
set relativenumber
set tabstop=4
set shiftwidth=4
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

Plug 'neoclide/coc.nvim', {'branch': 'release'}

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
nnoremap <leader>t :Files<CR>


"" coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nn <silent> K :call CocActionAsync('doHover')<cr>

set updatetime=100
au CursorHold * silent call CocActionAsync('highlight')

" completion
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <silent> [e <Plug>(coc-diagnostic-prev)
nmap <silent> ]e <Plug>(coc-diagnostic-next)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Symbol renaming.
nmap <leader>R <Plug>(coc-rename)
