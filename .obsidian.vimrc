set clipboard=unnamed
imap jk <Esc>
nmap <CR> <Esc>

exmap unfoldall obcommand editor:unfold-all
exmap togglefold obcommand editor:toggle-fold
exmap foldall obcommand editor:fold-all
exmap foldless obcommand editor:fold-less
exmap foldmore obcommand editor:fold-more
nmap zo :togglefold
nmap zc :togglefold
nmap za :togglefold
nmap zm :foldmore
nmap zM :foldall
nmap zr :foldless
nmap zR :unfoldall

""""""""""""""""""""""
" Surround
" https://github.com/esm7/obsidian-vimrc-support#surround-text-with-surround "
""""""""""""""""""""""


exmap surround_wiki surround [[ ]]
exmap surround_double_quotes surround " "
exmap surround_single_quotes surround ' '
exmap surround_backticks surround ` `
exmap surround_brackets surround ( )
exmap surround_square_brackets surround [ ]
exmap surround_curly_brackets surround { }
exmap surround_underscore surround __ __
exmap surround_asterisk surround * *
exmap surround_dollar surround $ $

nunmap s
nmap sR :surround_square_brackets
nmap sq :surround_double_quotes
nmap sy :surround_single_quotes
nmap se :surround_backticks
nmap sb :surround_brackets
nmap sr :surround_wiki
nmap sc :surround_curly_brackets
nmap sa :surround_asterisk
nmap su :surround_underscore
nmap sd :surround_dollar

vunmap s
nmap sR :surround_square_brackets
vmap sq :surround_double_quotes
vmap sy :surround_single_quotes
vmap se :surround_backticks
vmap sb :surround_brackets
nmap sr :surround_wiki
vmap sc :surround_curly_brackets
vmap sa :surround_asterisk
vmap su :surround_underscore
vmap sd :surround_dollar
