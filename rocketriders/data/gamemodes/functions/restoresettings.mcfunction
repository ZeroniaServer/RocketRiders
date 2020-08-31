##Utility function for restoring previous settings
##ONLY RUN WHILE CUSTOMIZER IS OPEN!!!

#EXTRA: For resetting to global defaults
execute if entity @s[tag=GlobalDefaults] run tag @e[tag=rr_normal,type=armor_stand] add GlobalDefaults

data modify entity @s Tags set from storage rocketriders:storage Tags
data modify storage rocketriders:storage Tags set value []

scoreboard players operation @s TopDeco = $TORAGE TopDeco
scoreboard players operation @s TopCorner = $TORAGE TopCorner
scoreboard players operation @s MiddleDeco = $TORAGE MiddleDeco
scoreboard players operation @s BottomDeco = $TORAGE BottomDeco
scoreboard players operation @s PortalDeco = $TORAGE PortalDeco

scoreboard players operation @s MaxItemSec = $TORAGE MaxItemSec
scoreboard players operation @s MaxItemTime = $TORAGE MaxItemTime

#EXTRA: For resetting to global defaults
execute if entity @e[tag=rr_normal,type=armor_stand,tag=GlobalDefaults] run tag @s add RestoreDefault
execute if entity @e[tag=rr_normal,type=armor_stand,tag=GlobalDefaults] run function modifiers:disablemodifiers
execute if entity @e[tag=rr_normal,type=armor_stand,tag=GlobalDefaults] run tag @s add DefaultOptions
execute if entity @e[tag=rr_normal,type=armor_stand,tag=GlobalDefaults] run tag @s add DefaultWorld
execute if entity @e[tag=rr_normal,type=armor_stand,tag=GlobalDefaults] run function arenaclear:enableitems
tag @e[tag=rr_normal,type=armor_stand,tag=GlobalDefaults] remove GlobalDefaults