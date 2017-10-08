call plug#begin('~/.local/share/nvim/plugged')

"RLS"

Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'

" (Optional) Completion integration with deoplete.
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" (Optional) Completion integration with nvim-completion-manager.
Plug 'roxma/nvim-completion-manager'

" (Optional) Showing function signature and inline doc.
Plug 'Shougo/echodoc.vim'
"End RLS"

" Make sure you use single quotes
Plug 'tpope/vim-sensible'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Initialize plugin system
call plug#end()

set mouse=a

let g:python3_host_prog="/home/brendan/dev/arch-venvs/neovim/bin/python3"

" Language Server settings
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'go': ['go-langserver']
    \ }

" Automatically start language servers.
let g:LanguageClient_autoStart = 1

" End Language Server settings
