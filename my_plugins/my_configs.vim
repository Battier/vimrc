set nu
set ic
set guioptions+=T  "toolbar
set guioptions+=r  "scrollbar

set guifont=Monospace\ 13

try
    colorscheme solarized
catch
endtry

set cscopequickfix=s-,c-,d-,i-,t-,e-
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=1
    set cst
    "set csverb
    set cspc=3
    "add any database in current dir
    if filereadable("cscope.out")
        cs add cscope.out
    endif
    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>:copen<CR>
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>:copen<CR>
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>:copen<CR>
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>:copen<CR>
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>:copen<CR>
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>:copen<CR>
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>:copen<CR>
endif

"-- Taglist setting --
let Tlist_Ctags_Cmd='ctags'
let Tlist_Use_Right_Window=0
let Tlist_Show_One_File=0
let Tlist_Exit_OnlyWindow=1
let Tlist_Process_File_Always=1
let Tlist_Inc_Winwidth=0
let Tlist_Close_On_Select = 0

"-- Taglist setting for perl --
let tlist_perl_settings='perl;p:package;u:use;r:role;e:extends;c:constant;a:attribute;s:subroutine;m:method;l:label'    

nmap <F6> :Tlist<cr>

set timeoutlen=5000
set ttimeout
