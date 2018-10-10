@echo off

set libpath=.\_bin\
::----------------------------------
set name=uniSimpleJSON
set depref=
set libref=
::----------------------------------
MD %libpath%
set outfile=%libpath%\%name%.dll
set srcpath=.\src
call "%UNITY_ROOT%\Editor\Data\Mono\bin\smcs" -target:library -r:"%UNITY_ROOT%\Editor\Data\Managed\UnityEngine.dll";"%UNITY_ROOT%\Editor\Data\UnityExtensions\Unity\GUISystem\UnityEngine.UI.dll" -out:%outfile% -recurse:%srcpath%\*.cs -reference:%depref%;%libref%
echo FINISH
pause
exit