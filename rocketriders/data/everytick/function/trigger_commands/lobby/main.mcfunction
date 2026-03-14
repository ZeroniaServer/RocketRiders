execute unless score @s lobby matches 1.. run return run tellraw @s {color:"red",text:"That is not a valid input"}

#Cancel parkour
execute if predicate rr:has_parkour if entity @s[tag=inParkour] run tellraw @s {color:"red",text:"You used a Lobby Warp, so your Parkour run was canceled."}
execute if predicate rr:has_parkour if entity @s[tag=inParkour] run clear @s
execute if predicate rr:has_parkour if entity @s[tag=inParkour] run tag @s remove inParkour

#Teleports
effect give @s night_vision infinite 100 true

execute if score @s lobby matches 1 run tp @s -43 211 78 90 0
execute if predicate rr:has_modification_room if score @s lobby matches 2 unless predicate game:game_rules/lock_modification_room/on run tp @s -64 202 78 90 0
execute if predicate rr:has_modification_room if score @s lobby matches 2 if predicate game:game_rules/lock_modification_room/on run tellraw @s {color:"red",text:"You do not have access to the Modification Room!"}
execute if predicate rr:has_modification_room if score @s lobby matches 2 if predicate game:game_rules/lock_modification_room/on run scoreboard players reset @s lobby

#Message about mod room (server mode)
execute unless predicate rr:has_modification_room if score @s lobby matches 2 run tellraw @s {color:"red",text:"You cannot access this area."}
execute unless predicate rr:has_modification_room if score @s lobby matches 2 run scoreboard players reset @s lobby

execute if score @s lobby matches 3 run tp @s -78 204 64 135 0
execute if score @s lobby matches 4 run tp @s -78 204 92 45 0
execute if score @s lobby matches 5 run tp @s -80 201 78 90 0
execute if score @s lobby matches 6 run tp @s 11 204 78 -90 60
execute if score @s lobby matches 7.. run return run tellraw @s {color:"red",text:"That is not a valid input"}

#Sound and effects
execute at @s run playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 2
execute unless entity @s[tag=hideParticles] at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.1 100 force @s
execute unless entity @s[tag=hideParticles] at @s run particle minecraft:flash{color:0xFFFFFF} ~ ~1 ~ 0 0 0 0 5 force @s
