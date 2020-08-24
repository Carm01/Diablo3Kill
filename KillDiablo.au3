#RequireAdmin
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=blue-icon-13464-Windows.ico
#AutoIt3Wrapper_Outfile_x64=Kill_DIABLOIII.exe
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_UseUpx=y
#AutoIt3Wrapper_UseX64=y
#AutoIt3Wrapper_Res_Description=Kills the application Diablo III64.exe
#AutoIt3Wrapper_Res_Fileversion=1.5.0.0
#AutoIt3Wrapper_Res_ProductVersion=1.5.0.0
#AutoIt3Wrapper_Res_Language=1033
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

#include <TrayConstants.au3> ; Required for the $TRAY_CHECKED and $TRAY_ICONSTATE_SHOW constants.
Opt("TrayMenuMode", 3) ; The default tray menu items will not be shown and items are not checked when selected. These are options 1 and 2 for TrayMenuMode.
Opt("TrayOnEventMode", 1) ; Enable TrayOnEventMode.

TrayCreateItem("Exit")
TrayItemSetOnEvent(-1, "ExitScript")
TraySetState($TRAY_ICONSTATE_SHOW) ; Show the tray menu.
If UBound(ProcessList(@ScriptName)) > 2 Then Exit ; added to v .08 to make only one instance runnable
HotKeySet("^!b", "MyExit") ; ctrl+Alt+b kills program ( hotkey )


While 1
	Sleep(250)
WEnd

Func MyExit()
	ProcessClose('Diablo III64.exe')
	ProcessClose('Diablo III.exe')
EndFunc   ;==>MyExit


Func ExitScript()
	Exit (666)
EndFunc   ;==>ExitScript
