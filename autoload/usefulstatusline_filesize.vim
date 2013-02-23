function! usefulstatusline_filesize#FileSizePure()
	let bytes = line2byte(line('$')+1)-1
	if (bytes >= 1000)
		let kbytes = bytes / 1000
		let bytes_remainder = bytes % 1000
	endif
	if (exists('kbytes') && kbytes >= 1000)
		let mbytes = kbytes / 1000
		let kbytes_remainder = kbytes % 1000
	endif

	if (bytes <= 0)
		return 'empty'
	endif

	if (exists('mbytes'))
		return printf('%u.%03u', mbytes, kbytes_remainder) . 'MB'
	elseif (exists('kbytes'))
		return printf('%u.%03u', kbytes, bytes_remainder) . 'kB'
	else
		return bytes . 'B'
	endif
endfunction

function! usefulstatusline_filesize#FileSize()
	let bytes = line2byte(line('$')+1)-1
	if (bytes >= 1000)
		let kbytes = bytes / 1000
		let bytes_remainder = bytes % 1000
	endif
	if (exists('kbytes') && kbytes >= 1000)
		let mbytes = kbytes / 1000
		let kbytes_remainder = kbytes % 1000
	endif

	if (bytes <= 0)
		return '[empty]'
	endif

	if (exists('mbytes'))
		return '[' . printf('%u.%03u', mbytes, kbytes_remainder) . 'MB]'
	elseif (exists('kbytes'))
		return '[' . printf('%u.%03u', kbytes, bytes_remainder) . 'kB]'
	else
		return '[' . bytes . 'B]'
	endif
endfunction
