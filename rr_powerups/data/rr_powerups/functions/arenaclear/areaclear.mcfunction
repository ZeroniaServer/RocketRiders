#reset tetris for powerups
execute as @e[tag=Selection,type=armor_stand] run function rr_powerups:items/tetrisreset

#remove endcrystal entities
kill @e[tag=PUCrystalEntity]

#Clear crystal platforms
scoreboard players reset @e[tag=captureMiddle] captureBlue
scoreboard players reset @e[tag=captureMiddle] captureYellow
scoreboard players reset @e[tag=captureMiddle] capturePoint
fill 14 63 67 10 66 72 air
fill 14 63 -67 10 66 -72 air
fill 14 63 67 10 66 72 air
fill -14 63 67 10 66 -72 air


execute if entity @e[tag=Selection,type=armor_stand,limit=1,tag=!powerupsEnabled] run setblock -95 202 59 obsidian
execute if entity @e[tag=Selection,type=armor_stand,limit=1,tag=!powerupsEnabled] run fill -96 203 59 -94 203 59 barrier
execute if entity @e[tag=Selection,type=armor_stand,limit=1,tag=!powerupsEnabled] run fill -93 204 58 -97 201 58 barrier
execute if entity @e[tag=Selection,type=armor_stand,limit=1,tag=!powerupsEnabled] run fill -97 201 57 -93 205 55 air

execute if entity @e[tag=Selection,type=armor_stand,limit=1,tag=!powerupsEnabled] run setblock -95 202 97 obsidian
execute if entity @e[tag=Selection,type=armor_stand,limit=1,tag=!powerupsEnabled] run fill -96 203 97 -94 203 97 barrier
execute if entity @e[tag=Selection,type=armor_stand,limit=1,tag=!powerupsEnabled] run fill -93 204 98 -97 201 98 barrier
execute if entity @e[tag=Selection,type=armor_stand,limit=1,tag=!powerupsEnabled] run fill -97 201 99 -93 205 101 air

#remove stinging shield entities
execute as @e[tag=Selection,type=armor_stand] run function rr_powerups:arenaclear/preparebeeshield
scoreboard players reset $beetime BeeShieldTime

#remove join cancel from join pads
schedule function game:uncancelpads 2t append