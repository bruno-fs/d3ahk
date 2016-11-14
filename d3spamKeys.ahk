#IfWinActive, Diablo

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

delay:=300
loop {                     ;loop 4ever
	IfWinNotActive, Diablo
		Continue

	if (toggle){        ;if toggle is true then..
		if (autoQ){
			send Q
			;sleep 10
			}		
		if (autoW){
			send W
			;sleep 10
		}
		if (autoE){
			send E
			;sleep 10
			}	
		if (autoR){
			send R
			;sleep 10
		}
		
		if (delay < 100){
			delay:=100
			}
		sleep, %delay%         ;sleep for 100 ms
		
	}
}

!1::toggle:=!toggle ;you assign the opposite state of toggle to toggle, which by default is false/empty.

^q::autoQ:=!autoQ
^w::autoW:=!autoW
^e::autoE:=!autoE
^r::autoR:=!autoR

!UP::delay+=100
!DOWN::delay-=100

b::
	toggle:=False
	Send b
	return

NumpadEnter::
Enter::
	toggle:=False
	;sleep, 100
	Send {Enter}
	return
		
