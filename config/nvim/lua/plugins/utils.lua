require'nvim-web-devicons'.get_icons() -- para os icones da barra
require('feline').setup() -- para os icones da barra
require'colorizer'.setup() -- para mostrar as cores dos relativos códigos hexadecimais
require('nvim-autopairs').setup({
  enable_check_bracket_line = false
}) -- para os autopairs


-- para as linhas de identação coloridas
vim.opt.listchars:append("space:⋅")
--vim.opt.listchars:append("eol:↴")

vim.cmd [[highlight IndentBlanklineIndent1 guifg=#C678DD gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#E06C75 gui=nocombine]]

vim.cmd([[
  hi! MatchParen cterm=NONE,bold gui=NONE,bold guibg=NONE guifg=#FFFFFF
  let g:indentLine_fileTypeExclude = ['dashboard']
]])


require("indent_blankline").setup {
    show_end_of_line = true,
    space_char_blankline = " ",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
}
-- final da config para as linhas de identação

