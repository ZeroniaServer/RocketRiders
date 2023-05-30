##Utility function for restoring previous settings
##ONLY RUN WHILE CUSTOMIZER IS OPEN!!!

#EXTRA: For resetting to global defaults
execute if entity @s[tag=GlobalDefaults] run tag @e[predicate=custom:indimension,type=armor_stand,tag=rr_normal] add GlobalDefaults

data modify entity @s Tags set from storage rocketriders:storage Tags
data remove storage rocketriders:storage Tags
tag @s remove GameEnd

scoreboard players operation @s TopDeco = $TORAGE TopDeco
scoreboard players operation @s TopCorner = $TORAGE TopCorner
scoreboard players operation @s MiddleDeco = $TORAGE MiddleDeco
scoreboard players operation @s BottomDeco = $TORAGE BottomDeco
scoreboard players operation @s PortalDeco = $TORAGE PortalDeco

scoreboard players operation @s MaxItemSec = $TORAGE MaxItemSec
scoreboard players operation @s MaxItemTime = $TORAGE MaxItemTime

#EXTRA: For resetting to global defaults
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_normal,tag=GlobalDefaults] run tag @s add RestoreDefault
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_normal,tag=GlobalDefaults] run function modifiers:disablemodifiers
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_normal,tag=GlobalDefaults] run tag @s add DefaultOptions
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_normal,tag=GlobalDefaults] run tag @s add DefaultWorld
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_normal,tag=GlobalDefaults] run function arenaclear:enableitems
tag @e[predicate=custom:indimension,type=armor_stand,tag=rr_normal,tag=GlobalDefaults] remove GlobalDefaults