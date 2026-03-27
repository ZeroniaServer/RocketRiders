#######################################################
## PARKOUR: The system behind the Lobby Parkour Area ##
#######################################################

##Start parkour
execute as @a[x=0,tag=inParkour,gamemode=!adventure] run gamemode adventure

execute as @a[x=0,predicate=custom:team/lobby,tag=!inParkour] at @s positioned ~ ~1 ~ if entity @e[type=marker,tag=parkourStart,limit=1,distance=..5] run tag @s add keepInventory
execute as @a[x=0,predicate=custom:team/lobby,tag=startParkour] at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~ ~ 1 1
execute as @a[x=0,predicate=custom:team/lobby,tag=startParkour] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.3
execute as @a[x=0,predicate=custom:team/lobby,tag=startParkour,tag=!hideParticles] at @s run particle firework ~ ~1 ~ 0 0 0 0.1 100 force @s
execute as @a[x=0,predicate=custom:team/lobby,tag=startParkour] run tag @s add inParkour
execute as @a[x=0,predicate=custom:team/lobby,tag=startParkour] run tag @s remove startParkour
execute as @a[x=0,predicate=custom:team/lobby] at @s positioned ~ ~1 ~ unless entity @e[type=marker,tag=parkourStart,limit=1,distance=..5] run tag @s remove keepInventory

##Finish parkour
execute as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour] at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~ ~ 1 1
execute as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.1
execute as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.3
execute as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!hideParticles] at @s run particle firework ~ ~1 ~ 0 0 0 0.1 100 force @s

#Remove tags and clear inventory
execute as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=inParkour] run function custom:reset_inventory
title @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=inParkour] actionbar ""
tag @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=inParkour] remove inParkour
tag @a[x=0,predicate=custom:team/lobby,tag=finishedParkour] remove finishedParkour

##Invisible players within range
execute as @a[x=0,predicate=custom:team/lobby,tag=inParkour] at @s if entity @a[predicate=custom:team/lobby,tag=inParkour,distance=0.0001..8] run effect give @s invisibility infinite 100 true
execute as @a[x=0,predicate=custom:team/lobby,tag=inParkour] at @s unless entity @a[predicate=custom:team/lobby,tag=inParkour,distance=0.0001..8] run effect clear @s invisibility
effect clear @a[x=0,predicate=custom:team/lobby,tag=!inParkour] invisibility

##Boots (excluding rank)
execute as @a[x=0,predicate=custom:team/lobby,tag=inParkour] run function custom:update_armor

##Safety features
#Only lobby players in Parkour mode
effect clear @a[x=0,predicate=!custom:team/lobby,tag=inParkour] invisibility
title @a[x=0,predicate=!custom:team/lobby,tag=inParkour] actionbar ""
tag @a[x=0,predicate=!custom:team/lobby,tag=inParkour] remove inParkour
#Don't let non-Parkour players on floor (warp back to parkour start) -- maybe remove?
execute as @a[x=0,predicate=custom:team/lobby,tag=!inParkour] run scoreboard players set @a[x=0,predicate=custom:standing_on_parkour_floor] LobbyWarp 7

##Return to Lobby Pad
execute if predicate custom:periodic_tick/3 run particle minecraft:falling_dust{block_state:"minecraft:green_concrete"} 67.5 203.0 118.5 0.5 1 0.5 0.1 5 force @a[x=0,tag=!hideParticles,predicate=!custom:in_arena]
execute as @a[x=67.5,y=201.0,z=118.5,distance=..2,predicate=custom:team/lobby] run trigger LobbyWarp set 1
