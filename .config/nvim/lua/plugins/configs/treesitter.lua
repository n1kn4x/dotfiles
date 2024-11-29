local options = {
  ensure_installed = { "lua", "vim", "vimdoc" },

  highlight = {
    enable = true,
    use_languagetree = true,
    additional_vim_regex_highlighting = {"latex"},
  },

  indent = { enable = true },
}

return options
