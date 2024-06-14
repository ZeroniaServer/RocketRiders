#######################################################
## PARKOUR: The system behind the Lobby Parkour Area ##
#######################################################

##Start parkour
execute as @a[x=0,tag=inParkour,gamemode=!adventure] run gamemode adventure

execute as @a[x=0,team=Lobby,tag=!inParkour] at @s positioned ~ ~1 ~ if entity @e[type=marker,tag=parkourStart,limit=1,distance=..5] run tag @s add keepInventory
execute as @a[x=0,team=Lobby,tag=startParkour] at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~ ~ 1 1
execute as @a[x=0,team=Lobby,tag=startParkour] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.3
execute as @a[x=0,team=Lobby,tag=startParkour,tag=!hideParticles] at @s run particle firework ~ ~1 ~ 0 0 0 0.1 100 force @s
execute as @a[x=0,team=Lobby,tag=startParkour] run tag @s add inParkour
execute as @a[x=0,team=Lobby,tag=startParkour] run tag @s remove startParkour
execute as @a[x=0,team=Lobby] at @s positioned ~ ~1 ~ unless entity @e[type=marker,tag=parkourStart,limit=1,distance=..5] run tag @s remove keepInventory

##Concrete detection
execute as @a[x=0,team=Lobby] run tag @s remove onConcrete
execute as @a[x=0,team=Lobby] at @s if block ~ ~-1 ~ black_concrete run tag @s[y=184,dy=16] add onConcrete
execute as @a[x=0,team=Lobby] at @s if block ~-0.3 ~-1 ~ black_concrete run tag @s[y=184,dy=16] add onConcrete
execute as @a[x=0,team=Lobby] at @s if block ~0.3 ~-1 ~ black_concrete run tag @s[y=184,dy=16] add onConcrete
execute as @a[x=0,team=Lobby] at @s if block ~ ~-1 ~-0.3 black_concrete run tag @s[y=184,dy=16] add onConcrete
execute as @a[x=0,team=Lobby] at @s if block ~ ~-1 ~0.3 black_concrete run tag @s[y=184,dy=16] add onConcrete
execute as @a[x=0,team=Lobby] at @s if block ~0.3 ~-1 ~0.3 black_concrete run tag @s[y=184,dy=16] add onConcrete
execute as @a[x=0,team=Lobby] at @s if block ~-0.3 ~-1 ~0.3 black_concrete run tag @s[y=184,dy=16] add onConcrete
execute as @a[x=0,team=Lobby] at @s if block ~-0.3 ~-1 ~-0.3 black_concrete run tag @s[y=184,dy=16] add onConcrete
execute as @a[x=0,team=Lobby] at @s if block ~0.3 ~-1 ~-0.3 black_concrete run tag @s[y=184,dy=16] add onConcrete

##Finish parkour
execute as @a[x=0,team=Lobby,tag=finishedParkour] at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~ ~ 1 1
execute as @a[x=0,team=Lobby,tag=finishedParkour] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.1
execute as @a[x=0,team=Lobby,tag=finishedParkour] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.3
execute as @a[x=0,team=Lobby,tag=finishedParkour,tag=!hideParticles] at @s run particle firework ~ ~1 ~ 0 0 0 0.1 100 force @s

#Remove tags and clear inventory
execute as @a[x=0,team=Lobby,tag=finishedParkour] run clear @s
execute as @a[x=0,team=Lobby,tag=finishedParkour] run tag @s remove inParkour
execute as @a[x=0,team=Lobby,tag=finishedParkour] run tag @s remove finishedParkour

##Invisible players within range
execute as @a[x=0,team=Lobby,tag=inParkour] at @s if entity @a[team=Lobby,tag=inParkour,distance=0.0001..8] run effect give @s invisibility infinite 100 true
execute as @a[x=0,team=Lobby,tag=inParkour] at @s unless entity @a[team=Lobby,tag=inParkour,distance=0.0001..8] run effect clear @s invisibility
effect clear @a[x=0,team=Lobby,tag=!inParkour] invisibility

