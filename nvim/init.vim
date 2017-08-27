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
