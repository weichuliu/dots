set term=builtin_ansi
set number
set statusline+=%F
syntax on

" Tab settings
set list
set listchars=tab:▸\ 
highlight Tabs ctermbg=cyan
match Tabs /\t/

" Visual color
highlight Visual term=reverse cterm=reverse guibg=Grey

" Change cursor shape in insert-mode (iTerm2)
let &t_SI = "\<Esc>]1337;CursorShape=1\x7"
let &t_EI = "\<Esc>]1337;CursorShape=0\x7"
