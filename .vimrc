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
inoremap <C-Space> <C-X><C-o>

"Editor 
command Ide NERDTree | TagbarToggle

"Move between split windows
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

"Drag words like in Windows
nnoremap <C-Left> b
vnoremap <C-S-Left> b
nnoremap <C-S-Left> gh<C-O>b
inoremap <C-S-Left> <C-\><C-O>gh<C-O>b

nnoremap <C-Right> w
vnoremap <C-S-Right> w
nnoremap <C-S-Right> gh<C-O>w
inoremap <C-S-Right> <C-\><C-O>gh<C-O>wA
