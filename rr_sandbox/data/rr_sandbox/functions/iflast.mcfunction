execute as @e[x=0,type=marker,tag=ArenaClearChecker,tag=!Cleared] at @s run function rr_sandbox:arenaclear/areaclear
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=!Cleared] run tag @s remove sandboxLast
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=!Cleared] if data storage rocketriders:storage Tags summon marker run function rr_sandbox:clearlast 
tag @e[x=0,type=marker,tag=PlacerClear] add Cleared