##Boots (non-duel mode)
execute unless entity @e[x=0,type=armor_stand,tag=rr_duel,limit=1] as @a[x=0,team=Lobby,tag=inParkour] unless items entity @s armor.feet iron_boots run item replace entity @s armor.feet with iron_boots[custom_name='{"text":"Parkour Boots","color":"dark_green","bold":true,"italic":false}',trim={material:"minecraft:emerald",pattern:"minecraft:wayfinder"},enchantments={show_in_tooltip:0b},attribute_modifiers={show_in_tooltip:0b},unbreakable={show_in_tooltip:0b}]
execute if entity @s[tag=noYZELO] as @a[x=0,team=Lobby,tag=inParkour] unless items entity @s armor.feet iron_boots run item replace entity @s armor.feet with iron_boots[custom_name='{"text":"Parkour Boots","color":"dark_green","bold":true,"italic":false}',trim={material:"minecraft:emerald",pattern:"minecraft:wayfinder"},enchantments={show_in_tooltip:0b},attribute_modifiers={show_in_tooltip:0b},unbreakable={show_in_tooltip:0b}]

##Safety features
#Only lobby players in Parkour mode
effect clear @a[x=0,team=!Lobby,tag=inParkour] invisibility
tag @a[x=0,team=!Lobby,tag=inParkour] remove inParkour
#Don't let non-Parkour players on floor (warp back to parkour start) -- maybe remove?
execute as @a[x=0,team=Lobby,tag=!inParkour] at @s if block ~ ~-1 ~ black_concrete run scoreboard players set @s[y=184,dy=16] LobbyWarp 7
execute as @a[x=0,team=Lobby,tag=!inParkour] at @s if block ~-0.3 ~-1 ~ black_concrete run scoreboard players set @s[y=184,dy=16] LobbyWarp 7
execute as @a[x=0,team=Lobby,tag=!inParkour] at @s if block ~0.3 ~-1 ~ black_concrete run scoreboard players set @s[y=184,dy=16] LobbyWarp 7
execute as @a[x=0,team=Lobby,tag=!inParkour] at @s if block ~ ~-1 ~-0.3 black_concrete run scoreboard players set @s[y=184,dy=16] LobbyWarp 7
execute as @a[x=0,team=Lobby,tag=!inParkour] at @s if block ~ ~-1 ~0.3 black_concrete run scoreboard players set @s[y=184,dy=16] LobbyWarp 7
execute as @a[x=0,team=Lobby,tag=!inParkour] at @s if block ~0.3 ~-1 ~0.3 black_concrete run scoreboard players set @s[y=184,dy=16] LobbyWarp 7
execute as @a[x=0,team=Lobby,tag=!inParkour] at @s if block ~-0.3 ~-1 ~0.3 black_concrete run scoreboard players set @s[y=184,dy=16] LobbyWarp 7
execute as @a[x=0,team=Lobby,tag=!inParkour] at @s if block ~-0.3 ~-1 ~-0.3 black_concrete run scoreboard players set @s[y=184,dy=16] LobbyWarp 7
execute as @a[x=0,team=Lobby,tag=!inParkour] at @s if block ~0.3 ~-1 ~-0.3 black_concrete run scoreboard players set @s[y=184,dy=16] LobbyWarp 7

##Return to Lobby Pad
execute as @e[x=0,type=area_effect_cloud,tag=parkourReturn] at @s if score $dust CmdData matches 1 run particle minecraft:falling_dust{block_state:"minecraft:green_concrete"} ~ ~2 ~ 0.5 1 0.5 0.1 5 force @a[x=0,tag=!hideParticles,predicate=!custom:belowroof]
execute as @e[x=0,type=area_effect_cloud,tag=parkourReturn] at @s positioned ~ ~ ~ as @a[team=Lobby,distance=..2] run trigger LobbyWarp set 1