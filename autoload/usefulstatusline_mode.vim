function! usefulstatusline_colorize#CurrentModePure()
	return g:currentmode[mode()]
endfunction

function! usefulstatusline_colorize#CurrentMode()
	return '[' . g:currentmode[mode()] . ']'
endfunction
