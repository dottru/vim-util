" Vim compiler file
" Compiler:     GHC
" Maintainer:	Joshua Michael <dottru@gmail.com>
" Last Change:	2013-08-31

let current_compiler = "ghc"

CompilerSet makeprg=ghc\ --make\ %

" Needed?
" CompilerSet errorformat=%f:%l:\ %m
