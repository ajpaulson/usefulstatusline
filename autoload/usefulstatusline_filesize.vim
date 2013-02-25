function! usefulstatusline_filesize#FileSizePure(byte)
	" Check if we're gonna use the bit or the bytes approach (I call it that,
	" don't know if it's called that)
	" In this case, if the user wants to use the bytes approach:
	if (a:byte == 1)
		" Figure out how many bytes the buffer has
		let bytes = line2byte(line('$')+1)-1
		" If the bytes reach kilobytes
		if (bytes >= 1000)
			let kbytes = bytes / 1000
			let bytes_remainder = bytes % 1000
		endif
		" If kilobytes exist in the file, and the file reaches the size of
		" megabytes
		if (exists('kbytes') && kbytes >= 1000)
			let mbytes = kbytes / 1000
			let kbytes_remainder = kbytes % 1000
		endif

		" If the buffer is empty, output so
		if (bytes <= 0)
			return 'empty'
		endif

		" Check if the file is megabytes
		if (exists('mbytes'))
			" Output the file size in megabytes
			return printf('%u.%03u', mbytes, kbytes_remainder) . 'MB'
		" If megabytes don't exist, but kilobytes do
		elseif (exists('kbytes'))
			" Output the file size in kilobytes
			return printf('%u.%03u', kbytes, bytes_remainder) . 'kB'
		" If not even kylobytes exist
		else
			" Output the file size in bytes
			return bytes . 'B'
		endif

	" Go for the bits approach
	" I'm too lazy for more comments, so you can figure out the rest yourself
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

function! usefulstatusline_filesize#FileSize(byte)
	" Output the same as the pure version, but in between brackets
	let s:output = '['.usefulstatusline_filesize#FileSizePure(a:byte).']'
	return s:output
endfunction
