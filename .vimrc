runtime! debian.vim
let mapleader=","
inoremap jk <esc>
set tabstop=4
set shiftwidth=4
let fortran_free_source=1
filetype plugin indent on
syntax on
set nu
set ruler
set showcmd
"set cursorline
set wildmenu
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>
nnoremap gV `[v`]
colorscheme localslate
execute pathogen#infect()
nnoremap <leader>s :mksession!<CR>
"nnoremap tj :tabnext<CR>
"nnoremap tk :tabprev<CR>
nnoremap tt :tabedit<Space>
nnoremap td :tabclose<CR>
nnoremap <S-h> gT
nnoremap <S-l> gt
" Highlight lines that overflow 80 columns
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)
" Show whitespace
" exec "set listchars=tab:\u251C\u2500,trail:\uB7,nbsp:~"
exec "set listchars=tab:>-,trail:@,nbsp:~"
set list
" Use dragvisuals.vim
vmap  <expr>  H  DVB_Drag('left')
vmap  <expr>  L  DVB_Drag('right')
vmap  <expr>  J  DVB_Drag('down')
vmap  <expr>  K  DVB_Drag('up')
vmap  <expr>  D  DVB_Duplicate()
"let g:DVB_TrimWS = 1
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
