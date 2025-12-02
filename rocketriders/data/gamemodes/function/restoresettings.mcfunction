##Utility function for restoring previous settings
##ONLY RUN WHILE CUSTOMIZER IS OPEN!!!

#EXTRA: For resetting to global defaults
execute if entity @s[tag=GlobalDefaults] run tag @e[x=0,type=armor_stand,tag=rr_normal] add GlobalDefaults

function game:config/load {read_from:"storage rocketriders:storage config",merge:true}
data remove storage rocketriders:storage config
data modify entity @s Tags set from storage rocketriders:storage Tags
data remove storage rocketriders:storage Tags
scoreboard players reset $match_over global

#EXTRA: For resetting to global defaults
execute if entity @e[x=0,type=armor_stand,tag=rr_normal,tag=GlobalDefaults] run tag @s add RestoreDefault
execute if entity @e[x=0,type=armor_stand,tag=rr_normal,tag=GlobalDefaults] run function modifiers:disablemodifiers
execute if entity @e[x=0,type=armor_stand,tag=rr_normal,tag=GlobalDefaults] run tag @s add DefaultOptions
execute if entity @e[x=0,type=armor_stand,tag=rr_normal,tag=GlobalDefaults] run tag @s add DefaultWorld
execute if entity @e[x=0,type=armor_stand,tag=rr_normal,tag=GlobalDefaults] run function arenaclear:enableitems
tag @e[x=0,type=armor_stand,tag=rr_normal,tag=GlobalDefaults] remove GlobalDefaults