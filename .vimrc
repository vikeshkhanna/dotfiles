"General
set nu

"Pathogen
execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

"ConqueTerm
command Cterm split | ConqueTerm bash
