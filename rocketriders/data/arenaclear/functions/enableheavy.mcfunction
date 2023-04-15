##Enables all Heavy missiles
tag @s[tag=!warWasOn] add rngWar
tag @s[tag=!auxWasOn] add rngAux
tag @s[tag=!riftWasOn] add rngRift
tag @s[tag=!jbusterWasOn] add rngJbuster
tag @s[tag=!heavyWasOn] remove heavyOff
scoreboard players set @e[predicate=custom:indimension,type=armor_stand,tag=Selection] refreshsigns 1