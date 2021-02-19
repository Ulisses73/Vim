nnoremap <silent> <leader> :<c-u>WhichKey '\'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '\'<CR>

let g:which_key_timeout = 500

" Define prefix dictionary
let g:which_key_map = {}

call which_key#register('\', "g:which_key_map")

" vim:set ft=vim et sw=2:
