"Plugins 
call plug#begin('~/.vim/plugged')

  "Thmes
  Plug 'arcticicestudio/nord-vim'

  "files
  Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}

  "Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'}
  Plug 'sheerun/vim-polyglot'

  "formatting stuff
  Plug 'prettier/vim-prettier', {'do': 'yarn install'}

  "lsp stuff
  "Plug 'neovim/nvim-lspconfig'
  Plug 'prabirshrestha/vim-lsp'
  Plug 'mattn/vim-lsp-settings' 
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'

  "fzf
  "Plug 'nvim-lua/popup.nvim'
  "Plug 'nvim-lua/plenary.nvim'
  "Plug 'nvim-telescope/telescope.nvim'
  Plug 'vim-scripts/FuzzyFinder'
  Plug 'vim-scripts/L9'

  "Live edit
  Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}

call plug#end()

colorscheme nord

set termguicolors
syntax on
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab autoindent
set incsearch smartcase hlsearch
set ruler
set hidden
set number
set rnu
let mapleader=' '

nmap <up> <nop>
nmap <down> <nop>
nmap <left> <nop>
nmap <right> <nop>
imap jk <ESC>
imap JK <ESC>
imap jK <ESC>
imap Jk <ESC>
vmap jk <ESC>
vmap JK <ESC>
vmap jK <ESC>
vmap Jk <ESC>
map <C-b> :NERDTreeToggle<CR>

"lua <<EOF
"require'nvim-treesitter'.configs.setup {
"  ensure_installed = 'maintained',
"  highlight = {
"    enable = true,
"  },
"}
"EOF

"lua << EOF
"  require'lspconfig'.tsserver.setup{}
"EOF

"Lsp vim config unnecesary
let g:lsp_settings = {
      \
      \}
" lsp keymaps
nmap gd :LspDefinition<CR>
nmap gD :LspDeclaration<CR>
nmap gi :LspImplementation<CR>
nmap gw :LspDocumentSymbol<CR>
nmap gW :LspWorkspaceSymbol<CR>
nmap gr :LspReferences<CR>
nmap gt :LspTypeDefinition<CR>
nmap K  :LspHover<CR>
nmap <C-k> :LspSignatureHelp<CR>
nmap <leader>af :LspCodeAction<CR>
nmap <leader>rn :LspRename<CR>

"fzf keymaps
nmap <leader>ff :FufFile<CR>
nmap <leader>fb :FufBuffer<CR>

"live server
map <leader><C-l> :Bracey<CR>
