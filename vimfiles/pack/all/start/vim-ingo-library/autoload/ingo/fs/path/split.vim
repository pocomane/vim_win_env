" ingo/fs/path/split.vim: Functions for splitting a file system path.
"
" DEPENDENCIES:
"   - ingo/fs/path.vim autoload script
"   - ingo/str.vim autoload script
"
" Copyright: (C) 2014-2017 Ingo Karkat
"   The VIM LICENSE applies to this script; see ':help copyright'.
"
" Maintainer:	Ingo Karkat <ingo@karkat.de>
"
" REVISION	DATE		REMARKS
"   1.030.004	22-May-2017	Add ingo#fs#path#split#PathAndName().
"   1.030.003	26-Jan-2017	Add ingo#str#EndsWith() variant of
"				ingo#fs#path#split#Contains().
"   1.025.002	30-Apr-2015	Add ingo#fs#path#split#Contains().
"   1.019.001	22-May-2014	file creation

function! ingo#fs#path#split#PathAndName( filespec, ... )
"******************************************************************************
"* PURPOSE:
"   Split a:filespec into the (absolute, relative, or ".') path and the file
"   name itself.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   None.
"* INPUTS:
"   a:filespec                      Absolute / relative filespec.
"   a:isPathWithTrailingSeparator   Optional flag whether the returned file path
"				    ends with a trailing path separator. Default
"				    true.
"* RETURN VALUES:
"   [filepath, filename]
"******************************************************************************
    let l:isPathWithTrailingSeparator = (a:0 ? a:1 : 1)
    let [l:dirspec, l:filename] = [fnamemodify(a:filespec, ':h'), fnamemodify(a:filespec, ':t')]

    if l:isPathWithTrailingSeparator
	let l:dirspec = ingo#fs#path#Combine(l:dirspec, '')
    endif

    return [l:dirspec, l:filename]
endfunction

function! ingo#fs#path#split#AtBasePath( filespec, basePath )
"******************************************************************************
"* PURPOSE:
"   Split off a:basePath from a:filespec. The check will be done on normalized
"   paths.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   None.
"* INPUTS:
"   a:filespec  Filespec.
"   a:basePath  Filespec to the base directory that contains a:filespec.
"* RETURN VALUES:
"   Remainder of a:filespec, after removing a:basePath, or empty List if
"   a:filespec did not start with a:basePath.
"******************************************************************************
    let l:filespec = ingo#fs#path#Combine(ingo#fs#path#Normalize(a:filespec, '/'), '')
    let l:basePath = ingo#fs#path#Combine(ingo#fs#path#Normalize(a:basePath, '/'), '')
    if ingo#str#StartsWith(l:filespec, l:basePath, ingo#fs#path#IsCaseInsensitive(l:filespec))
	return strpart(a:filespec, len(l:basePath))
    endif
    return []
endfunction

function! ingo#fs#path#split#Contains( filespec, fragment )
"******************************************************************************
"* PURPOSE:
"   Test whether a:filespec contains a:fragment anywhere. To match entire
"   (anchored) path fragments, pass a fragment surrounded by forward slashes
"   (e.g. "/foo/"); you can always use forward slashes, as these will be
"   internally normalized.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   None.
"* INPUTS:
"   a:filespec  Filespec to be examined.
"   a:fragment  Path fragment that may be contained inside a:filespec.
"* RETURN VALUES:
"   1 if contained, 0 if not.
"******************************************************************************
    let l:filespec = ingo#fs#path#Combine(ingo#fs#path#Normalize(a:filespec, '/'), '')
    let l:fragment = ingo#fs#path#Normalize(a:fragment, '/')
    return ingo#str#Contains(l:filespec, l:fragment, ingo#fs#path#IsCaseInsensitive(l:filespec))
endfunction
function! ingo#fs#path#split#EndsWith( filespec, fragment )
"******************************************************************************
"* PURPOSE:
"   Test whether a:filespec ends with a:fragment. To match entire (anchored)
"   path fragments, pass a fragment surrounded by forward slashes (e.g.
"   "/foo/"); you can always use forward slashes, as these will be internally
"   normalized.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   None.
"* INPUTS:
"   a:filespec  Filespec to be examined.
"   a:fragment  Path fragment that may be contained inside a:filespec.
"* RETURN VALUES:
"   1 if it ends with it, 0 if not.
"******************************************************************************
    let l:filespec = ingo#fs#path#Normalize(a:filespec, '/')
    let l:fragment = ingo#fs#path#Normalize(a:fragment, '/')
    return ingo#str#EndsWith(l:filespec, l:fragment, ingo#fs#path#IsCaseInsensitive(l:filespec))
endfunction

function! ingo#fs#path#split#ChangeBasePath( filespec, basePath, newBasePath )
"******************************************************************************
"* PURPOSE:
"   Replace a:basePath in a:filespec with a:newBasePath. This will be done on
"   normalized paths.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   None.
"* INPUTS:
"   a:filespec  Filespec.
"   a:basePath  Filespec to the base directory that contains a:filespec.
"   a:newBasePath Filespec to the new base directory.
"* RETURN VALUES:
"   Changed a:filespec, or empty List if a:filespec did not start with
"   a:basePath.
"******************************************************************************
    let l:remainder = ingo#fs#path#split#AtBasePath(a:filespec, a:basePath)
    if type(l:remainder) == type([])
	return []
    endif
    return ingo#fs#path#Combine(ingo#fs#path#Normalize(a:newBasePath, '/'), l:remainder)
endfunction

" vim: set ts=8 sts=4 sw=4 noexpandtab ff=unix fdm=syntax :
