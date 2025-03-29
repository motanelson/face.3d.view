
dim t as integer=1
dim a as string=""
dim aa as string=""
dim ccc1 as integer
dim ccc as integer
color 0,6
cls 
sub lprints(f as integer,s as string)
    print #2 ,s
end sub 
print "creat..."
input "file to print .txt text or image ? ",a
t=1
ccc=1
aa=""
open Lpt "LPT1:EMU=TTY" for output as #2
if instr(a,".txt")>0 then
    open a for input as #1
    while t
        aa=space(128)
        line input #1,aa
        print aa
        lprints 2,aa
        if eof(1) then t=0
    wend
    lprints 2,chr(12)
    close #1
else
    shell "pbrush /p "+ a
end if
close #2
