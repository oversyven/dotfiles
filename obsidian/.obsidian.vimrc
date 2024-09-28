
let mapleader=" "

set relativenumber

-- Ctrl+j and Ctrl+k as Esc
nmap <C-j> <Esc>
imap <C-j> <Esc>
vmap <C-j> <Esc>
nmap <C-k> <Esc>
imap <C-k> <Esc>
vmap <C-k> <Esc>

-- ============ Move Cursor ==============
nmap j gj
namp k gk
nmap H ^
nmap L $

-- quick save
nmap <leader>ww :wa<cr>

-- clipboard (or use unnamedplus)
set clipboard=unnamed

" Go back and forward with Ctrl+O and Ctrl+I
" (make sure to remove default Obsidian shortcuts for these to work)
exmap back obcommand app:go-back
nmap <C-o> :back
exmap forward obcommand app:go-forward
nmap <C-i> :forward

