" Plugins installed with vim-plug
call plug#begin('~/.vim/plugged')
Plug 'sophacles/vim-processing'
Plug 'mathijs-bakker/vim-unity-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovim/nvim-lspconfig'
Plug 'omnisharp/omnisharp-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'gfanto/fzf-lsp.nvim'
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'lambdalisue/suda.vim'
Plug 'lervag/vimtex'
Plug 'vimwiki/vimwiki'
call plug#end()

" coc
let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-pyright', 'coc-rls', 'coc-html', 'coc-pairs', 'coc-yaml', 'coc-css', 'coc-go']
autocmd FileType scss setl iskeyword+=@-@

" coc-pairs
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
				\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" vimwiki-specific
let g:vimwiki_list = [{'path': '~/tools/vimwiki/', 'auto_tags': 1, 'auto_diary_index': 1, 'syntax': 'markdown', 'ext': '.md', 'auto_toc': 1}]

let g:fzf_command_prefix = 'Fzf'
" fzf keybinds
nmap <Leader>ff :FzfFiles<CR>
nmap <Leader>fc :FzfCommits<CR>
nmap <Leader>ft :FzfTags<CR>
nmap <Leader>fg :FzfRg<CR>
nmap <Leader>fw :FzfWindows<CR>
" nmap <Leader>fr :FzfReferences<CR>
nmap <Leader>fr <Plug>(coc-references)

let g:OmniSharp_server_use_mono = 1

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

