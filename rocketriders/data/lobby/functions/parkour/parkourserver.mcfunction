#######################################################
## PARKOUR: The system behind the Lobby Parkour Area ##
#######################################################

##Start parkour
execute as @a[team=Lobby,tag=!inParkour] at @s positioned ~ ~1 ~ if entity @e[tag=parkourStart,type=area_effect_cloud,limit=1,distance=..1.2] run tag @s add startParkour
execute as @a[team=Lobby,tag=startParkour] at @s run playsound minecraft:entity.firework_rocket.twinkle_far player @s ~ ~ ~ 1 1
execute as @a[team=Lobby,tag=startParkour] at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.3
execute as @a[team=Lobby,tag=startParkour] at @s run particle firework ~ ~1 ~ 0 0 0 0.1 100 force @s
execute as @a[team=Lobby,tag=startParkour] run tag @s add inParkour
execute as @a[team=Lobby,tag=startParkour] run tag @s remove startParkour

##Checkpoints
scoreboard players add @a[team=Lobby,tag=inParkour] checkpoint 0

#Reach checkpoint
execute as @a[team=Lobby,tag=inParkour,scores={checkpoint=0}] at @s positioned ~ ~1 ~ if entity @e[tag=parkourC1,type=area_effect_cloud,limit=1,distance=..1.2] run tag @s add earnCheckpoint
execute as @a[team=Lobby,tag=inParkour,scores={checkpoint=1}] at @s positioned ~ ~1 ~ if entity @e[tag=parkourC2,type=area_effect_cloud,limit=1,distance=..1.2] run tag @s add earnCheckpoint
execute as @a[team=Lobby,tag=inParkour,scores={checkpoint=2}] at @s positioned ~ ~1 ~ if entity @e[tag=parkourC3,type=area_effect_cloud,limit=1,distance=..1.2] run tag @s add earnCheckpoint

#Visual/Sound effects
execute as @a[team=Lobby,tag=earnCheckpoint] run scoreboard players add @s checkpoint 1
execute as @a[team=Lobby,tag=earnCheckpoint] at @s run playsound minecraft:entity.firework_rocket.twinkle_far player @s ~ ~ ~ 1 1
execute as @a[team=Lobby,tag=earnCheckpoint] at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.3
execute as @a[team=Lobby,tag=earnCheckpoint] at @s run particle firework ~ ~1 ~ 0 0 0 0.1 100 force @s
tag @a[team=Lobby,tag=earnCheckpoint] remove earnCheckpoint

##Return to checkpoint
#If you fall on the floor, you return to your last checkpoint automatically
execute as @a[team=Lobby,tag=inParkour] at @s if block ~ ~-1 ~ black_concrete run tag @s[y=184,dy=16] add returnCheckpoint
execute as @a[team=Lobby,tag=inParkour] at @s if block ~-0.3 ~-1 ~ black_concrete run tag @s[y=184,dy=16] add returnCheckpoint
execute as @a[team=Lobby,tag=inParkour] at @s if block ~0.3 ~-1 ~ black_concrete run tag @s[y=184,dy=16] add returnCheckpoint
execute as @a[team=Lobby,tag=inParkour] at @s if block ~ ~-1 ~-0.3 black_concrete run tag @s[y=184,dy=16] add returnCheckpoint
execute as @a[team=Lobby,tag=inParkour] at @s if block ~ ~-1 ~0.3 black_concrete run tag @s[y=184,dy=16] add returnCheckpoint
execute as @a[team=Lobby,tag=inParkour] at @s if block ~0.3 ~-1 ~0.3 black_concrete run tag @s[y=184,dy=16] add returnCheckpoint
execute as @a[team=Lobby,tag=inParkour] at @s if block ~-0.3 ~-1 ~0.3 black_concrete run tag @s[y=184,dy=16] add returnCheckpoint
execute as @a[team=Lobby,tag=inParkour] at @s if block ~-0.3 ~-1 ~-0.3 black_concrete run tag @s[y=184,dy=16] add returnCheckpoint
execute as @a[team=Lobby,tag=inParkour] at @s if block ~0.3 ~-1 ~-0.3 black_concrete run tag @s[y=184,dy=16] add returnCheckpoint
execute as @a[team=Lobby,tag=inParkour,tag=returnCheckpoint,scores={checkpoint=0}] run tp @s -31 193 17 0 0
execute as @a[team=Lobby,tag=inParkour,tag=returnCheckpoint,scores={checkpoint=1}] run tp @s -28 196 68 0 0
execute as @a[team=Lobby,tag=inParkour,tag=returnCheckpoint,scores={checkpoint=2}] run tp @s -13 199 58 -90 0
execute as @a[team=Lobby,tag=inParkour,tag=returnCheckpoint,scores={checkpoint=3}] run tp @s -16 199 93 90 0
#execute as @a[team=Lobby,tag=inParkour,tag=returnCheckpoint] at @s run playsound minecraft:entity.zombie_villager.converted player @s ~ ~ ~ 1 2
execute as @a[team=Lobby,tag=inParkour,tag=returnCheckpoint] run tag @s remove returnCheckpoint

