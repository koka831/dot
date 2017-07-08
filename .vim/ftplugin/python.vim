" Language:     Python
" Filenames:    *.py
let g:ale_python_flake8_options="--ignore=E501"

" additional syntax highlighting
highlight link pythonFunction GruvboxGreen

" class ClassName
syn keyword pythonClassStmt class nextgroup=pythonClass skipwhite
syn match   pythonClass "\h\w*" display contained

hi def link pythonClassStmt Statement
highlight link pythonClass GruvboxYellow


" library
syn keyword pythonLibName sys math enum Enum numpy np pandas pd
syn keyword pythonLibName matplotlib scipy requests beautifulsoup
syn keyword pythonLibName tensorflow tf
syn keyword pythonLibName heapq itertools
hi def link pythonLibName pythonClass
