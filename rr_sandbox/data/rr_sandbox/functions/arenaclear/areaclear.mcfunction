execute unless entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=sandboxEnabled] run function rr_sandbox:arenaclear/resetportal

#reset tetris for powerups
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function rr_powerups:items/tetrisreset

#remove stinging shield entities
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function rr_powerups:arenaclear/preparebeeshield
scoreboard players reset $beetime BeeShieldTime

#ICBM reset
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run tag @s remove givenICBM
kill @e[predicate=custom:indimension,type=egg,tag=ICBM]
kill @e[predicate=custom:indimension,type=marker,tag=ICBMtracker]
kill @e[predicate=custom:indimension,type=chicken]
scoreboard players reset $highest ICBMID