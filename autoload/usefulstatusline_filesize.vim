function! usefulstatusline_filesize#FileSizePure(byte)
	if (a:byte == 1)
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
	elseif (a:byte == 0)
		let bytes = line2byte(line('$')+1)-1
		if (bytes >= 1024)
			let kibytes = bytes / 1024
			let bytes_remainder = bytes % 1024
		endif
		if (exists('kibytes') && kibytes >= 1024)
			let mebytes = kibytes / 1024
			let kibytes_remainder = kibytes % 1024
		endif

		if (bytes <= 0)
			return 'empty'
		endif

		if (exists('mebytes'))
			return printf('%u.%03u', mebytes, kibytes_remainder) . 'MiB'
		elseif (exists('kibytes'))
			return printf('%u.%03u', kibytes, bytes_remainder) . 'KiB'
		else
			return bytes . 'B'
		endif
	endif
endfunction

function! usefulstatusline_filesize#FileSize(bytes)
	let s:output = '['.usefulstatusline_filesize#FileSizePure(a:bytes).']'
	return s:output
endfunction
