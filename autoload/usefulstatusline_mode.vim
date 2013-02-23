if (exists('loaded_usefulstatusline_mode')) || !has('statusline')
	finish
endif
let g:loaded_usefulstatusline_mode=1

function! usefulstatusline_mode#CurrentModePure()
	return g:currentmode[mode()]
endfunction

function! usefulstatusline_mode#CurrentMode()
	return '[' . g:currentmode[mode()] . ']'
endfunction
