set encoding=utf-8
scriptencoding utf-8

set t_Co=16
set background=dark
colorscheme hybrid

"文字エンコーディング
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,euc-jp,cp932,iso-2022-jp,latin1
set fileformats=unix,dos,mac
set ambiwidth=double

"スワップファイル
set noswapfile                          " スワップファイルを作らない

"バックアップ
set nowritebackup                       " 書き込み時のバックアップを作らない
set nobackup                            " バックアップファイルを作らない

"検索
set ignorecase
set smartcase
set hlsearch
set incsearch
"set wrapscan
"cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
"cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'

"編集
set shiftround                          " '<'や'>'でインデントする際に'shiftwidth'の倍数に丸める
set infercase                           " 補完時に大文字小文字を区別しない
"set virtualedit=all                     " カーソルを文字が存在しない部分でも動けるようにする
set hidden                              " 編集中でも他のファイルの編集を許可
set switchbuf=useopen                   " 新しく開く代わりにすでに開いてあるバッファを開く
set showmatch                           " 対応する括弧などをハイライト表示する
set matchtime=3                         " 対応括弧のハイライト表示を3秒にする
set matchpairs& matchpairs+=<:>         " 対応括弧に<と>を追加
set backspace=indent,eol,start          " バックスペースでなんでも消せる
"if has('unnamedplus')                   " クリップボードをデフォルトのレジスタとして指定
"    set clipboard& clipboard+=unnamedplus,unnamed
"else
"    set clipboard& clipboard+=unnamed
"endif

" 表示
"set number                              " 行番号表示
"set nowrap                              " 長い行も折り返さない
set wrap
set textwidth=0                         " 自動改行無効
"set colorcolumn=80                      " 80文字目にライン
set t_vb=                               " スクリーンベル無効
set novisualbell                        " スクリーンベル無効
"set list                                " 不可視文字を表示
"set listchars=eol:↵,space:␣,tab:>-,trail:␣,extends:»,precedes:«,nbsp:%

"タブ・インデント
set expandtab
"set noexpandtab
set tabstop=4
set softtabstop=4
set autoindent
set smartindent
set shiftwidth=4
"set smarttab

"nmap <silent> <Esc><Esc> :nohlsearch<CR>

"カーソル
"set whichwrap=b,s,h,l,<,>,[,],~
"set cursorline

"コマンド補完
set wildmenu
set history=10000

"ステータスライン
"set laststatus=2
"set statusline=%=%F%r%m[%L][%l:%c][%n]%{'['.(&fenc!=''?&fenc:&enc).']['.&fileformat.']'}

"モードライン
set modeline
set modelines=5

set viminfo='100,<100,s10,h

au BufRead,BufNewFile *.md set filetype=markdown

" for netrw
let g:netrw_liststyle=1
let g:netrw_altv=1
let g:netrw_alto=1
let g:netrw_banner=0
let g:netrw_sizestyle="H"
let g:netrw_timefmt="%Y/%m/%d(%a) %H:%M:%S"
let g:netrw_preview=1
let g:netrw_altv=1
let g:netrw_alto=1

" for vim-plug
if &compatible
    set nocompatible
endif
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'bronson/vim-trailing-whitespace'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/Align'
Plug 'vim-jp/vimdoc-ja'
Plug 'jlanzarotta/bufexplorer'
Plug 'will133/vim-dirdiff'
Plug 'tpope/vim-markdown'
Plug 'mattn/vim-maketable'
Plug 'previm/previm'
Plug 'davidhalter/jedi-vim'
Plug 'w0ng/vim-hybrid', {'do': 'cp colors/* ~/.vim/colors/'}
call plug#end()

filetype plugin indent on
syntax on

set helplang=ja
let g:previm_open_cmd = 'open -a Firefox'

"if !argc()
"    autocmd vimenter * NERDTree
"endif
