#! /bin/bash

cd task1
cd programs
ls
echo enter the name of the file without the extension
read filename
chmod +x $filename.c
gcc $filename.c -o filename
./$filename.c
