" Vim compiler file
" Compiler:	XMLStarlet ( http://xmlstar.sourceforge.net )
" Maintainer:	Mihai Rotaru <mihai.rotaru@gmx.com>
" URL:
" Last Change:	2011 Dec 26

if exists("current_compiler")
  finish
endif
let current_compiler = "xmlstar-val"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo-=C

CompilerSet makeprg=xml\ val\ -w\ -e\ \"%\"

CompilerSet errorformat=%f:%l.%c:\ %m
CompilerSet errorformat+=%-G%.%#

let &cpo = s:cpo_save
unlet s:cpo_save
