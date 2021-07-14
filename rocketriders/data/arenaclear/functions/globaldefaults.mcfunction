##Restores Modification Room to all defaults
tag @s add GlobalDefaults
scoreboard players operation @s SetGamemode = @e[type=armor_stand,tag=rr_normal,limit=1] gamemodeID
tag @s add RestoreDefault
function modifiers:disablemodifiers
tag @s add DefaultOptions
tag @s add DefaultWorld
function arenaclear:enableitems
scoreboard players add @s refreshsigns 1