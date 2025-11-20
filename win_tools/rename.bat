setlocal enabledelayedexpansion
echo off
chcp 1254
for %%a in (*ç* or *Ç* or *ý* *Ý* or *ð* or *Ð* or *ö* or *Ö* or *Þ* or *þ* or *ü* or *Ü*) do (
	set file=%%a
	if exist !file! (
		ren "!file!" "!file:ç=c!"
	)
	if exist !file! (
		ren "!file!" "!file:Ç=c!"
	)
	if exist !file! (
		ren "!file!" "!file:ý=i!"
	)
	if exist !file! (
		ren "!file!" "!file:Ý=i!"
	)
	if exist !file! (
		ren "!file!" "!file:ð=g!"
	)
	)
	if exist !file! (
		ren "!file!" "!file:Ð=g!"
	)
	if exist !file! (
		ren "!file!" "!file:ö=o!"
	)
	if exist !file! (
		ren "!file!" "!file:Ö=o!"
	)
	if exist !file! (
		ren "!file!" "!file:þ=s!"
	)
	if exist !file! (
		ren "!file!" "!file:Þ=s!"
	)
	if exist !file! (
		ren "!file!" "!file:ü=u!"
	)
	if exist !file! (
		ren "!file!" "!file:Ü=u!"
	)
)

for %%a in (* *) do (
	set file=%%a
	if exist !file! (
		ren "!file!" "!file: =_!"
	)
)

for %%a in (*_.*) do (
	set file=%%a
	if exist !file! (
		ren "!file!" "!file:_.=.!"
	)
)

for %%a in (*OPTIMUS*) do (
	set file=%%a
	if exist !file! (
		ren "!file!" "!file:OPTIMUS=Optimus!"
	)
)

:loopline

set "condition=false"
for %%a in (*__*) do (
	set file=%%a
	if exist !file! (
		ren "!file!" "!file:__=_!"
		set "condition=true"
	)
)
if "%condition%" == "true" (
	goto loopline
)
