# Introduction

-----

<table>
	<tr>
		<td><strong>Name:</strong></td>
		<td>Useful Statusline</td>
	</tr>
	<tr>
		<td><strong>Author:</strong></td>
		<td><a href="http://eduantech.com/">Eduán Lávaque</a> &lt;<a href="mailto:eduan@snapsimpletech.com">eduan@snapsimpletech.com</a>></td>
	</tr>
	<tr>
		<td><strong>Source:</strong></td>
		<td>https://github.com/Greduan/vim-usefulstatusline</td>
	</tr>
	<tr>
		<td><strong>Version:</strong></td>
		<td>Beta 1.6.1</td>
	</tr>
</table>

-----

A cool little light-weight plugin that gives you access to lots of useful little functions for your statusline. That's what Useful Statusline is.

Basically, it gives you lots of stuff to use in your statusline. However if you're using [Powerline][6] this is pretty much useless, remember that.

For starters it gives you a function to output the current buffer's file size, it allows you to change the statusline color depending on the color. And it can output the current mode, not only change the statusline's color. :wink:

# Installation

If you don't have a preffered installation method, I recommend using [Pathogen][1] or [Vundle][2].

If you prefer Pathogen you can copy&paste the following into your Terminal:

```sh
cd ~/.vim/bundle
git clone git://github.com/Greduan/vim-usefulstatusline.git
```

If you prefer Vundle you can copy&paste the following into your `.vimrc` file:

```viml
Bundle 'Greduan/vim-usefulstatusline'
```

Once that is done, and you startup Vim, the help docs' tags will be generated and you can view the manual with `:h usefulstatusline` to view most of what you're seeing right now.

## Requirements

These are some things that Useful Statusline might require, or would be better if it had.

The file size functions *may* require Vim to be compiled with the following:<br />
[`+byte_offset`][3] [`+float`][4]

# About

Useful Statusline was born from need, almost. I found out about the idea to colorize the statusline and I wanted it! However I had a hart time implementing it I finally did it inside my .vimrc file (or my statusline.vim file in my case). It will output the current mode, buffer's file size and change the color of the statusline.

After I finished working on that I noticed probably not a lot of people do this because it's hard to implement, or atleast not easy and it requires some experimentation. So I decided to put it into a nice plugin.

For lots of more info on this great (if I may say so myself) plugin, simply run the command `:help usefulstatusline`, which will open this plugin's help, which will describe all it's functions, it's uses etc.

## License

```text
The MIT License (MIT)
Copyright © 2012-2013 Eduan Lavaque <eduan@snapsimpletech.com>

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

# Credits

In here I will list all the people I'm grateful towards, for one reason or another, whichever that may be.

- @ZyX-I: For giving me very useful tips on how to improve the file size functions. He helped me with this [StackOverflow question][5].

[1]: https://github.com/tpope/vim-pathogen
[2]: https://github.com/gmarik/vundle
[3]: http://vimdoc.sourceforge.net/htmldoc/various.html#+byte_offset
[4]: http://vimdoc.sourceforge.net/htmldoc/various.html#+float
[5]: http://stackoverflow.com/q/14549733/1622940
[6]: https://github.com/Lokaltog/vim-powerline
