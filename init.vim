set number
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/ghifarit53/tokyonight-vim'
Plug 'https://github.com/Yggdroot/indentLine'
Plug 'https://github.com/psliwka/vim-smoothie'
Plug 'https://github.com/mbbill/undotree'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier'] 
Plug 'jiangmiao/auto-pairs'
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

call plug#end()

colorscheme tokyonight
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
