"echomsg ">^.^<"
filetype on
filetype indent on
filetype plugin indent on
syntax on
set number
set tabstop=4
set shiftwidth=4
set ignorecase
set ambiwidth=double
set display+=lastline
"set expandtab

"自動的にインデントする
set autoindent


" 括弧入力時に対応する括弧を表示する(noshowmatch:表示しない)
set showmatch

"set tab for html file
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType php setlocal shiftwidth=4 tabstop=4 softtabstop=4

"php関数の補完に使う辞書を指定する
"使い方：Ctrl-x Ctrl-k 
"Ctrl-nで次の補完候補、Ctrl-pで前の補完候補に移動できます
autocmd FileType php :set dict=~/.vim/dict/php.dict

"if you search string has one or more characters in upper case,
" it will assume that you want a case-sensitive search
set smartcase
set incsearch

"convert a word to uppercase in insert mode
inoremap <c-u> <esc>gUiwA

"convert a word to uppercase in normal mode
nnoremap <c-u> <esc>gUiwA

"convert a word to lowercase in insert mode
inoremap <c-l> <esc>guiwA

"convert a word to lowercase in normal mode
nnoremap <c-l> <esc>guiwA

"一行を削除してinsertモードにはいる
nnoremap -c ddO


" set prefix to ',’                                                    
let mapleader=","

"nnoremap <leader>d dd                                                     
" $MYVIMRC is a special variable points to your ~/.vimrc and this ',ev' means edit you .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>                                   

" use ',sv' to source you .vimrc file
nnoremap <leader>sv :source $MYVIMRC<cr>                                   

"when type 'tow' in insert mode, it becomes 'two'                          
"iabbrev tow two                                                           

iabbrev @@ madfrogme@gmail.com                                             

"dont use inoremap, or 'ssig' will be replaced whenever you type it        
iabbrev ssig ------- <cr>Wang <cr>wang@gmail.com

" type 'jk' in insert mode, vim will act as if you pressed the escape key .                                                                    
inoremap jk <esc> 

" use ',z' to exit in insert mode
inoremap <leader>z <esc>ZZ

" you can set options locally using setlocal
" setlocal number



" first, enable status line always
set laststatus=2
" now set it up to change the status line based on mode
if version >= 700
	au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
	au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse
endif


if has("multi_byte")
  if &termencoding == ""
	let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
endif

" highlight ejs file
au BufNewFile,BufRead *.ejs set filetype=html
