"Vim filetype plugin
" Language: Mathematica
" Maintainer: R. Menon <rsmenon@icloud.com>
" Last Change: Feb 26, 2013

if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let s:cpo_save = &cpo
set cpo&vim

if exists('&ofu')
	setlocal omnifunc=syntaxcomplete#Complete
endif

let &cpo = s:cpo_save
unlet s:cpo_save
