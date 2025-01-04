let g:default_theme = "base16-tomorrow-night-eighties"

function! GetTintyTheme()
  let l:theme_name = system("tinty current &> /dev/null && tinty current")

  if v:shell_error != 0
    return g:default_theme
  else
    return trim(l:theme_name)
  endif
endfunction

function! HandleFocusGained()
  let l:new_theme_name = GetTintyTheme()
  let l:current_theme_name = g:colors_name

  if l:current_theme_name != l:new_theme_name
    execute "colorscheme " . l:new_theme_name
  endif
endfunction

function! Main()
  set termguicolors
  let g:tinted_colorspace = 256
  let l:current_theme_name = GetTintyTheme()

  execute "colorscheme " . l:current_theme_name

  augroup TintyThemeChange
    autocmd!
    autocmd FocusGained * call HandleFocusGained()
  augroup END
endfunction

call Main()
