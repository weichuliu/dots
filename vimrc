set term=builtin_ansi
set number
set statusline+=%F
syntax on

" Tab settings
set list
set listchars=tab:▸\ 
highlight Tabs ctermbg=cyan
match Tabs /\t/
