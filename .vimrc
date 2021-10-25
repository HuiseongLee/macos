set showmode

colorscheme torte2

"set hlsearch            " highlight the last searched term

" Tell vim to remember certain things when we exit
"  '10  : marks will be remembered for up to 10 previously edited files
"  "100 : will save up to 100 lines for each register
"  :20  : up to 20 lines of command-line history will be remembered
"  %    : saves and restores the buffer list
"  n... : where to save the viminfo files
set viminfo='20,\"50,:20

set nu " display line number
set ruler
set visualbell

syntax on "syntax highlighting

set autoindent
"set cindent

" tab action
set tabstop=8
set smarttab

filetype plugin on "use the file type plugins
autocmd FileType c,cpp,java,python,sh,dosbatch set softtabstop=4|set shiftwidth=4|set expandtab

" backspace and cursor keys wrap to previous/next line
set backspace=indent,eol,start whichwrap+=<,>,[,]

nmap ^C-]> :exe "tjump ".expand("<cword>")<CR>

" tag file
set tags=tags

" cscope
if has("cscope")
    set csto=0

    cs add cscope.out

    if $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    else
        cs add ~/ref/linux-4.18.3/cscope.out
    "else
    "    cs add /usr/src/linux-source-2.6.22/cscope.out
    endif

    set cscopeverbose

    " cscope/vim key mappings
    " 's' symbol: find all references to the token under cursor
    " 'g' global: find global definition(s) of the token under cursor
    " 'c' calls:  find all calls to the function name under cursor
    " 't' text:   find all instances of the text under cursor
    " 'e' egrep:  egrep search for the word under cursor
    " 'f' file:   open the filename under cursor
    " 'i' includes: find files that include the filename under cursor
    " 'd' called: find functions that function under cursor calls
    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>f :cs find f <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>i :cs find i <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

    " CTRL-space <C-@> search and split horizonal window
    nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>f :scs find f <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>i :scs find i <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>

    " CTRL-space CTRL-space vertical split
    nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>i :vert scs find i <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>

    " key map timeout
    "set notimeout
    " Or
    "set timetouteln=4000
    "set ttimeout
    "set ttimeoutlen=100
endif
