colorscheme slate
set background=dark

set number
set relativenumber
set ruler
set scrolloff=999

set hlsearch
set incsearch
set shortmess-=S

set belloff=all

set shiftwidth=2 softtabstop=2 tabstop=2 expandtab

set listchars=tab:⇥\ ,space:·
set list

filetype plugin indent on
syntax enable

highlight SpecialKey ctermfg=darkgray guifg=darkgray

"fzf
set rtp+=~/.fzf

nnoremap <silent> <C-f> :FZF<CR>

"go
autocmd FileType go setlocal tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab

""vim-go
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_test_show_name = 1
autocmd FileType go nmap <silent> <buffer> <Leader>gorn :GoRename<CR>
autocmd FileType go nmap <silent> <buffer> <Leader>goref :GoReferrers<CR>

"csharp
autocmd FileType cs setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab

""OmniSharp-vim
let g:OmniSharp_server_use_net6 = 1
autocmd FileType cs nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)
autocmd FileType cs nmap <silent> <buffer> <Leader>osfi <Plug>(omnisharp_find_implementations)
autocmd FileType cs nmap <silent> <buffer> <Leader>osfu <Plug>(omnisharp_find_usages)
autocmd FileType cs nmap <silent> <buffer> <Leader>osfx <Plug>(omnisharp_fix_usings)
autocmd FileType cs nmap <silent> <buffer> <Leader>osrn <Plug>(omnisharp_rename)
autocmd FileType cs nmap <silent> <buffer> <Leader>ostt <Plug>(omnisharp_run_test)
autocmd FileType cs nmap <silent> <buffer> <Leader>ostf <Plug>(omnisharp_run_tests_in_file)

"js
autocmd FileType js setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

"netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
