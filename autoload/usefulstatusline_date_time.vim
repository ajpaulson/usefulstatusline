function! usefulstatusline_date_time#DateTime(format, time)
	" By default output this format
	let a:format = '%m/%d/%y %T'

	" By default output the file's last modification
	let a:time = getftime(expand('%'))

	" Convert user options into a string
	let s:output = strftime(a:format, a:time)

	" Output results
	return s:output
endfunc
