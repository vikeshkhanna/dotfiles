"General
set nu

"Pathogen
execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

"NerdTree
autocmd vimenter * NERDTree
