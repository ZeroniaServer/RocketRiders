##Restores Modification Room to all defaults
tag @s add GlobalDefaults
function modifiers:disablemodifiers
scoreboard players operation @s[tag=!SMSwitch] SetGamemode = @e[type=armor_stand,tag=rr_normal,limit=1] gamemodeID
tag @s add RestoreDefault
tag @s add DefaultOptions
tag @s add DefaultWorld
function arenaclear:enableitems
scoreboard players add @s refreshsigns 1