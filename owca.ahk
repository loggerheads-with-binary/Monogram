#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_WorkingDir%  ; Ensures a consistent starting directory.


;Solution Pulled from
;https://stackoverflow.com/questions/69259941/expand-command-line-arguments-autohotkey/69261239#69261239

arg_list := ""
for each, arg in A_Args
    arg_list .= """" arg """ "

arg_list := RTrim(arg_list) ;trim trailing space (might be unnecessary)

; Call the program as admin

Run *RunAs cmd.exe /k "%arg_list%" 
