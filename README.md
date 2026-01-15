# FreeImage_emscripten

This project contains the source from https://github.com/danoli3/FreeImage extended with the build file Makefile.em. To build the library for uses inside a .wasm project the Emscripten SDK has to be set up correctly see the official documentation https://emscripten.org/docs/getting_started/downloads.html. After that open the cmd an switch the path to FreeImage_emscripten and execute the following commands.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cd C:\FreeImage_emscripten  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;compile.bat&nbsp;&nbsp;&nbsp;(this will break after compiling and before linking)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;link.bat&nbsp;&nbsp;&nbsp;(this will create the file libfreeimage.a)
