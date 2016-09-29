"=============================================================================
" File:         plugin/lh-project.vim                             {{{1
" Author:       Luc Hermitte <EMAIL:luc {dot} hermitte {at} gmail {dot} com>
"		<URL:http://github.com/LucHermitte/lh-vim-lib>
" Version:      4.0.0.0.
let s:k_version = '4000'
" Created:      29th Sep 2016
" Last Update:  29th Sep 2016
"------------------------------------------------------------------------
" Description:
"       :Project related commands
"
"------------------------------------------------------------------------
" History:      «history»
" TODO:         «missing features»
" }}}1
"=============================================================================

" Avoid global reinclusion {{{1
if &cp || (exists("g:loaded_lh_project")
      \ && (g:loaded_lh_project >= s:k_version)
      \ && !exists('g:force_reload_lh_project'))
  finish
endif
let g:loaded_lh_project = s:k_version
let s:cpo_save=&cpo
set cpo&vim
" Avoid global reinclusion }}}1
"------------------------------------------------------------------------
" Commands and Mappings {{{1
command! -nargs=* -complete=customlist,lh#project#_complete_command
      \ Project
      \ call lh#project#_command(<f-args>)

" Commands and Mappings }}}1
"------------------------------------------------------------------------
let &cpo=s:cpo_save
"=============================================================================
" vim600: set fdm=marker:
