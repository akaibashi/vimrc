" ==================== 基本の設定 ==================== "
" 全般設定
set nocompatible "vi互換はOFFにする
set encoding=utf-8 "UTF-8を使う
set termencoding=utf-8 "UTF-8を使う
set fileencoding=utf-8 "UTF-8を使う
set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8 "自動補完する
set clipboard=unnamed,autoselect "クリップボードを使う
set backspace=indent,eol,start "バックスペースで消せるように
set formatoptions+=m "整形オプション，マルチバイト系を追加
set showcmd "コマンドをステータスラインに表示

" カラー設定
syntax on "カラーを有効化
colorscheme desert "カラースキーム 

" ディレクトリ表示設定
let g:netrw_liststyle = 3 "netrwは常にtree view
let g:netrw_altv = 1 "'v'でファイルを開くときは右側に開く。
let g:netrw_alto = 1 "'o'でファイルを開くときは下側に開く。

" TAB関連設定
set tabstop=2 "TABが対応する空白数
set expandtab "TABの代わりに空白文字を代入
set autoindent "自動インデントを使用
set shiftwidth=2 "オートインデント時にインデントする文字数
set softtabstop=2

" ファイルタイプ別インデント&プラグインを有効化する
filetype on
"filetype indent on
filetype plugin on

" コマンド補完
set wildmenu "コマンド補完を強化
set wildmode=list:full "リスト表示，最長マッチ

" 検索関連
set wrapscan "最後まで検索したら先頭へ戻る
set ignorecase "大文字小文字無視
set smartcase "大文字ではじめたら大文字小文字無視しない
set incsearch "インクリメンタルサーチ
set hlsearch "検索文字をハイライト

" ファイル関連
set nobackup "バックアップ取らない
set autoread "他で書き換えられたら自動で読み直す
set noswapfile "スワップファイル作らない
set hidden "編集中でも他のファイルを開けるようにする

"表示関連
set showmatch "括弧の対応をハイライト
set showcmd "入力中のコマンドを表示
set number "行番号表示
set wrap "画面幅で折り返す
set list "不可視文字表示
set notitle "タイトル書き換えない

" UTF-8の□や○でカーソル位置がずれないようにする
" Terminal.appはどっちにしてもダメ，PrivatePortsのiTermでやる
set ambiwidth=double

" マウス操作を有効にする
set mouse=a
set ttymouse=xterm2

" 括弧の補完
"inoremap { {}<LEFT>
"inoremap [ []<LEFT>
"inoremap ( ()<LEFT>

" 閉じタグの自動補完
"augroup MyXML
"  autocmd!
"  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
"  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
"  autocmd Filetype eruby inoremap <buffer> </ </<C-x><C-o>
"augroup END

" 改行時に自動でコメントしない設定
autocmd FileType * setlocal formatoptions-=ro

" windowサイズ変更の設定
"ウィンドウを下に大きくする Ctrl-E + j
"上に... Ctrl-E + k
"左に... Ctrl-E + h
"右に... Ctrl-E + l 
"nnoremap [winsize] <Nop>
"nmap <C-E> [winsize]
"nnoremap [winsize]k :resize -100<CR>
"nnoremap [winsize]j :resize +100<CR>
"nnoremap [winsize]h :vertical resize +100<CR>   
"nnoremap [winsize]l :vertical resize -100<CR>


" スクロール時にsmoothアニメーションさせる
let g:scroll_factor = 5000
let g:scroll_skip_line_size = 4
function! SmoothScroll(dir, windiv, factor)
  let wh=winheight(0)
  let i=0
  let j=0
  while i < wh / a:windiv
    let t1=reltime()
    let i = i + 1
    if a:dir=="d"
      if line('w$') == line('$')
        break
      endif
      exec "normal \<C-E>j"
    else
      if line('w0') == 1
        break
      endif
      exec "normal \<C-Y>k"
    end

    if j >= g:scroll_skip_line_size
      let j = 0
      redraw
      while 1
        let t2=reltime(t1,reltime())
        if t2[1] > g:scroll_factor * a:factor
          break
        endif
      endwhile
    else
      let j = j + 1
    endif
  endwhile
endfunction
map <C-D> :call SmoothScroll("d",2, 2)<CR>
map <C-U> :call SmoothScroll("u",2, 2)<CR>
map <C-F> :call SmoothScroll("d",1, 1)<CR>
map <C-B> :call SmoothScroll("u",1, 1)<CR>


" ==================== Vundle ==================== "
"filetype off
"set rtp+=~/.vim/vundle.git/
"call vundle#rc()

" javascriptのシンタックス関連
"Bundle 'JavaScript-syntax'
"Bundle 'pangloss/vim-javascript'
"Bundle 'altercation/vim-colors-solarized'
"HTML,CSSのコード入力補完とスニペット
"Bundle "https://github.com/Shougo/neocomplcache.git"
"Bundle 'https://github.com/Shougo/neosnippet'
" 文法チェック
"Bundle "https://github.com/scrooloose/syntastic.git"
" 選択範囲のハイライト
"Bundle "https://github.com/t9md/vim-quickhl.git"
" ディレクトリのツリー表示
"Bundle "https://github.com/scrooloose/nerdtree.git"
" 存在するメソッドや変数の一覧表示
"Bundle "vim-scripts/taglist.vim"
" 宣言やコール元のソースを表示
"Bundle "http://github.com/vim-scripts/SrcExpl"
" objective-cのコード補完
"Bundle 'git://github.com/tokorom/clang_complete.git'
"Bundle 'git://github.com/tokorom/clang_complete-getopts-ios.git'

