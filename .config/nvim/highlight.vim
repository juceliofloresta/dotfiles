if filereadable(expand("~/.vimrc_background"))
  set background=dark
  source ~/.vimrc_background
  let base16colorspace=256  " Access colors present in 256 colorspace

endif

function! s:base16_customize() abort
    " Colors: https://github.com/chriskempson/base16/blob/master/styling.md
    " Arguments: group, guifg, guibg, ctermfg, ctermbg, attr, guisp
    call Base16hi("MatchParen", g:base16_gui00, g:base16_gui0B, g:base16_cterm0B, g:base16_cterm00, "bold", g:base16_gui02)
    call Base16hi("Search", g:base16_gui00, g:base16_gui0D, g:base16_cterm09, g:base16_cterm09, "bold", g:base16_gui01)
    call Base16hi("IncSearch", g:base16_gui01, g:base16_gui0D, g:base16_cterm01, g:base16_cterm0E, "bold", g:base16_gui01)
    call Base16hi("Visual", "", g:base16_gui01, "", g:base16_cterm01, "bold", g:base16_gui02)
    call Base16hi("VisualNOS", "", g:base16_gui01, "", g:base16_cterm01, "bold", g:base16_gui02)

    call Base16hi("LineNr", g:base16_gui01, g:base16_gui00, "", g:base16_cterm00, "", g:base16_gui00)
    call Base16hi("CursorLine", "", g:base16_gui00, "", g:base16_cterm00, "bold", g:base16_gui00)
    call Base16hi("CursorLineNr", g:base16_gui07, g:base16_gui00, "", g:base16_cterm07, "bold", g:base16_gui00)
    call Base16hi("SignColumn", "", g:base16_gui00, "", g:base16_cterm07, "bold", g:base16_cterm00)

    call Base16hi("VertSplit", g:base16_gui00, g:base16_gui00, "", g:base16_cterm07, "", g:base16_gui00)
    call Base16hi("FoldColumn", "", g:base16_gui00, "", g:base16_cterm07, "bold", g:base16_gui00)
    call Base16hi("ScrollBar", "", g:base16_gui00, "", g:base16_cterm07, "", g:base16_gui00)
    call Base16hi("EndOfBuffer", g:base16_gui00, g:base16_gui00, g:base16_cterm00, g:base16_cterm00, "", g:base16_gui00)

    call Base16hi("QuickFixLine", g:base16_gui07, g:base16_gui00, g:base16_cterm07, g:base16_cterm00, "", g:base16_gui00)

    call Base16hi("StatusLine", g:base16_gui0B, g:base16_gui02, g:base16_cterm07, g:base16_cterm00, "bold", g:base16_gui02)
    call Base16hi("StatusLineNc", g:base16_gui03, g:base16_gui01, g:base16_cterm07, g:base16_cterm00, "", g:base16_gui00)

    call Base16hi("WildMenu", g:base16_gui09, g:base16_gui00, g:base16_cterm00, g:base16_cterm00, "", g:base16_gui00)

    call Base16hi("Pmenu", g:base16_gui03, g:base16_gui00, g:base16_cterm03, g:base16_cterm00, "", g:base16_gui00)
    call Base16hi("PmenuSel", g:base16_gui0B, g:base16_gui00, g:base16_cterm00, g:base16_cterm00, "bold", g:base16_gui00)
    call Base16hi("PmenuSbar", g:base16_gui00, g:base16_gui00, g:base16_cterm00, g:base16_cterm00, "", g:base16_gui00)
    call Base16hi("PmenuThumb", g:base16_gui02, g:base16_gui00, g:base16_cterm00, g:base16_cterm00, "", g:base16_gui00)

    call Base16hi("SpellLocal", g:base16_gui0A, g:base16_gui00, g:base16_cterm0A, g:base16_cterm00, "", g:base16_gui00)
    call Base16hi("SpellCap", g:base16_gui09, g:base16_gui00, g:base16_cterm09, g:base16_cterm00, "", g:base16_gui00)
    call Base16hi("SpellBad", g:base16_gui08, g:base16_gui00, g:base16_cterm08, g:base16_cterm00, "", g:base16_gui00)
    call Base16hi("SpellRare", g:base16_gui0C, g:base16_gui00, g:base16_cterm0C, g:base16_cterm00, "", g:base16_gui00)

    call Base16hi("ALEInfoSign", g:base16_gui07, g:base16_gui00, g:base16_cterm07, g:base16_cterm00, "", g:base16_gui00)
    call Base16hi("ALEWarningSign", g:base16_gui09, g:base16_gui00, g:base16_cterm09, g:base16_cterm00, "", g:base16_gui09)
    call Base16hi("ALEWarningSignLineNr", g:base16_gui09, g:base16_gui00, g:base16_cterm09, g:base16_cterm00, "", g:base16_gui09)
    call Base16hi("ALEStyleWarningSign", g:base16_gui0C, g:base16_gui00, g:base16_cterm09, g:base16_cterm00, "", g:base16_gui09)
    call Base16hi("ALEStyleWarningSignLineNr", g:base16_gui0C, g:base16_gui00, g:base16_cterm09, g:base16_cterm00, "", g:base16_gui09)
    call Base16hi("ALEErrorSign", g:base16_gui0D, g:base16_gui00, g:base16_cterm08, g:base16_cterm00, "", g:base16_gui08)
    call Base16hi("ALEErrorSignLineNr", g:base16_gui0D, g:base16_gui00, g:base16_cterm08, g:base16_cterm00, "", g:base16_gui08)
    call Base16hi("ALEStyleErrorSign", g:base16_gui0F, g:base16_gui00, g:base16_cterm0F, g:base16_cterm00, "", g:base16_gui08)
    call Base16hi("ALEStyleErrorSignLineNr", g:base16_gui0F, g:base16_gui00, g:base16_cterm0F, g:base16_cterm00, "", g:base16_gui08)

    call Base16hi("DiffAdd", g:base16_gui0C, g:base16_gui00, g:base16_cterm0C, g:base16_cterm00, "", g:base16_gui08)
    call Base16hi("DiffDelete", g:base16_gui08, g:base16_gui00, g:base16_cterm08, g:base16_cterm00, "", g:base16_gui08)
    call Base16hi("DiffChange", g:base16_gui09, g:base16_gui00, g:base16_cterm09, g:base16_cterm00, "", g:base16_gui08)
    call Base16hi("DiffText", g:base16_gui0A, g:base16_gui00, g:base16_cterm0A, g:base16_cterm00, "", g:base16_gui08)

    call Base16hi("GitGutterAdd", g:base16_gui0C, g:base16_gui00, g:base16_cterm0C, g:base16_cterm00, "", g:base16_gui08)
    call Base16hi("GitGutterAddLineNr", g:base16_gui0C, g:base16_gui00, g:base16_cterm0C, g:base16_cterm00, "", g:base16_gui08)
    call Base16hi("GitGutterChange", g:base16_gui09, g:base16_gui00, g:base16_cterm08, g:base16_cterm00, "", g:base16_gui08)
    call Base16hi("GitGutterChangeLineNr", g:base16_gui09, g:base16_gui00, g:base16_cterm08, g:base16_cterm00, "", g:base16_gui08)
    call Base16hi("GitGutterDelete", g:base16_gui08, g:base16_gui00, g:base16_cterm09, g:base16_cterm00, "", g:base16_gui08)
    call Base16hi("GitGutterDeleteLineNr", g:base16_gui08, g:base16_gui00, g:base16_cterm09, g:base16_cterm00, "", g:base16_gui08)
    call Base16hi("GitGutterChangeDelete", g:base16_gui08, g:base16_gui00, g:base16_cterm0A, g:base16_cterm00, "", g:base16_gui08)

    call Base16hi("TabLine", g:base16_gui04, g:base16_gui01, g:base16_cterm04, g:base16_cterm00, "", g:base16_gui00)
    call Base16hi("TabLineSel", g:base16_gui0B, g:base16_gui02, g:base16_cterm0A, g:base16_cterm00, "bold", g:base16_gui00)
    call Base16hi("TabLineFill", "", g:base16_gui01, "", g:base16_cterm01, "", g:base16_gui00)

    call Base16hi("ColorColumn", g:base16_gui0E, g:base16_gui00, g:base16_cterm0A, g:base16_cterm00, "", g:base16_gui08)

endfunction

augroup on_change_colorschema
    autocmd!
    autocmd ColorScheme * call s:base16_customize()
augroup END

autocmd VimEnter * call s:base16_customize()
