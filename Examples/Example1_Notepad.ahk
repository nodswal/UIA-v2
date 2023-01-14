﻿;#include <UIA> ; Uncomment if you have moved UIA.ahk to your main Lib folder
#include ..\Lib\UIA.ahk

/*
    Simple example to demonstrate some basic methods of the UIA class.
*/

Run "notepad.exe"
WinWaitActive "ahk_exe notepad.exe"
; Get the element for the Notepad window
npEl := UIA.ElementFromHandle("ahk_exe notepad.exe")
; Find the first Document or Edit control (in Notepad there is only one). 
documentEl := npEl.FindElement([{Type:"Document"}, {Type:"Edit"}]) 
; Highlight the found element
documentEl.Highlight() 
; Set the value for the document control. 
documentEl.Value := "Lorem ipsum" 

; This could also be chained together as: 
; UIA.ElementFromHandle("ahk_exe notepad.exe").FindFirst([{Type:"Document"}, {Type:"Edit"}]).Highlight().Value := "Lorem ipsum"
ExitApp