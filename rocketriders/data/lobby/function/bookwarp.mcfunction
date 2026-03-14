##########################################
## BOOKWARP: Allows players to navigate ##
## the lobby with their Navigation Book ##
##########################################

#Cancel parkour
execute if predicate rr:has_parkour as @a[x=0,scores={lobby=1..},tag=inParkour] run tellraw @s [{"text":"You used a Lobby Warp, so your Parkour run was canceled.","color":"red"}]
execute as @a[x=0,scores={lobby=1..},tag=inParkour] run clear @s
execute as @a[x=0,scores={lobby=1..},tag=inParkour] run tag @s remove inParkour

#Teleports
effect clear @a[x=0,predicate=custom:team/lobby,scores={lobby=7}] night_vision
execute as @a[x=0,predicate=custom:team/lobby,scores={lobby=1..}] unless score @s lobby matches 7 run effect give @s night_vision infinite 100 true

tp @a[x=0,predicate=custom:team/lobby,scores={lobby=1}] -43 211 78 90 0
execute if predicate rr:has_modification_room as @a[x=0,predicate=custom:team/lobby,scores={lobby=2}] unless predicate game:game_rules/lock_modification_room/on run tp @s -64 202 78 90 0
execute if predicate rr:has_modification_room as @a[x=0,predicate=custom:team/lobby,scores={lobby=2}] if predicate game:game_rules/lock_modification_room/on run tellraw @s [{"text":"You do not have access to the Modification Room!","color":"red"}]
execute if predicate rr:has_modification_room as @a[x=0,predicate=custom:team/lobby,scores={lobby=2}] if predicate game:game_rules/lock_modification_room/on run scoreboard players reset @s lobby

#Message about mod room (server mode)
execute unless predicate rr:has_modification_room as @a[x=0,predicate=custom:team/lobby,scores={lobby=2}] run tellraw @s [{"text":"You cannot access this area.","color":"red"}]
execute unless predicate rr:has_modification_room as @a[x=0,predicate=custom:team/lobby,scores={lobby=2}] run scoreboard players reset @s lobby

tp @a[x=0,predicate=custom:team/lobby,scores={lobby=3}] -78 204 64 135 0
tp @a[x=0,predicate=custom:team/lobby,scores={lobby=4}] -78 204 92 45 0
tp @a[x=0,predicate=custom:team/lobby,scores={lobby=5}] -80 201 78 90 0
tp @a[x=0,predicate=custom:team/lobby,scores={lobby=6}] 11 204 78 -90 60
tp @a[x=0,predicate=custom:team/lobby,scores={lobby=7}] 65 205 -3 0 0

#Sound and effects
execute as @a[x=0,predicate=custom:team/lobby,scores={lobby=1..}] at @s run playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 2
execute as @a[x=0,predicate=custom:team/lobby,tag=!hideParticles,scores={lobby=1..}] at @s run particle end_rod ~ ~1 ~ 0 0 0 0.1 100 force @s
execute as @a[x=0,predicate=custom:team/lobby,tag=!hideParticles,scores={lobby=1..}] at @s run particle flash{color:0xFFFFFF} ~ ~1 ~ 0 0 0 0 5 force @s
