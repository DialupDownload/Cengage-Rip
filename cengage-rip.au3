; Define our variable for page Number to start at 
Local $page = 01

Do
$page=StringFormat("%03d",$page)
; Define the window name to look for 
WinActivate("Cengage eSampling - Google Chrome")
;Move our mouse over the page with specific coordinates
MouseMove (376,170,0)
; Right-Click on Save As 
MouseClick("right")
Sleep(700)
MouseMove (389,185,0)
Sleep(200)

MouseClick("left")
WinWait("Save As")
WinActive("Save As")
; Jump to filename box and use our Page Number as the file name, then save 
Send("!n")
Send ($page)
Send ("!s")
; Wait a bit, sleep random, then do it over again 
WinWait("Cengage eSampling - Google Chrome")
WinActivate("Cengage eSampling - Google Chrome")
MouseMove(1559,925,0)
MouseClick("left")
Sleep(15000)
Sleep(Random(3500, 10000, 1))



$page = $page + 1
; Run the loop up until the page number below 
Until $page = 23
msgbox ("done", "done")

