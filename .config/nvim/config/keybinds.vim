" Enable Ctrl+V in insert mode
imap <C-v> <C-r>+
" Ctrl+o goes to new line in insert mode
imap <C-o> <Esc>o
" Ctrl+T / Ctrl+W for tab open/close
map <C-t> :tabnew
map <C-w> :tabclose<CR>
" Ctrl+A to select whole file content
map <C-a> 0ggvG$
" Left/right tab navigation like in qutebrowser
map <S-j> gT
map <S-k> gt
" toggle comment bind like in vscode
" Ctrl+[ to open tag under cursor in new tab
" Ctrl+] is default to open in current tab
nmap <C-[> :execute 'tab tag '.expand('<cword>')<CR>
nunmap <Esc>

nmap <Leader>wq :wq<CR>
nmap <Leader>qq :q<CR>
map <Leader>c :TComment<CR>
map <C-/> :TComment<CR>

" rust keybinds
nmap <Leader>rr :!cargo run<CR>
nmap <Leader>rb :!cargo build<CR>
nmap <Leader>rh :drop $HOME/tools/vimwiki/rust.md<CR>

