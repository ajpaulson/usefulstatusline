function! usefulstatusline_date_time#DateTimePure(format, time)
	if (a:format == 1)
		" Output date
		let s:format = '%m/%d/%y'
	elseif (a:format == 2)
		" Output time
		let s:format = '%T'
	elseif (a:format == 3)
		" Output date and time
		let s:format = '%m/%d/%y %T'
	endif

	if (a:time == 1)
		" Output last modified date and time of current buffer
		let s:time = getftime(expand("%"))
	elseif (a:time == 2)
		" Output current time
		let s:time = localtime()
	endif

	" Convert user options into a string
	let s:output = strftime(s:format, s:time)

	" Output results
	return s:output
endfunc

function! usefulstatusline_date_time#DateTime(format, time)
	" Output the same as the pure function, however it now puts it in between
	" brackets
	let s:output = '['.usefulstatusline_date_time#DateTimePure(a:format, a:time).']'
	return s:output
endfunc
