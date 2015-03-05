@echo off
if "%1" == "" look
if "%1" == "torch" goto torch
if "%1" == "lunch" goto lunch
if "%1" == "map" goto map
if "%1" == "chest" goto chest
if "%1" == "elrond" goto elrond
if "%1" == "gandalf" goto gandalf
if "%1" == "thorin" goto thorin
if "%1" == "smaug" goto smaug
if "%1" == "dragon" goto smaug
if "%1" == "treasure" goto treasure
if "%1" == "paintings" goto paintings
if "%1" == "painting" goto paintings
if "%1" == "cigar" goto cigar
if "%1" == "the" examine %2
echo There is nothing special about the %1.
goto exit

:torch
if not "%&o1loc%" == "me" if not "%&o1loc%" == "%&room%" goto cantsee
echo It is currently providing light.
goto exit

:lunch
if not "%&o2loc%" == "me" if not "%&o2loc%" == "%&room%" goto cantsee
echo It's edible.
goto exit

:map
if "%&o3loc%" == "gandalf" if "%&room%" == "home" goto ganhasmap
if not "%&o3loc%" == "me" if not "%&o3loc%" == "%&room%" goto cantsee
echo The curious map must obviously have been drawn by hand, at great effort. 
echo It shows the mysterious surroundings of Rivendell, home of the elves.
goto exit
:ganhasmap
echo Gandalf has it. You should ask him about it. Maybe he doesn't need it anyway.
goto exit

:chest
if not "%&o4loc%" == "me" if not "%&o4loc%" == "%&room%" goto cantsee
echo It's a nice piece of wooden workmanship.
if "%&o1loc%" == "chest" echo There's a burning torch inside it. You decide to pick it up.
if "%&o1loc%" == "chest" set &o1loc=me
goto exit

:gandalf
if not "%&room%" == "home" goto gancantsee
echo Gandalf, the old magician, is still working with his new spell.
if "%&o3loc%" == "gandalf" echo He is carrying a map.
goto exit
:gancantsee
echo Gandalf isn't here!
goto exit

:elrond
if not "%&room%" == "rivendell" goto elrcantsee
echo Elrond has turned pretty nasty lately. Better not mess with him, considering
echo his plans to enslave all Hobbits. 
goto exit
:gancantsee
echo Elrond isn't here!
goto exit

:thorin
echo Thorin, your old friend, is no longer the proud dwarf he once was. All the
echo drugs have turned him into a drooling good-for-nothing idiot. The only reason
echo that he has come along is to get more treasures for drugs, as always.

if "%&room%" == "home" echo He doesn't seem to happy about leaving the house.
if "%&room%" == "rivendell" echo Thorin takes another beer from the fridge. Elrond slaps him.
if "%&room%" == "den" echo Thorin is negotiating with the dragon about taking some rare drugs home,
if "%&room%" == "den" echo provided that Smaug gets to keep your body.
if "%&room%" == "woods" echo Thorin says "We're lost! Abandon all hope. We'll never get out of here alive!".
if "%&room%" == "clearing" if "%&stoned%" == "NO" echo Thorin participates in the chanting.
if "%&room%" == "clearing" if "%&stoned%" == "YES" echo Thorin is talking to the trolls. He doesn't notice that they are dead. 
if "%&room%" == "cave" echo Thorin is writing a song. I shall call it "Let's roll another one", he remarks.
goto exit

:smaug
if not "%&room%" == "den" goto smacantsee
echo Smaug's red dragon body is filling the eastern part of the cave. As he can't
echo get out of the cave anymore, he seems to have settled with just lying here,
echo eating any adventurers that drop by. Every now and then he enjoys a big
echo cigar, but he obviously doesn't know quite how to do it right. The cigar in
echo his mouth hasn't been cut properly. Smaug coughs, but luckily you're out of
echo the deadly range.
goto exit
:smacantsee
echo Smaug is not around, as far as I can see.
goto exit

:treasure
if not "%&o7loc%" == "me" if not "%&o7loc%" == "%&room%" goto cantsee
echo It is just the kind of treasure you'd expect to find in a dragon's den. It does
echo seem mighty valuable.
goto exit

:paintings
if not "%&room%" == "den" goto cantsee
echo Among the paintings you recognize works of Picasso, da Vinci and Rembrandt. 
goto exit

:cigar
if not "%&room%" == "den" goto cantsee
echo The cigar doesn't seem to be properly cut.
goto exit

:cantsee
echo It is nowhere to be seen.

:exit
