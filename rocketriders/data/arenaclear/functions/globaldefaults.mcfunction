##Restores Modification Room to all defaults
tag @s add GlobalDefaults
scoreboard players operation @s SetGamemode = @e[tag=rr_normal,type=armor_stand,limit=1] gamemodeID
tag @s add RestoreDefault
execute as @s run function modifiers:disablemodifiers
tag @s add DefaultOptions
tag @s add DefaultWorld
execute as @s run function arenaclear:enableitems
scoreboard players add @s refreshsigns 1