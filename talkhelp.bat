@echo off
if "%1" == "gandalf" goto talkgandalf
if "%1" == "elrond" goto talkelrond
if "%1" == "thorin" goto talkthorin

goto notalk

:talkgandalf
if not "%&room%"=="home" goto cantsee
if "%2" == "map" goto ganmap
if "%2" == "spell" goto ganspell
if "%2" == "hoboff" goto ganhoboff
echo "Yes, that's probably so", he says.
goto exit
:ganmap
if not "%&o3loc%"=="gandalf" goto gan2map
echo "Oh, that map. There is absolutely nothing special about it at all. I guess
echo you could have it, if you want it.", Gandalf declares and hands you the map. 
set &o3loc=me
goto exit
:gan2map
echo Gandalf yells, "I already gave it to you, didn't I!!!".
goto exit
:ganspell
echo "This will be a great spell. I shall name it 'HOBOFF', no doubt.", Gandalf
echo chuckles.
goto exit
:ganhoboff
echo Gandalf gives you a mean smile, showing all his teeth. "Any Hobbit of my
echo choice will be turned into a pile of dirt.", he laughs, "Only a few minor
echo adjustments left, and it will produce a great fertilizer.". His eyes open
echo wide as he reaches the end of the sentence. He then looks at you for a good
echo fifteen seconds before he slowly turns away.
goto exit

:talkelrond
if not "%&room%"=="rivendell" goto cantsee
if "%2" == "map" goto elmap
if "%2" == "plans" goto elplans
echo Elrond laughs at your silly question. He pats your head.
goto exit
:elmap
if not "%&o3loc%" == "rivendell" if not "%&o3loc%" == "me" goto elnomap
echo "That's a fine map you've got there. We wouldn't want anything to HAPPEN to it,
echo now would we?", Elrond hisses. He continues; "Whatever you do, don't show it to
echo that crazy dwarf!".
goto exit
:elnomap
echo "What map are you talking about, you little prat? You must be delirious!",
echo Elrond snarls. He slaps you in the face.
goto exit
:elplans
echo "They are top secret. If you reveal anything you're dead meat, pipsqueak!",
echo Elrond whispers. He look as though he meant it.
goto exit

:talkthorin
if "%2" == "map" goto thormap
if "%&room%" == "clearing" echo Thorin gets a serious look on his face. "Don't push your luck, kid!", he says.
if "%&room%" == "woods" echo "Have you ever tried picking up your teeth with broken fingers?",Thorin replies.
if "%&room%" == "cave" echo "I'm tired of killing for money. Let's go home!", Thorin sighs.
if "%&room%" == "rivendell" echo Thorin is too absorbed by Elronds plans to pay attention.
if "%&room%" == "den" echo "Hell, this is a fortune!", Thorin states as he walks around the cave.
if "%&room%" == "home" echo "Did your mom ever talk to you about death?", Thorin asks you.
goto exit
:thormap
if not "%&o3loc%" == "%&room%" if not "%&o3loc%" == "me" goto thornomap
echo Thorin takes a quick look at the map. His eyes widen in rage as he reaches for
echo his battle axe. "It was you all the time, wasn't it?!", he cries out. With one
echo well placed blow he cleaves your skull. All is dark...
echo.
pause
restart
:thornomap
echo Thorin eyes you suspiciously. "Don't try any tricks, boy. We both know that
echo there is no map here, now don't we?", he asks. He doesn't seem too sure about
echo it himself.
goto exit


:cantsee
echo You can't see him here.
goto exit

:notalk
echo Action speaks louder than words!

:exit
