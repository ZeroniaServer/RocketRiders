##Enables all Lightning missiles
tag @s[tag=!hurWasOn] add rngHur
tag @s[tag=!thunWasOn] add rngThun
tag @s[tag=!lightningWasOn] remove lightningOff
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] refreshsigns 1