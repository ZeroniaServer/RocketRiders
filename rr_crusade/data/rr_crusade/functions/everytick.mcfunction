execute as @e[type=armor_stand,tag=rr_crusade] run function gamemodes:updateid
execute if score @e[type=armor_stand,tag=Selection,tag=!crusadeEnabled,tag=switchGamemodes,limit=1] SetGamemode = @e[type=armor_stand,tag=rr_crusade,limit=1] gamemodeID run function rr_crusade:enable
execute if score @e[type=armor_stand,tag=Selection,tag=crusadeEnabled,tag=switchGamemodes,limit=1] SetGamemode = @e[type=armor_stand,tag=rr_crusade,limit=1] gamemodeID run tag @e[type=armor_stand,tag=Selection,limit=1] remove switchGamemodes
execute as @e[type=armor_stand,tag=Selection,tag=crusadeEnabled] run function rr_crusade:ifenabled
execute as @e[type=armor_stand,tag=Selection,tag=crusadeLast] run function rr_crusade:iflast

scoreboard players reset @a[team=!Blue,team=!Yellow] crusadekit

#Arrow pickup
execute as @e[type=armor_stand,tag=Selection,tag=!GameEnd,tag=crusadeEnabled] if entity @e[type=arrow] run function rr_crusade:game/arrow_pickup

scoreboard players enable @a[team=Blue] crusadechange
scoreboard players enable @a[team=Yellow] crusadechange
scoreboard players enable @a[team=!Blue,team=!Yellow] crusadechange

execute as @a[scores={crusadechange=1}] run function rr_crusade:items/kit/give/knight
execute as @a[scores={crusadechange=2}] run function rr_crusade:items/kit/give/archer
execute as @a[scores={crusadechange=3}] run function rr_crusade:items/kit/give/mage

scoreboard players reset @a[scores={crusadechange=-2147483647..-1}] crusadechange
scoreboard players reset @a[scores={crusadechange=1..}] crusadechange