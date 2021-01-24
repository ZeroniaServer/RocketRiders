#Clear extra bedrock
fill -15 64 71 39 64 68 air
fill -15 64 -71 39 64 -68 air

#Clear moving piston
fill -9 74 68 -15 64 61 air replace moving_piston
fill 35 74 68 29 64 61 air replace moving_piston
fill -9 74 -68 -15 64 -61 air replace moving_piston
fill 35 74 -68 29 64 -61 air replace moving_piston

##Reset Tetris progress for Item RNG
function rr_swap:items/tetrisreset

#Reset pregame queue
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -89 201 96 -101 195 95 white_stained_glass
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -89 201 94 -101 195 93 orange_stained_glass
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -89 201 91 -101 195 92 yellow_stained_glass
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -90 202 95 -90 203 95 air
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -100 202 95 -100 203 95 air
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -89 201 60 -101 195 61 white_stained_glass
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -89 201 62 -101 195 63 cyan_stained_glass
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -89 201 65 -101 195 64 blue_stained_glass
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -100 202 61 -100 203 61 air
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -90 202 61 -90 203 61 air
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -88 202 97 -102 194 97 obsidian
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -88 202 59 -102 194 59 obsidian
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -89 201 59 -94 195 59 nether_portal[axis=x]
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -96 201 59 -101 195 59 nether_portal[axis=x]
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -89 201 97 -94 195 97 nether_portal[axis=x]
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -96 201 97 -101 195 97 nether_portal[axis=x]
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -102 202 97 -88 194 97 obsidian replace bedrock
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -102 202 59 -88 194 59 obsidian replace bedrock
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -88 202 98 -102 202 98 barrier
execute if entity @e[tag=Selection,tag=!ctfEnabled,type=armor_stand] run fill -88 202 58 -102 202 58 barrier

#remove join cancel from joinpads
tag @e[tag=CancelJoin,type=area_effect_cloud] remove CancelJoin