execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!chaseEnabled] run function game:uncancelyellow
scoreboard players reset @e[x=0,type=armor_stand,tag=rr_chase] PlayerCap

#remove moving piston
fill 13 74 68 7 64 61 air replace moving_piston

#kill stair marker
kill @e[x=0,type=marker,tag=chaseStairs]

#Waiting lobby stuff
fill -88 195 66 -102 211 90 air replace minecraft:player_head
team modify Blue color blue

function rr_chase:chaseblocks/killall

#reset pregame queue
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!chaseEnabled] run fill -79 204 63 -81 204 61 blue_concrete replace white_concrete
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!chaseEnabled] run fill -79 204 95 -81 204 93 yellow_concrete replace white_concrete
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!chaseEnabled] run setblock -95 202 95 air
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!chaseEnabled,tag=!Hardcore] run fill -89 201 96 -101 195 95 white_stained_glass
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!chaseEnabled] run fill -88 202 97 -102 194 97 obsidian
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!chaseEnabled] run fill -88 202 59 -102 194 59 obsidian
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!chaseEnabled] run fill -89 201 59 -94 195 59 nether_portal[axis=x]
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!chaseEnabled] run fill -96 201 59 -101 195 59 nether_portal[axis=x]
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!chaseEnabled] run fill -89 201 97 -94 195 97 nether_portal[axis=x]
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!chaseEnabled] run fill -96 201 97 -101 195 97 nether_portal[axis=x]