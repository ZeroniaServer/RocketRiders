##Enables all Heavy missiles
tag @s[tag=!warWasOn] add rngWar
tag @s[tag=!auxWasOn] add rngAux
tag @s[tag=!riftWasOn] add rngRift
tag @s[tag=!jbusterWasOn] add rngJbuster
tag @s[tag=!heavyWasOn] remove heavyOff
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] refreshsigns 1