##Restores Modification Room to all defaults
tag @e[tag=rr_normal,type=armor_stand,limit=1] add GlobalDefaults
scoreboard players operation @s SetGamemode = @e[tag=rr_normal,type=armor_stand,limit=1] gamemodeID
tag @s add RestoreDefault
execute as @s run function modifiers:disablemodifiers
tag @s add DefaultOptions
tag @s add DefaultWorld
execute as @s run function arenaclear:enableitems
scoreboard players add @s refreshsigns 1