@ECHO off
SETLOCAL enabledelayedexpansion

FOR /R Source %%I in (*.o) DO @COPY "%%I" Objects
COPY Source\LibJXR\image\sys\image.o Objects\image1.o
COPY Source\LibOpenJPEG\image.o Objects\image2.o
DEL Objects\image.o

SET "files="
FOR /R %%F IN (Objects\*.o) DO (
   SET "res=%%~nF.o"
   SET "con=!files! !res!"
   SET "files=!con!"
)
@ECHO on

CD Objects
%EMSDK%\upstream\emscripten\emar.bat r ..\libfreeimage.a %files%