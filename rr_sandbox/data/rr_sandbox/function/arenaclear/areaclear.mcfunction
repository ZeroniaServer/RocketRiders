execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=sandboxEnabled] run function rr_sandbox:arenaclear/resetportal

#reset tetris for powerups
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function rr_powerups:items/tetrisreset

#remove stinging shield entities
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function rr_powerups:arenaclear/preparebeeshield
scoreboard players reset $beetime BeeShieldTime

#ICBM reset
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run tag @s remove givenICBM
kill @e[x=0,type=egg,tag=ICBM]
kill @e[x=0,type=marker,tag=ICBMtracker]
kill @e[x=0,type=chicken]
scoreboard players reset $highest ICBMID