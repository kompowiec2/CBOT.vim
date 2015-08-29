
Syntax highlighting fictional programming language CBOT for vim

INSTALL

to add CBOT from vim, copying "CBOT.vim" file form root directory vim SYNTAX

Afther run CBOT script active syntax from:

:set syntax=cbot.vim

if you want auto highlighting, run filetype.vim and add line:

" CBOT
au BufNewFile,BufRead *.cbot			setf cbot
