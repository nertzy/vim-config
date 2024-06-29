let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-abolish'
Plug 'pangloss/vim-javascript'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'kana/vim-textobj-user'
Plug 'tpope/vim-unimpaired'
Plug 'vim-ruby/vim-ruby'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'mgamba/j-split'
Plug 'jgdavey/vim-blockle'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-rake'
Plug 'ddrscott/vim-side-search'
Plug 'mbbill/undotree'
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-bundler'
Plug 'dense-analysis/ale'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'vim-scripts/regreplop.vim'
Plug 'tomasr/molokai'
Plug 'tpope/vim-dispatch'
Plug 'janko/vim-test'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'elzr/vim-json'
Plug 'sjl/vitality.vim'
Plug 'mvolkmann/vim-js-arrow-function'
Plug 'chrisbra/csv.vim'
Plug 'derekwyatt/vim-scala'
Plug 'tpope/vim-rbenv'
Plug 'Raimondi/delimitMate'
Plug 'tinted-theming/base16-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'georgewitteman/vim-fish'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'fladson/vim-kitty'
Plug 'github/copilot.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'
call plug#end()

source ~/.vim/config/init.vim
source ~/.vim/config/settings.vim
source ~/.vim/config/filetypes.vim
source ~/.vim/config/mappings.vim
source ~/.vim/config/plugins.vim

runtime config/init/**.vim

