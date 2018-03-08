; Indentation_style: https://de.wikipedia.org/wiki/EinrÃ¼ckungsstil#SL5small-Stil
if(0){
   XPos:=5
   YPos:=6
   found := {left:XPos , top:YPos }
   ; found := {left:%XPos% , top:%YPos% } ; works not
   ; found := {left:111 , top:A_ScreenHeight }
   ; found := {left:111 , top:%A_ScreenHeight% }
   ; msgbox,% foundPos["left"] . "= foundPos[''left''] `n XPos=" . XPos . "`n foundPos=" . foundPos
   msgbox , % found["left"] . "= found[''left''] `n " .  found["top"] . "= found[''top''] `n " 
   ;Sleep,2000 
   Reload
}


;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
;  https://autohotkey.com/boards/viewtopic.php?t=4544
;  11 Sep 2014, 20:19
; In all my work with AHK, one of the most mind-blowingly awesome, and at the same time intensely frustrating, functions I've ever used is ImageSearch.
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
;~ please use this ! as first line in every script before all includes! :)
isDevellopperMode:= true ; enthällt auch update script.
bugIt := true ; 
;~ bugIt := false ;  
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#Include *i %A_ScriptDir%\inc_ahk\init_global.init.inc.ahk
;~ #NoTrayIcon
#SingleInstance,force



popupClosedLogFile := popupTimeLog()




SetTitleMatchMode,2



; p := getMousePos()   
setCoordModeAll()
mm := getMultiMonitor()
mm := {left:0, top:0, width:A_ScreenWidth, height:A_ScreenHeight}
; 0, 0, A_ScreenWidth, A_ScreenHeight
MultiMonitorXY := mm
;mm := setSearchAreaToChromeWindowArea( domianarchiv )
  
if(1){
   MsgBox, teste doGrenshotShotByMouseClick
doGrenshotShotByMouseClick(mm)
Sleep,999999999
ExitApp
}

if(0){
   ; fester wird von move2Img gefunden obwohl es nicht sichtbar ist. Oops 01.11.2017 11:35
mayBehindWin711010927png := getTestWinBehindAvi()
foundPos := move2Img( mayBehindWin711010927png , "mayBehindWin711010927png" , mm, variation := 85)
if(foundPos){
   ;// thats okay :) we dont need to do anything
   MsgBox, :) found
   feedbackMsgBoxCloseAllWindows()
   ExitApp
}
ExitApp
}


move2AviraPNG = window_event_listener_imageSearchVersionImg\move2AviraPNG_2017-08-26.png 

; two avira icons at the right side :)

; notifyAviraPNG = D:\fre\private\pix_bilder_foto\ScreenShot\2017-08-26 14_24_57-.png

; notifyAviraPNG = E:\fre\private\grafik\screenshot\2017-10-17 10_14_06-.png



SetTitleMatchMode,2 
DetectHiddenWindows,On ; needs for finding Avira
DetectHiddenText,On ; helps not for finding imp gui
IfWinNotExist,Avira ; someday we search for other pixs to we better delete this line 26.08.2017 17:09
{
   lll(A_LineNumber, A_ScriptName,"ExitApp")
   ExitApp
}


