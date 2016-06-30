" ==================== $B4pK\$N@_Dj(B ==================== "
" $BA4HL@_Dj(B
set nocompatible "vi$B8_49$O(BOFF$B$K$9$k(B
set encoding=utf-8 "UTF-8$B$r;H$&(B
set termencoding=utf-8 "UTF-8$B$r;H$&(B
set fileencoding=utf-8 "UTF-8$B$r;H$&(B
set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8 "$B<+F0Jd40$9$k(B
set clipboard=unnamed,autoselect "$B%/%j%C%W%\!<%I$r;H$&(B
set backspace=indent,eol,start "$B%P%C%/%9%Z!<%9$G>C$;$k$h$&$K(B
set formatoptions+=m "$B@07A%*%W%7%g%s!$%^%k%A%P%$%H7O$rDI2C(B
set showcmd "$B%3%^%s%I$r%9%F!<%?%9%i%$%s$KI=<((B

" $B%+%i!<@_Dj(B
syntax on "$B%+%i!<$rM-8z2=(B
colorscheme desert "$B%+%i!<%9%-!<%`(B 

" $B%G%#%l%/%H%jI=<(@_Dj(B
let g:netrw_liststyle = 3 "netrw$B$O>o$K(Btree view
let g:netrw_altv = 1 "'v'$B$G%U%!%$%k$r3+$/$H$-$O1&B&$K3+$/!#(B
let g:netrw_alto = 1 "'o'$B$G%U%!%$%k$r3+$/$H$-$O2<B&$K3+$/!#(B

