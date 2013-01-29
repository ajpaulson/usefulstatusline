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
		<td>Beta 1.3.3</td>
	</tr>
</table>

-----

A smart statusline that changes color depending on the current mode you're in. That's what Useful Statusline is.

Basically, if you're normal mode then it will display as usual, however if you're in insert mode it will change the statusline background color to red and the text to the usual. And if you're in any kind of visual mode it will change the background to green.

This allows you to quickly know what mode you're in without having to mess up to find out.

Also, as an extra, I added a function which will tell you the current buffer's file size, up to MBs. Although this is in the `/autoload` folder so that you don't suffer any kind of perfomance in case you don't use it.

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

# Uses & Features

In this section I'm gonna list some (or all) of the features that Useful Statusline provides, and how to achieve them.

Note, I'm explaining this so that I don't have to do it in every feature. If the feature has an output, then there's gonna be a normal version of the function and a "pure" version. The pure version will have "Pure" in the function name. The difference is that one puts out the output in a pure fashion, only the result of the value. And the non-pure version will output it in a nice way.

## Current file's size

Useful Statusline comes with a nice addition to your statusline. It doesn't have anything to do with it's color or mode, however since it is a plugin for your statusline, I thought I would add it in.

What extra am I gonna add? I'm gonna give you an extra couple of functions which output the current file's size. They support up to mega bytes, if you reach one giga byte it will only display the amount of MBs, won't show GBs.

I'm also gonna give it to you in two ways, one outputs the current file's size (e.g. `11.123kB`) just like that, and the other in between square brackets (e.g. `[11.123kB]`). Which one you use is up to you however.

The way it does it is like this:
```text
[100.120kB]
 ^   ^  ^
 |   |  |
 |   |  + File size format, possible formats are `B` for bytes, `kB` for
 |   |    kilobytes, and `MB` for megabytes.
 |   |
 |   + The remainder of the size, if the format is `kB` then it will output the
 |     bytes, if it's `MB` it outputs kilobytes.
 |
 + The file size, it can output `B` for bytes, `kB` for kilobytes and `MB` for
   megabytes.
```

You can use them putting the following into your statusline (one line for each version):
```viml
%{usefulstatusline_filesize#FileSize()}
%{usefulstatusline_filesize#FileSizePure()}
```

The first one outputs with the square brackets, the second one outputs without them, use them as you like, remember you can also manipulate the text they output. And also remember you can put them wherever you want, not just the statusline.

One more thing, if the file for whatever reason is empty it will output "empty" or within the square brackets.

## Current mode variable

In this plugin I made myself the favor of setting the `g:currentmode` variable, it's basically a nice version of the current mode. So for visual mode the variable will know it's `Visual`.

To reach the current value of the variable, or in other words, the current mode, you can do the following:
```viml
g:currentmode[mode()]
```

Basically what this does is output the value of the dictionary that equals what `mode()` outputs, or something.

If you want you can define this variable in your .vimrc file, however make sure to make it a dictionary and make sure that it contains every mode `:h mode()`.

### Current mode

Now what would a statusline colorizing depending on the mode plugin be without outputting the current mode?

Same rules as above, with or without square brackets it will output the current mode's name in a human readable mode. For example normal will output "Normal", visual block will output "V·Block" etc.

Same as above, here they are:
```viml
%{usefulstatusline_mode#CurrentMode()}
%{usefulstatusline_mode#CurrentModePure()}
```

Or if you *really* prefer the pure output, you can also call the `g:currentmode` variable, which contains all the mode names in a readable way. These functions just output this in a nice way.

### Statusline colors

And now, changing the statusline's color depending on the mode. It's really pretty simple, you just gotta add the following function to the event that you want to update the statusline:
```viml
usefulstatusline_colorize#Colorize()
```

This can be added to the beginning of your statusline, to an auto command, to whatever you want to detect the change in mode. The statusline will only be updated when this is called. I suggest adding the following to your statusline:
```viml
%{usefulstatusline_colorize#Colorize()}
```

# About

Useful Statusline was born from need, almost. I found out about the idea to colorize the statusline and I wanted it! However I had a hart time implementing it I finally did it inside my .vimrc file (or my statusline.vim file in my case). It will output the current mode, buffer's file size and change the color of the statusline.

After I finished working on that I noticed probably not a lot of people do this because it's hard to implement, or atleast not easy and it requires some experimentation. So I decided to put it into a nice plugin.

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