##End parkour
execute as @a[team=Lobby,tag=inParkour] at @s positioned ~ ~1 ~ if entity @e[tag=parkourEnd,type=area_effect_cloud,limit=1,distance=..1.2] run tag @s add finishedParkour

#Visual/Sound effects
execute as @a[team=Lobby,tag=finishedParkour] at @s run playsound minecraft:entity.firework_rocket.twinkle_far player @s ~ ~ ~ 1 1
execute as @a[team=Lobby,tag=finishedParkour] at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.1
execute as @a[team=Lobby,tag=finishedParkour] at @s run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1.3
execute as @a[team=Lobby,tag=finishedParkour] at @s run particle firework ~ ~1 ~ 0 0 0 0.1 100 force @s

#Remove tags
execute as @a[team=Lobby,tag=finishedParkour] run tag @s remove inParkour
execute as @a[team=Lobby,tag=finishedParkour] run tag @s remove cheatedParkour
execute as @a[team=Lobby,tag=finishedParkour] run tag @s remove finishedParkour

##Invisible players within range
execute as @a[team=Lobby,tag=inParkour] at @s if entity @a[team=Lobby,tag=inParkour,distance=0.0001..8] run effect give @s invisibility 1000000 255 true
execute as @a[team=Lobby,tag=inParkour] at @s unless entity @a[team=Lobby,tag=inParkour,distance=0.0001..8] run effect clear @s invisibility
effect clear @a[team=Lobby,tag=!inParkour] invisibility

##Boots (non-duel mode)
execute unless entity @e[tag=rr_duel,type=armor_stand,limit=1] run replaceitem entity @a[team=Lobby,tag=inParkour] armor.feet iron_boots{display:{Name:"{\"text\":\"Parkour Boots\",\"color\":\"dark_green\",\"bold\":\"true\",\"italic\":\"false\"}"},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:7}
execute as @s[tag=noYZELO] run replaceitem entity @a[team=Lobby,tag=inParkour] armor.feet iron_boots{display:{Name:"{\"text\":\"Parkour Boots\",\"color\":\"dark_green\",\"bold\":\"true\",\"italic\":\"false\"}"},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:7}

##Safety features
#Only lobby players in Parkour mode
effect clear @a[team=!Lobby,tag=inParkour] invisibility
tag @a[team=!Lobby,tag=inParkour] remove inParkour
#Don't let non-Parkour players on floor (warp back to parkour start)
execute as @a[team=Lobby,tag=!inParkour] at @s if block ~ ~-1 ~ black_concrete run scoreboard players set @s[y=184,dy=16] LobbyWarp 7
execute as @a[team=Lobby,tag=!inParkour] at @s if block ~-0.3 ~-1 ~ black_concrete run scoreboard players set @s[y=184,dy=16] LobbyWarp 7
execute as @a[team=Lobby,tag=!inParkour] at @s if block ~0.3 ~-1 ~ black_concrete run scoreboard players set @s[y=184,dy=16] LobbyWarp 7
execute as @a[team=Lobby,tag=!inParkour] at @s if block ~ ~-1 ~-0.3 black_concrete run scoreboard players set @s[y=184,dy=16] LobbyWarp 7
execute as @a[team=Lobby,tag=!inParkour] at @s if block ~ ~-1 ~0.3 black_concrete run scoreboard players set @s[y=184,dy=16] LobbyWarp 7
execute as @a[team=Lobby,tag=!inParkour] at @s if block ~0.3 ~-1 ~0.3 black_concrete run scoreboard players set @s[y=184,dy=16] LobbyWarp 7
execute as @a[team=Lobby,tag=!inParkour] at @s if block ~-0.3 ~-1 ~0.3 black_concrete run scoreboard players set @s[y=184,dy=16] LobbyWarp 7
execute as @a[team=Lobby,tag=!inParkour] at @s if block ~-0.3 ~-1 ~-0.3 black_concrete run scoreboard players set @s[y=184,dy=16] LobbyWarp 7
execute as @a[team=Lobby,tag=!inParkour] at @s if block ~0.3 ~-1 ~-0.3 black_concrete run scoreboard players set @s[y=184,dy=16] LobbyWarp 7

##Reset objectives/tags for non-parkour players
scoreboard players reset @a[tag=!inParkour] checkpoint
scoreboard players reset @a[tag=!inParkour] chkpntCooldown
scoreboard players reset @a[tag=!inParkour] parkourTimer
scoreboard players reset @a[tag=!inParkour] parkourMins
scoreboard players reset @a[tag=!inParkour] parkourSecs
scoreboard players reset @a[tag=!inParkour] parkourDeci
scoreboard players reset @a[tag=!inParkour] parkourDeci2
scoreboard players reset @a[tag=!inParkour] finalParkourTime
tag @a[tag=!inParkour] remove onResetPlate
tag @a[tag=!inParkour] remove timeReset

##Return to Lobby Pad
execute as @e[tag=parkourReturn,type=area_effect_cloud] at @s run particle falling_dust minecraft:green_concrete ~ ~2 ~ 0.5 1 0.5 0.1 5 force @a
execute as @e[tag=parkourReturn,type=area_effect_cloud] at @s positioned ~ ~ ~ as @a[team=Lobby,distance=..2] run trigger LobbyWarp set 1