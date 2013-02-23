function! usefulstatusline_mode#CurrentModePure()
	return g:currentmode[mode()]
endfunction

function! usefulstatusline_mode#CurrentMode()
	return '[' . g:currentmode[mode()] . ']'
endfunction
