#Clear Yellow Base
fill -14 34 52 38 63 56 air
fill 38 63 57 -14 34 61 air
fill -14 34 66 38 63 62 air

#Clear Blue Base
fill -14 34 -52 38 63 -56 air
fill 38 63 -61 -14 34 -57 air
fill -14 34 -62 38 63 -66 air

#Reset pregame queue
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -89 201 96 -101 195 95 white_stained_glass
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -89 201 94 -101 195 93 orange_stained_glass
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -89 201 91 -101 195 92 yellow_stained_glass
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run setblock -90 202 95 air
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run setblock -100 202 95 air
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -89 201 60 -101 195 61 white_stained_glass
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -89 201 62 -101 195 63 cyan_stained_glass
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -89 201 65 -101 195 64 blue_stained_glass
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run setblock -100 202 61 air
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run setblock -90 202 61 air
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -88 202 97 -102 194 97 obsidian
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -88 202 59 -102 194 59 obsidian
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -89 201 59 -94 195 59 nether_portal[axis=x]
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -96 201 59 -101 195 59 nether_portal[axis=x]
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -89 201 97 -94 195 97 nether_portal[axis=x]
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -96 201 97 -101 195 97 nether_portal[axis=x]

#remove join cancel from joinpads
tag @e[tag=CancelJoin,type=area_effect_cloud] remove CancelJoin