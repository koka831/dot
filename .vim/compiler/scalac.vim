if exists("current_compiler")
  finish
endif
let current_compiler = "scalac"

if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal
endif

CompilerSet makeprg=scalac\ %
CompilerSet errorformat=%f:%l:\ error:\ %m,%-Z%p^,%-C%.%#,%-G%.%#

