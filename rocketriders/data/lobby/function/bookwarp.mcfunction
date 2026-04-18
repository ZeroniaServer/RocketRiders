##########################################
## BOOKWARP: Allows players to navigate ##
## the lobby with their Navigation Book ##
##########################################

#Permissions
scoreboard players enable @a[x=0] LobbyWarp
scoreboard players reset @a[predicate=!custom:team/lobby] LobbyWarp

#Teleports
execute as @a[x=0,scores={LobbyWarp=1..}] unless function lobby:__bookwarp/try_teleport run scoreboard players reset @s LobbyWarp

#Cancel parkour
execute if predicate rr:has_parkour as @a[x=0,scores={LobbyWarp=1..},tag=inParkour] run tag @s add bookwarp.cancel_parkour
execute if predicate rr:has_parkour as @a[x=0,scores={LobbyWarp=1..},tag=bookwarp.cancel_parkour] run tag @s remove inParkour
execute if predicate rr:has_parkour as @a[x=0,scores={LobbyWarp=1..},tag=bookwarp.cancel_parkour] run function custom:reset_inventory
execute if predicate rr:has_parkour as @a[x=0,scores={LobbyWarp=1..},tag=bookwarp.cancel_parkour] run tellraw @s {color:"red",text:"You used a Lobby Warp, so your Parkour run was canceled."}
execute if predicate rr:has_parkour run tag @a[x=0,tag=bookwarp.cancel_parkour] remove bookwarp.cancel_parkour

#Night vision
execute as @a[scores={LobbyWarp=1..}] at @s if predicate custom:in_parkour_area run effect clear @s night_vision
execute as @a[scores={LobbyWarp=1..}] at @s unless predicate custom:in_parkour_area run effect give @s night_vision infinite 0 true

#Sound and effects
execute as @a[x=0,scores={LobbyWarp=1..}] at @s run playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 2
execute as @a[x=0,scores={LobbyWarp=1..},tag=!hideParticles] at @s run particle end_rod ~ ~1 ~ 0 0 0 0.1 100 force @s
execute as @a[x=0,scores={LobbyWarp=1..},tag=!hideParticles] at @s run particle flash{color:0xFFFFFF} ~ ~1 ~ 0 0 0 0 5 force @s

#Reset score
scoreboard players reset @a[x=0] LobbyWarp
