if (!exists('g:currentmode'))
	let g:currentmode={
		\ 'n'  : 'Normal',
		\ 'no' : 'N·Operator Pending',
		\ 'v'  : 'Visual',
		\ 'V'  : 'V·Line',
		\ '' : 'V·Block',
		\ 's'  : 'Select',
		\ 'S'  : 'S·Line',
		\ '' : 'S·Block',
		\ 'i'  : 'Insert',
		\ 'R'  : 'Replace',
		\ 'Rv' : 'V·Replace',
		\ 'c'  : 'Command',
		\ 'cv' : 'Vim Ex',
		\ 'ce' : 'Ex',
		\ 'r'  : 'Prompt',
		\ 'rm' : 'More',
		\ 'r?' : 'Confirm',
		\ '!'  : 'Shell',
		\}
endif

function! usefulstatusline_colorize#CurrentModePure()
	return g:currentmode[mode()]
endfunction

function! usefulstatusline_colorize#CurrentMode()
	return '[' . g:currentmode[mode()] . ']'
endfunction