"filetype plugin indent on


" ==================== プラグインの設定 ==================== "
"neocomplcache
"set completeopt=menuone "補完ウィンドウの設定
"let g:neocomplcache_enable_at_startup = 1 "起動時に有効化
"let g:neocomplcache_enable_smart_case = 1 "大文字が入力されるまで大文字小文字の区別を無視する
"let g:neocomplcache_enable_underbar_completion = 1 "アンダースコア区切りの補完を有効化
"let g:neocomplcache_enable_camel_case_completion  =  1 "アンダースコア区切りの補完を有効化
"let g:neocomplcache_max_list = 20 "ポップアップメニューで表示される候補の数
"let g:neocomplcache_min_syntax_length = 3 "シンタックスをキャッシュするときの最小文字長
"inoremap <expr><C-g> neocomplcache#undo_completion() "前回行われた補完をキャンセル
"neocomplcache snippets関連
"let g:neocomplcache_snippets_dir='~/.vim/snippets'
"imap <C-k> <Plug>(neocomplcache_snippets_expand)
"smap <C-k> <Plug>(neocomplcache_snippets_expand)
"imap <Tab> <Plug>(neocomplcache_snippets_expand)
"smap <Tab> <Plug>(neocomplcache_snippets_expand)

"syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{}SyntasticStatuslineFlag())}
"set statusline+=%*
"let g:syntastic_check_on_open = 1
"let g:syntastic_echo_current_error = 1
"let g:syntastic_enable_signs = 1
"let g:syntastic_enable_balloons = 1
"let g:syntastic_enable_highlighting = 1
"let g:syntastic_auto_jump = 1
"let g:syntastic_auto_loc_list = 2
"let g:syntastic_loc_list_height = 5
"let g:syntastic_mode_map = { 'mode': 'active',
"  \ 'active_filetypes': [],
"  \ 'passive_filetypes': ['html'] } "htmlは除外

" gjslint
"autocmd FileType javascript :compiler gjslint
"autocmd QuickfixCmdPost make copen

" vim-quickhl
"nmap <Space>m <Plug>(quickhl-toggle)
"xmap <Space>m <Plug>(quickhl-toggle)
"nmap <Space>M <Plug>(quickhl-reset)
"xmap <Space>M <Plug>(quickhl-reset)
"nmap <Space>j <Plug>(quickhl-match)

" NERDTree
"let NERDTreeWinSize=30
"let file_name = expand("%:p")
"if has('vim_starting') &&  file_name == ""
"    autocmd VimEnter * call ExecuteNERDTree()
"endif
"" カーソルが外れているときは自動的にnerdtreeを隠す
"function! ExecuteNERDTree()
"    "b:nerdstatus = 1 : NERDTree 表示中
"    "b:nerdstatus = 2 : NERDTree 非表示中
"    if !exists('g:nerdstatus')
"        execute 'NERDTree ./'
"        let g:windowWidth = winwidth(winnr())
"        let g:nerdtreebuf = bufnr('')
"        let g:nerdstatus = 1 
"    elseif g:nerdstatus == 1 
"        execute 'wincmd t'
"        execute 'vertical resize' 0 
"        execute 'wincmd p'
"        let g:nerdstatus = 2 
"    elseif g:nerdstatus == 2 
"        execute 'wincmd t'
"        execute 'vertical resize' g:windowWidth
"        let g:nerdstatus = 1 
"    endif
"endfunction
"noremap <c-e> :<c-u>:call ExecuteNERDTree()<cr>

"taglist
"let Tlist_Show_One_File = 1 " 現在表示中のファイルのみのタグしか表示しない
"let Tlist_Use_Right_Window = 1 " 右側にtag listのウインドうを表示する
"let Tlist_Exit_OnlyWindow = 1 " taglistのウインドウだけならVimを閉じる
"noremap <C-t> :Tlist
"noremap <Space>t :Tlist

"srcexpl
"noremap <C-e> :SrcExpl
"let g:SrcExpl_RefreshTime = 1 " 自動でプレビュー表示
"let g:SrcExpl_WinHeight = 9 " ウィンドウの高さ
"let g:SrcExpl_UpdateTags = 1 " tagsは自動で作成

" clang_complete
" neocomplcacheと共用するためのおまじない
"if !exists('g:neocomplcache_force_omni_patterns')
"  let g:neocomplcache_force_omni_patterns = {}
"endif
"let g:neocomplcache_force_overwrite_completefunc = 1
"let g:neocomplcache_force_omni_patterns.c =
"  \ '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplcache_force_omni_patterns.cpp =
"  \ '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
"let g:neocomplcache_force_omni_patterns.objc =
"  \ '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplcache_force_omni_patterns.objcpp =
"  \ '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
"let g:clang_complete_auto = 0
"let g:clang_auto_select = 0
"let g:clang_auto_user_options = 'path, .clang_complete, ios'
"let g:clang_use_library = 0

