"General
set nu

"Pathogen
execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

"ConqueTerm
command Cterm split | ConqueTerm bash
nnoremap <silent> sh :Cterm<CR>

"NerdTree - 
"Fs open Nerdtree on the same tab. Nfs opens NerdTree in new tab.
command Fs NERDTree
command Nfs tabedit | NERDTree
nnoremap <silent> fs :Fs<CR>

"TagBar
nnoremap <silent> tt :TagbarToggle<CR>

"Omni Completion
filetype plugin on
set omnifunc=syntaxcomplete#Complete
inoremap <C-Space> <C-X><C-o>

"Editor 
command Ide NERDTree | TagbarToggle