" TAB$B4XO"@_Dj(B
set tabstop=2 "TAB$B$,BP1~$9$k6uGr?t(B
set expandtab "TAB$B$NBe$o$j$K6uGrJ8;z$rBeF~(B
set autoindent "$B<+F0%$%s%G%s%H$r;HMQ(B
set shiftwidth=2 "$B%*!<%H%$%s%G%s%H;~$K%$%s%G%s%H$9$kJ8;z?t(B
set softtabstop=2

" $B%U%!%$%k%?%$%WJL%$%s%G%s%H(B&$B%W%i%0%$%s$rM-8z2=$9$k(B
filetype on
"filetype indent on
filetype plugin on

" $B%3%^%s%IJd40(B
set wildmenu "$B%3%^%s%IJd40$r6/2=(B
set wildmode=list:full "$B%j%9%HI=<(!$:GD9%^%C%A(B

" $B8!:w4XO"(B
set wrapscan "$B:G8e$^$G8!:w$7$?$i@hF,$XLa$k(B
set ignorecase "$BBgJ8;z>.J8;zL5;k(B
set smartcase "$BBgJ8;z$G$O$8$a$?$iBgJ8;z>.J8;zL5;k$7$J$$(B
set incsearch "$B%$%s%/%j%a%s%?%k%5!<%A(B
set hlsearch "$B8!:wJ8;z$r%O%$%i%$%H(B

" $B%U%!%$%k4XO"(B
set nobackup "$B%P%C%/%"%C%W<h$i$J$$(B
set autoread "$BB>$G=q$-49$($i$l$?$i<+F0$GFI$_D>$9(B
set noswapfile "$B%9%o%C%W%U%!%$%k:n$i$J$$(B
set hidden "$BJT=8Cf$G$bB>$N%U%!%$%k$r3+$1$k$h$&$K$9$k(B

"$BI=<(4XO"(B
set showmatch "$B3g8L$NBP1~$r%O%$%i%$%H(B
set showcmd "$BF~NOCf$N%3%^%s%I$rI=<((B
set number "$B9THV9fI=<((B
set wrap "$B2hLLI}$G@^$jJV$9(B
set list "$BIT2D;kJ8;zI=<((B
set notitle "$B%?%$%H%k=q$-49$($J$$(B

" UTF-8$B$N""$d!{$G%+!<%=%k0LCV$,$:$l$J$$$h$&$K$9$k(B
" Terminal.app$B$O$I$C$A$K$7$F$b%@%a!$(BPrivatePorts$B$N(BiTerm$B$G$d$k(B
set ambiwidth=double

" $B%^%&%9A`:n$rM-8z$K$9$k(B
set mouse=a
set ttymouse=xterm2

" $B3g8L$NJd40(B
"inoremap { {}<LEFT>
"inoremap [ []<LEFT>
"inoremap ( ()<LEFT>

" $BJD$8%?%0$N<+F0Jd40(B
"augroup MyXML
"  autocmd!
"  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
"  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
"  autocmd Filetype eruby inoremap <buffer> </ </<C-x><C-o>
"augroup END

" $B2~9T;~$K<+F0$G%3%a%s%H$7$J$$@_Dj(B
autocmd FileType * setlocal formatoptions-=ro

" window$B%5%$%:JQ99$N@_Dj(B
"$B%&%#%s%I%&$r2<$KBg$-$/$9$k(B Ctrl-E + j
"$B>e$K(B... Ctrl-E + k
"$B:8$K(B... Ctrl-E + h
"$B1&$K(B... Ctrl-E + l 
"nnoremap [winsize] <Nop>
"nmap <C-E> [winsize]
"nnoremap [winsize]k :resize -100<CR>
"nnoremap [winsize]j :resize +100<CR>
"nnoremap [winsize]h :vertical resize +100<CR>   
"nnoremap [winsize]l :vertical resize -100<CR>


" $B%9%/%m!<%k;~$K(Bsmooth$B%"%K%a!<%7%g%s$5$;$k(B
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

" javascript$B$N%7%s%?%C%/%94XO"(B
"Bundle 'JavaScript-syntax'
"Bundle 'pangloss/vim-javascript'
"Bundle 'altercation/vim-colors-solarized'
"HTML,CSS$B$N%3!<%IF~NOJd40$H%9%K%Z%C%H(B
"Bundle "https://github.com/Shougo/neocomplcache.git"
"Bundle 'https://github.com/Shougo/neosnippet'
" $BJ8K!%A%'%C%/(B
"Bundle "https://github.com/scrooloose/syntastic.git"
" $BA*BrHO0O$N%O%$%i%$%H(B
"Bundle "https://github.com/t9md/vim-quickhl.git"
" $B%G%#%l%/%H%j$N%D%j!<I=<((B
"Bundle "https://github.com/scrooloose/nerdtree.git"
" $BB8:_$9$k%a%=%C%I$dJQ?t$N0lMwI=<((B
"Bundle "vim-scripts/taglist.vim"
" $B@k8@$d%3!<%k85$N%=!<%9$rI=<((B
"Bundle "http://github.com/vim-scripts/SrcExpl"
" objective-c$B$N%3!<%IJd40(B
"Bundle 'git://github.com/tokorom/clang_complete.git'
"Bundle 'git://github.com/tokorom/clang_complete-getopts-ios.git'

"filetype plugin indent on


" ==================== $B%W%i%0%$%s$N@_Dj(B ==================== "
"neocomplcache
"set completeopt=menuone "$BJd40%&%#%s%I%&$N@_Dj(B
"let g:neocomplcache_enable_at_startup = 1 "$B5/F0;~$KM-8z2=(B
"let g:neocomplcache_enable_smart_case = 1 "$BBgJ8;z$,F~NO$5$l$k$^$GBgJ8;z>.J8;z$N6hJL$rL5;k$9$k(B
"let g:neocomplcache_enable_underbar_completion = 1 "$B%"%s%@!<%9%3%"6h@Z$j$NJd40$rM-8z2=(B
"let g:neocomplcache_enable_camel_case_completion  =  1 "$B%"%s%@!<%9%3%"6h@Z$j$NJd40$rM-8z2=(B
"let g:neocomplcache_max_list = 20 "$B%]%C%W%"%C%W%a%K%e!<$GI=<($5$l$k8uJd$N?t(B
"let g:neocomplcache_min_syntax_length = 3 "$B%7%s%?%C%/%9$r%-%c%C%7%e$9$k$H$-$N:G>.J8;zD9(B
"inoremap <expr><C-g> neocomplcache#undo_completion() "$BA02s9T$o$l$?Jd40$r%-%c%s%;%k(B
"neocomplcache snippets$B4XO"(B
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
"  \ 'passive_filetypes': ['html'] } "html$B$O=|30(B

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
"" $B%+!<%=%k$,30$l$F$$$k$H$-$O<+F0E*$K(Bnerdtree$B$r1#$9(B
"function! ExecuteNERDTree()
"    "b:nerdstatus = 1 : NERDTree $BI=<(Cf(B
"    "b:nerdstatus = 2 : NERDTree $BHsI=<(Cf(B
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
"let Tlist_Show_One_File = 1 " $B8=:_I=<(Cf$N%U%!%$%k$N$_$N%?%0$7$+I=<($7$J$$(B
"let Tlist_Use_Right_Window = 1 " $B1&B&$K(Btag list$B$N%&%$%s%I$&$rI=<($9$k(B
"let Tlist_Exit_OnlyWindow = 1 " taglist$B$N%&%$%s%I%&$@$1$J$i(BVim$B$rJD$8$k(B
"noremap <C-t> :Tlist
"noremap <Space>t :Tlist

"srcexpl
"noremap <C-e> :SrcExpl
"let g:SrcExpl_RefreshTime = 1 " $B<+F0$G%W%l%S%e!<I=<((B
"let g:SrcExpl_WinHeight = 9 " $B%&%#%s%I%&$N9b$5(B
"let g:SrcExpl_UpdateTags = 1 " tags$B$O<+F0$G:n@.(B

" clang_complete
" neocomplcache$B$H6&MQ$9$k$?$a$N$*$^$8$J$$(B
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