countLoopWithNoMP3clicked := 0
;<<<<<<<< Loop <<<< 171017102441 <<<< 17.10.2017 10:24:41 <<<<
Loop,999
{
   Sleep,1000
   if(false){
      impguiTestPrototyp()
   }

   waitSec := 48 * 60 * 60
   if(isGoodTimeToWaitForPopup(waitSec))
      continue


   IfWinExist,Avira ; todo .. it helps if we could find something mor specific
   {
      Sleep,1000
      if(A_TimeIdlePhysical < 2000)
         continue
      
      p := getMousePos()
      foundPos := move2Avira(move2AviraPNG)  ; move2AviraPNG notifyAviraPNG
      
      if(foundPos ){
      ;if(!ret1)  { ; move2AviraPNG notifyAviraPNG
         ;ToolTip4sec(A_LineNumber . " " . A_ScriptName . " " . Last_A_This)
         FileAppend,1,% popupClosedLogFile ; A_WDay Current 1-digit day of the week (1-7). 1 is Sunday in all locales.
         msg=saved ???? :) `n (%A_ScriptName%~%A_LineNumber%) 
         feedbackMsgBox(msg,msg,1,1)
         Sleep,15000 ; seems that there was no popup / notifier window. so deont search so early next time 26.08.2017 15:24
         continue
      } 
      else{
       ;  mouseMove( p )      
         ; Die nervige Popup-Werbung von Avira ... ob Sie die Benachrichtigung alle 24 Stunden oder alle 48 Stunden 
      
      }
      ;ToolTip2sec(A_LineNumber . " " . A_ScriptName . " " . Last_A_This)

   }

}
;>>>>>>>> Loop >>>> 171017102511 >>>> 17.10.2017 10:25:11 >>>>
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>><>>>>>>>>>
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
   ;~ MouseMove, 600,0,0,R

setSearchAreaToChromeWindowArea(eBayChromeTitle){
   SetTitleMatchMode,2
   WinGetPos, wL, wT, wW, wH, % eBayChromeTitle
   mm := {left:wL, top:wT, width:wW, height:wH}
   
   ;~ mm["left"] := wL
   ;~ mm["top"] := wT
   ;~ mm["width"] := wW
   ;~ mm["height"] := wH
   return mm
}
setCoordModeAll(coord = "Screen"){
   if(false)
   {
      coord = 
      coord = Client
      coord = Pixel
      coord = Screen
   }
   CoordMode, ToolTip, %coord%
   CoordMode, Pixel, %coord%
   CoordMode, Mouse, %coord%
   CoordMode, Caret, %coord%
   CoordMode, Menu, %coord%
   return coord
}

;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


;<<<<<<<< move2Avira <<<< 170826151627 <<<< 26.08.2017 15:16:27 <<<<
;<<<<<<<< move2Avira <<<< 170826151627 <<<< 26.08.2017 15:16:27 <<<<
;<<<<<<<< move2Avira <<<< 170826151627 <<<< 26.08.2017 15:16:27 <<<<
;<<<<<<<< move2Avira <<<< 170826151627 <<<< 26.08.2017 15:16:27 <<<<
;<<<<<<<< move2Avira <<<< 170826151627 <<<< 26.08.2017 15:16:27 <<<<
move2Avira(move2AviraPNG){
   i := move2AviraPNG
   
   if(!FileExist(move2AviraPNG)){
      Msgbox,Oops `n (%A_ScriptName%~%A_LineNumber%) 
   }
   
DetectHiddenWindows,On ; needs for finding Avira
SetTitleMatchMode,1
SetTitleMatchMode,Slow
Suspend,On
Loop,9
{
; in some caseses it helps me very very mucht, gives better results if i started grennshot app before
;ControlSend,,{PrintScreen},Greenshot
   ; send,{PrintScreen} ; becouse it triggered. so make a sofisticated config llike below: 29.08.2017 16:11
   mm := {left:0, top:0, width:A_ScreenWidth, height:A_ScreenHeight}
   if(1){
      foundPos := doGrenshotShotByMouseClick(mm) 
      if(!foundPos){
         
      }
   }else
      Send,{CtrlDown}{ShiftDown}{AltDown}q
   
   ; send,{Blind}qqqqqqqqqqqqqqqqqq
IfWinExist,Greenshot capture form
   break
Sleep,40
Sleep,% A_Index * 200
}
IfWinNotExist,Greenshot capture
   return, false

Suspend,Off
; move2Img(winStartButtonPNG , "winStartButtonPNG" , mm, variation := 85)

; setCoordModeAll()
CoordMode Pixel  ; Interprets the coordinates below as relative to the screen rather than the active window.
;MouseMove,1581,614,20
;Sleep,2000
variation := 150 ; works for aviraNotifierPNG 26.08.2017 14:17
variation := 170 ; works for aviraNotifierRedBigUpdateButtonPNG 26.08.2017 14:11
variation := 70 ; works if u using greensut trick :) 26.08.2017 14:51
variation := 10 ; works if u using greensut trick :) 26.08.2017 14:51
variation := 1 ; works if u using greensut trick :) 26.08.2017 14:51
variation := 3 ; 29.08.2017 15:54 not works again with 1. probs they changing icons always. but it woks with 2 :) 29.08.2017 15:55 the new trick is hidding as soon greenshot is staring a screenshot. from where they konw ? that i send screenshots? 29.08.2017 15:57
; variation := 5 ; 
; variation := 100 ; winStartButtonPNG

