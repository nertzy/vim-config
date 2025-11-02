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
Plug 'tpope/vim-fugitive'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'kana/vim-textobj-user'
Plug 'tpope/vim-unimpaired'
Plug 'vim-ruby/vim-ruby'
Plug 'mgamba/j-split'
Plug 'jgdavey/vim-blockle'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-rake'
Plug 'mbbill/undotree'
Plug 'kyoh86/vim-ripgrep'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-bundler'
Plug 'dense-analysis/ale'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'vim-scripts/regreplop.vim'
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
Plug 'tinted-theming/tinted-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'georgewitteman/vim-fish'
Plug 'fladson/vim-kitty'
Plug 'github/copilot.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'avm99963/vim-jjdescription'
Plug 'fladson/vim-kitty', { 'tag': '*' }
Plug 'kepano/flexoki-neovim'
Plug 'nanotee/zoxide.vim'

if has('nvim')

  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'https://github.com/apple/pkl-neovim.git'

  " The below is required for enabling the tree-sitter syntax engine, which is used by pkl-neovim.
  lua <<LUA
    local hasConfigs, configs = pcall(require, "nvim-treesitter.configs")
    if hasConfigs then
      configs.setup {
        ensure_installed = "pkl",
        highlight = {
          enable = true,              -- false will disable the whole extension
        },
        indent = {
          enable = true
        }
      }
    end
LUA

  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'olimorris/codecompanion.nvim'
  
  " Codecompanion companion plugins
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'folke/which-key.nvim'
  Plug 'folke/trouble.nvim'
  Plug 'nvim-tree/nvim-web-devicons'

end

call plug#end()

if has('nvim')
" Setup code companion
  lua <<LUA
    require("codecompanion").setup()
LUA
end

source ~/.vim/config/init.vim
source ~/.vim/config/settings.vim
source ~/.vim/config/filetypes.vim
source ~/.vim/config/mappings.vim
source ~/.vim/config/plugins.vim

runtime config/init/**.vim

