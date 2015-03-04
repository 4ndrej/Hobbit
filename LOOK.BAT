@echo off
echo.
if "%&room%" == "woods" goto woods
if "%&room%" == "cave" goto cavern
if "%&room%" == "clearing" goto clearing
if "%&room%" == "home" goto home
if "%&room%" == "rivendell" goto rivendell
if "%&room%" == "den" goto den

goto error

:woods
echo Deep Forest
echo You are standing in the deep forest. Paths lead off in all directions but east,
echo where a mighty river is floating by. You feel lost and hungry.
echo Thorin sits down and starts singing about drugs. He offers you a joint.
goto exit

:cavern
echo Trolls' Cave
if "%&o1loc%"=="cavern" goto cavelight
if "%&o1loc%"=="me" goto cavelight
echo It's dark. You can't see anything.
goto lastexit
:cavelight
echo You are in a hardly even lit cavern with a doorway leading south.
echo Thorin is mumbling to himself and fails to notice your presence.
goto exit

:clearing
echo Trolls' Clearing
echo You are standing in a vast clearing, with paths leading off to the east and 
echo west. A yellow brick road leads north. Trolls are standing all around you,
echo fiercely watching every move of your limbs.
if "%&stoned%"=="YES" echo The trolls seem to be stoned. They probably don't like the sunlight.
if not "%&stoned%"=="YES" echo The trolls are chanting ancient rhymes. They tend to do that just before dawn.
goto exit

:home
echo Tunnel Like Hall
echo You are in your comfortable tunnel like hall. Infact, it's just a dirty hole in
echo the ground, but to you it's home. Gandalf is working on a nasty spell. There
echo is a round, green door set in the eastern wall.
goto exit

:rivendell
echo Rivendell
echo This is Rivendell, the last homelike house. At least, that's the name of it.
echo Elrond is sitting at a round table together with his generals, discussing his 
echo plans for a coming conquest and enslavement of the Hobbits. Paths lead off to
echo the north and west.
echo Elrond hesitatingly offers you some food. He gives your fairly thick legs a
echo greedy look. He drools.
echo Thorin announces: "If you're attacking the Hobbits, count me in!"
set &o2loc=me
goto exit

:den
echo Smaug's Den
echo You are in a great cave. Gold and jewelry cover the floor. Precious paintings
echo are hanging on all the walls. Smaug is lying on a big heap of silver bars,
echo smoking a huge cigar. He looks at you and yawns loudly. 
goto exit

:error
echo Error: Undefined room!

:exit
echo You can see:
if "%&o1loc%"=="%&room%" echo A Torch
if "%&o2loc%"=="%&room%" echo Some Lunch
if "%&o3loc%"=="%&room%" echo A Curious Map
if "%&o4loc%"=="%&room%" echo A Wooden Chest
if "%&o5loc%"=="%&room%" echo A Raft
if "%&o6loc%"=="%&room%" echo A Sword
if "%&o7loc%"=="%&room%" echo A Treasure
echo Thorin, the dwarf.
:lastexit
