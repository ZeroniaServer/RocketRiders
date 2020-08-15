#Clear Yellow Base
fill -14 34 52 38 63 56 air
fill 38 63 57 -14 34 61 air
fill -14 34 66 38 63 62 air

#Clear Blue Base
fill -14 34 -52 38 63 -56 air
fill 38 63 -61 -14 34 -57 air
fill -14 34 -62 38 63 -66 air

#Reset pregame queue
execute if entity @s[tag=!ctfEnabled] run fill -89 201 96 -101 195 96 white_stained_glass
execute if entity @s[tag=!ctfEnabled] run fill -89 201 94 -101 195 95 orange_stained_glass
execute if entity @s[tag=!ctfEnabled] run fill -89 201 91 -101 195 93 yellow_stained_glass
execute if entity @s[tag=!ctfEnabled] run setblock -90 202 95 air
execute if entity @s[tag=!ctfEnabled] run setblock -100 202 95 air
execute if entity @s[tag=!ctfEnabled] run fill -89 201 60 -101 195 60 white_stained_glass
execute if entity @s[tag=!ctfEnabled] run fill -89 201 62 -101 195 61 cyan_stained_glass
execute if entity @s[tag=!ctfEnabled] run fill -89 201 65 -101 195 63 blue_stained_glass
execute if entity @s[tag=!ctfEnabled] run setblock -100 202 61 air
execute if entity @s[tag=!ctfEnabled] run setblock -90 202 61 air

#remove join cancel from joinpads
tag @e[tag=CancelJoin,type=area_effect_cloud] remove CancelJoin