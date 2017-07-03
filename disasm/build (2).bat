@echo off

asm68k /k /p /o ae- sonic1.asm, S1_Legends.bin >errors.txt, , sonic1.lst
fixheadr.exe S1_Legends.bin
pause