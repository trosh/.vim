runtime! debian.vim

" for special commands
let mapleader=","
" stop highlighting search results
nnoremap <leader><space> :nohlsearch<CR>
" can't remember
nnoremap gV `[v`]
" save session or whatever (havent used it in forever)
nnoremap <leader>s :mksession!<CR>

" to escape without leaving the home row
" i'm never actually gonna do that though
"inoremap jk <esc>

" color color color
syntax on
" weird tab magic coming up
filetype plugin indent on
" religion
set tabstop=4
set shiftwidth=4
set expandtab

" it's not the 70s anymore bro
let fortran_free_source=1

" display cursor position in statusline ?
set ruler
set showcmd
"set cursorline

" Always display the status line, even if only one window is displayed
set laststatus=2

" Display line numbers on the left
" Abbv'ted to :set nu if you type it by hand
set number

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" horizontal menu for cli autocompletion
set wildmenu
" user friendly search
set incsearch
set hlsearch

" powerline stuff
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set rtp+={repository_root}/powerline/bindings/vim

" similar to slate, choose slate if you only have it
colorscheme localslate

" load plugins the Cool© way
execute pathogen#infect()

"nnoremap tj :tabnext<CR>
"nnoremap tk :tabprev<CR>
nnoremap tt :tabedit<Space>
nnoremap td :tabclose<CR>

" go to next tab / previous tab (gt/gT is ok though)
nnoremap <S-h> gT
nnoremap <S-l> gt

" Highlight lines that overflow 80 columns
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

" Show whitespace (vital if you're a nerd)
" exec "set listchars=tab:\u251C\u2500,trail:\uB7,nbsp:~"
set listchars=tab:>-,trail:@,nbsp:~
set list

" Use dragvisuals.vim (this is shite unless you really need it)
vmap  <expr>  H  DVB_Drag('left')
vmap  <expr>  L  DVB_Drag('right')
vmap  <expr>  J  DVB_Drag('down')
vmap  <expr>  K  DVB_Drag('up')
vmap  <expr>  D  DVB_Duplicate()
"let g:DVB_TrimWS = 1

" no idea
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" Enable use of the mouse for all modes
" vital if you live in the 21st century
set mouse=a

" enable digraphs with {char 1} <BS> {char 2}
" holy shit why did i activate this it's B-S
"set digraph

" syntastic stuff
" used to work though it's slow
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1
"let g:ycm_register_as_syntastic_checker = 0

