#!/bin/bash

echo -n 'const char *usage_text = ' > usage.h
fold -w 80 -s -b usage | sed 's/\(.*\)/"\1\\n"/g' >> usage.h
echo -n ';' >> usage.h
gcc dtefunc.c dtetool.c -g -Wall -o dtetool
