#reset tetris for powerups
execute as @e[tag=Selection,type=armor_stand] run function rr_powerups:items/tetrisreset

#remove endcrystal entities
kill @e[tag=PUCrystalEntity]

#Clear crystal platforms
scoreboard players reset @e[tag=captureMiddle] captureBlue
scoreboard players reset @e[tag=captureMiddle] captureYellow
scoreboard players reset @e[tag=captureMiddle] capturePoint
fill 13 63 67 10 66 71 air
fill 13 63 -67 10 66 -71 air
fill 14 63 67 10 66 71 air
fill -14 63 67 10 66 -71 air

#remove stinging shield entities
execute as @e[tag=Selection,type=armor_stand] run function rr_powerups:arenaclear/preparebeeshield
scoreboard players reset $beetime BeeShieldTime

#remove join cancel from joinpads
tag @e[tag=CancelJoin,type=area_effect_cloud] remove CancelJoin