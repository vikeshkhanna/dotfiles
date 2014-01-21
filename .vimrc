"General
set nu

"Pathogen
execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

"ConqueTerm
command Cterm split | ConqueTerm bash

"NerdTree - 
"Fs open Nerdtree on the same tab. Nfs opens NerdTree in new tab.
command Fs NERDTree
command Nfs tabedit | NERDTree
