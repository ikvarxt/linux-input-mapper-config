#IfWinNotActive,ahk_group WorkIn

$Esc::CapsLock
Return

;Caps lock to esc if pressed once, ctrl if held
*CapsLock::
cDown := A_TickCount
Return

*CapsLock up::
; Modify the threshold time (in milliseconds) as necessary
If ((A_TickCount-cDown) < 150)
	Send {Blind}{Esc}
cDown =
Return
#IF cDown
h::Left
j::Down
k::Up
l::Right
#If