;Sleep,3000

Sleep,500
foundPos := move2Img(i , "i" , mm, variation)
Suspend,On
Loop,10
{
   IfWinNotExist,Greenshot capture
      break
   ; this works for closing greenshot 26.08.2017 14:49
   Send,{esc} ; end greenshot
   WinClose,Greenshot capture
   IfWinExist,Greenshot capture
      WinKill,Greenshot capture

   Sleep,100
}
IfWinExist,greenshot capture
{
   WinClose,greenshot capture
   WinKill,greenshot capture
   Send,{esc} ; end greenshot
}
Suspend,Off
; Msgbox,foundPos=%foundPos% `n success ?? `n (%A_ScriptName%~%A_LineNumber%) 


;Send,{esc} ; end greenshot
;Send,{esc} ; end greenshot

tip := foundPos["left"] . ", " . foundPos["top"]
Random,r1,1,9
Random,r2,1,9
if(foundPos["left"]){
   Random,r1,10,90
   Random,r2,10,90
   Random,r3,10,90
   Random,xOffset,1,6
   Random,yOffset,2,7
   MouseMove,Left,53-9+xOffset, 12+yOffset ,1,1,D,R
   Sleep,% r1
   MouseMove,Left,,,1,1,U,R
   ; MouseMove,% foundPos["left"] + 40 + r1 ,% foundPos["top"] + 8 + r2 ,4 
   ;MouseClick,left,% foundPos["left"] + 40 + r1 ,% foundPos["top"] + 8 + r2, 1 ,4
   ; Msgbox,:) found `n %tip% `n (%A_ScriptName%~%A_LineNumber%) 
}
;MsgBox, %XPos% = x
return foundPos
}
;>>>>>>>> move2Avira >>>> 170826151636 >>>> 26.08.2017 15:16:36 >>>>
;>>>>>>>> move2Avira >>>> 170826151636 >>>> 26.08.2017 15:16:36 >>>>
;>>>>>>>> move2Avira >>>> 170826151636 >>>> 26.08.2017 15:16:36 >>>>
;>>>>>>>> move2Avira >>>> 170826151636 >>>> 26.08.2017 15:16:36 >>>>
;>>>>>>>> move2Avira >>>> 170826151636 >>>> 26.08.2017 15:16:36 >>>>

;<<<<<<<< impguiTestPrototyp <<<< 171027120308 <<<< 27.10.2017 12:03:08 <<<<
impguiTestPrototyp(){
   IfWinActive,impgui.exe
   {
      ; todo .. it helps if we could find something mor specific
         MSgbox,yeaaaah :) thats first time we foudn you`n IfWinActive impgui.exe `n `n please open ahk an work :) `n (%A_ScriptName%~%A_LineNumber%) 26.08.2017 17:58
      }
   IfWinExist,impgui.exe
   {
      ; todo .. it helps if we could find something mor specific
      MSgbox,yeaaaah :) thats first time we foudn you`n  impgui.exe `n `n please open ahk an work :) `n (%A_ScriptName%~%A_LineNumber%) 26.08.2017 17:58
   }
}
;>>>>>>>> impguiTestPrototyp >>>> 171027120313 >>>> 27.10.2017 12:03:13 >>>>

