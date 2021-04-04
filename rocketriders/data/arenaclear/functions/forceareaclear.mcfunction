##Operator function - Forces an arena clear to occur
execute as @e[tag=Selection,type=armor_stand] run function arenaclear:areaclear
tag @e[tag=Selection,type=armor_stand] remove needsForceClear
tag @e[tag=PlacerClear,type=area_effect_cloud] add Cleared
schedule function game:uncancelpads 2t append
tag @e[tag=Selection,type=armor_stand] remove GameEnd
scoreboard players set @e[tag=Selection,type=armor_stand] endtimer 0

execute if entity @e[tag=Selection,tag=!Hardcore,type=armor_stand] run fill -89 201 96 -101 195 95 white_stained_glass
execute if entity @e[tag=Selection,tag=!Hardcore,type=armor_stand] run fill -89 201 94 -101 195 93 orange_stained_glass
execute if entity @e[tag=Selection,tag=!Hardcore,type=armor_stand] run fill -89 201 91 -101 195 92 yellow_stained_glass
execute if entity @e[tag=Selection,tag=!Hardcore,type=armor_stand] run fill -89 201 60 -101 195 61 white_stained_glass
execute if entity @e[tag=Selection,tag=!Hardcore,type=armor_stand] run fill -89 201 62 -101 195 63 cyan_stained_glass
execute if entity @e[tag=Selection,tag=!Hardcore,type=armor_stand] run fill -89 201 65 -101 195 64 blue_stained_glass

fill -88 202 98 -102 202 98 barrier
fill -88 202 58 -102 202 58 barrier