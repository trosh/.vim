runtime! debian.vim

let mapleader=","

inoremap jk <esc>

syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

let fortran_free_source=1

set nu
set ruler
set showcmd
"set cursorline

" Always display the status line, even if only one window is displayed
set laststatus=2

" Display line numbers on the left
set number

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

set wildmenu
set incsearch
set hlsearch

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set rtp+={repository_root}/powerline/bindings/vim

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
set listchars=tab:>-,trail:@,nbsp:~
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

" Enable use of the mouse for all modes
set mouse=a

" enable digraphs with {char 1} <BS> {char 2}
set digraph

" syntastic stuff
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1
"let g:ycm_register_as_syntastic_checker = 0

