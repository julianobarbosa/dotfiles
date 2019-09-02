" Python Path
let g:python_host_prog = expand('$HOME/.pyenv/versions/neovim2/bin/python')
let g:pythol2_host_prog = expand('$HOME/.pyenv/versions/neovim2/bin/python')
let g:python3_host_prog = expand('$HOME/.pyenv/versions/neovim3/bin/python')

" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>ez :e ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Habit
let mapleader=','
let tabstop=4
filetype plugin on

" jk is escape
inoremap jk <esc>

"" Buffer nav (see init.vim)
nnoremap <leader>b :ls<cr>:b<space>

"" quickly cancel search highlighting
nnoremap <leader><space> :nohlsearch<cr>

"" Strip all trailing whitespace
nnoremap <leader>f :StripWhitespace<cr>

" Sort lines in alphabetical order
vnoremap <leader>s :'<,'>!sort -f<cr>

" Quickly insert a timestamp
nnoremap tt "=strftime("%F %T%z")<cr>p