;<<<<<<<< isGoodTimeToWaitForPopup <<<< 171027120808 <<<< 27.10.2017 12:08:08 <<<<
isGoodTimeToWaitForPopup(waitSec){
   f := A_ScriptName . "_popupTimeLog" . ".txt" 
   FileGetTime, sourceModifiedTime, %f%  ; Retrieves the modification time by default.; 660+ lines in functions_global.inc.ahk
   FormatTime, yyyyMMddHHmmss, %A_now%,yyyyMMddHHmmss
   durations := yyyyMMddHHmmss - sourceModifiedTime
   durationh := durations / (60*60)
   durationh := Floor(durationh )
   ;Clipboard := f
   if(durationh<48 && sourceModifiedTime){
      ToolTip5sec("durationh<48 = " durationh . "`n " . "f = " f . "`n " . A_LineNumber . " " . A_ScriptName . " " . Last_A_This) 
      sleepis := (waitSec - durations ) - 5
      Sleep, % sleepis  * 1000
      return true
   } 
   return false
   ; for etwa zwei tagen (oder länger) wurde popup hierüber geschlossen.
   ; kann jederzeit passieren
}
;>>>>>>>> isGoodTimeToWaitForPopup >>>> 171027120813 >>>> 27.10.2017 12:08:13 >>>>

   
;<<<<<<<< doGrenshotShotByMouseClick <<<< 171027125026 <<<< 27.10.2017 12:50:26 <<<<
doGrenshotShotByMouseClick(mm){
   grenshotTaskbarIconPNG = window_event_listener_imageSearchVersionImg\grenshotTaskbarIcon.png
   variation := 150 ; works for aviraNotifierPNG 26.08.2017 14:17
   variation := 170 ; works for aviraNotifierRedBigUpdateButtonPNG 26.08.2017 14:11
   variation := 70 ; works if u using greensut trick :) 26.08.2017 14:51
   variation := 10 ; works if u using greensut trick :) 26.08.2017 14:51
   variation := 1 ; works if u using greensut trick :) 26.08.2017 14:51
   variation := 3 ; 
   ; mm := {left:0, top:0, width:A_ScreenWidth, height:A_ScreenHeight}
   foundPos := move2Img(grenshotTaskbarIconPNG , "grenshotTaskbarIconPNG" , mm, variation)
   if(!foundPos)
      return foundPos
   MouseClick,Right,10,10,1,1,D,R ; has worked many days but not today 04.11.2017 10:39
   
   MsgBox,`n (from: %A_ScriptName%~%A_LineNumber%) 
   msg= Right `n (from: %A_ScriptName%~%A_LineNumber%) 
   feedbackMsgBox(A_ScriptName,msg)

   
   Sleep,122
   if(A_TimeIdlePhysical < 200)
      return foundPos
   MouseClick,Right,,,1,1,U,R
   if(A_TimeIdlePhysical < 200)
      return foundPos
   Send,{Down}{Enter}
   Sleep,4222
   ; MSgbox,`n (%A_ScriptName%~%A_LineNumber%) 
   ; ExitApp
   ; Reload
}
;>>>>>>>> doGrenshotShotByMouseClick >>>> 171027125032 >>>> 27.10.2017 12:50:32 >>>>

;<<<<<<<< popupTimeLog <<<< 171001143320 <<<< 01.10.2017 14:33:20 <<<<
popupTimeLog(){
   ;last closede popupTimeLog
   ; Die nervige Popup-Werbung von Avira ... ob Sie die Benachrichtigung alle 24 Stunden oder alle 48 Stunden 
   WDayLast := A_WDay - 2
   if(WDayLast < 1)
      WDayLast += 7
    
   f := A_ScriptName . "_popupTimeLog" . ".txt" 
   f1 := A_ScriptName . "_" . WDayLast  . "WDay.log.txt" ; 1 is Sunday 
   FileCopy,% f1, % f,1
   FileGetTime, sourceModifiedTime, %f%  ; Retrieves the modification time by default.; 660+ lines in functions_global.inc.ahk
   FormatTime, yyyyMMddHHmmss, %A_now%,yyyyMMddHHmmss
   durations := yyyyMMddHHmmss - sourceModifiedTime
   durationm := Floor(durations / (60))
   durationh := durations / (60*60)
   durationh := Floor(durationh )
   if(!sourceModifiedTime || durationh<=48){
      ExitApp
   }

      ; for etwa zwei tagen (oder länger) wurde popup hierüber geschossen.
      ; kann jederzeit passieren

   ; f := A_ScriptName . A_WDay . ".log.txt"
   return,% f
   ; ####################
   ; ####################
   ; ####################
   FileAppend,,% f

   m = 
   (
   %durations% s
   %durationm% m
   %durationh% h
   %f%
   %yyyyMMddHHmmss% -
   %sourceModifiedTime%
   %A_LineNumber% = line
   )

   Msgbox,%m% `n ~%A_LineNumber% 
   ; Msgbox,d=%d% `n A_WDay=%A_WDay% `n WDayLast =%WDayLast% `n f= %f% `n sourceModifiedTime = %sourceModifiedTime% `n `n ~%A_LineNumber% 
   if(!sourceModifiedTime){
      ; for zwei tagen wurde kein popup hierüber geschlossen.
      ; lasst uns annehmen der letzte
   }
   ; A_WDay Current 1-digit day of the week (1-7). 1 is Sunday in all locales. 
   ; Die nervige Popup-Werbung von Avira ... ob Sie die Benachrichtigung alle 24 Stunden oder alle 48 Stunden 
   FileGetTime, sourceModifiedTime, %f%  ; Retrieves the modification time by default.; 660+ lines in functions_global.inc.ahk
   Msgbox,`n (%sourceModifiedTime%~%A_LineNumber%) 
}
;>>>>>>> popupTimeLog >>>> 171001143324 >>>> 01.10.2017 14:33:24 >>>>

;<<<<<<<< getTestWinBehindAvi <<<< 171101111711 <<<< 01.11.2017 11:17:11 <<<<
getTestWinBehindAvi(){
   ;feedbackMsgBoxCloseAllWindows()
   SetTitleMatchMode,1
   WinWaitClose,1: ; Wartet, bis das gefundene Fenster von WinWait geschlossen wird. 
   WinClose,2:
   WinWaitClose,2: ; sollte eigentlich nicht vorkommen... egal 14.10.2017 19:40
   ; feedbackMsgBox(A_ScriptName,"line = " . A_LineNumber,A_ScreenWidth - 400,A_ScreenHeight - 200)
   feedbackMsgBox("711010927","991971" . "1817010 line = " . A_LineNumber,1,1)
   Sleep,500
   ; scrollBox.inc.ahk irgendwann mal verwenden???????
   ;WinMove,1:711010927,,A_ScreenWidth - 350, A_ScreenHeight - 555 - 400, 200, 200
   WinMove,1:711010927,,A_ScreenWidth - 350, A_ScreenHeight - 375, 200, 200
   WinActivate,1:711010927
   mayBehindWin711010927png = window_event_listener_imageSearchVersionImg\711010927.png
   return, mayBehindWin711010927png
}
;>>>>>>> getTestWinBehindAvi >>>> 171101111716 >>>> 01.11.2017 11:17:16 >>>>


#Include %A_ScriptDir%\inc_ahk\move2Img_functions.inc.ahk
#Include *i %A_ScriptDir%\inc_ahk\functions_global.inc.ahk
;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
;~ subroutinen beispielsweise müsen ans Dateiende
#Include *i %A_ScriptDir%\inc_ahk\functions_global_dateiende.inc.ahk
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#Include *i %A_ScriptDir%\inc_ahk\UPDATEDSCRIPT_global.inc.ahk

