######################################################
## NOVA ROCKET: A crossbow equipped with a firework ##
## that launches the enemy and explodes upon impact ##
######################################################

##General Nova Rocket functionality
#Removes Nova Rocket tags for dead players
tag @a[scores={respawn=1..}] remove YellowNovaNear
tag @a[scores={respawn=1..}] remove YellowNovaAttach
tag @a[scores={respawn=1..}] remove BlueNovaNear
tag @a[scores={respawn=1..}] remove BlueNovaAttach
scoreboard players reset @a[scores={respawn=1..}] novattach

#Creative mode support
execute as @a[team=Blue,scores={LaunchCrossbow=1..},gamemode=creative] at @s if entity @e[type=firework_rocket,distance=..5,limit=1,tag=!YellowNova,tag=!BlueNova] run scoreboard players add @s NovaShot 1
execute as @a[team=Yellow,scores={LaunchCrossbow=1..},gamemode=creative] at @s if entity @e[type=firework_rocket,distance=..5,limit=1,tag=!YellowNova,tag=!BlueNova] run scoreboard players add @s NovaShot 1
clear @a crossbow{Charged:0b,nova:1b}

#Identifies shot Nova Rockets and stores player UUID into their tracker score
execute as @a[scores={NovaShot=1..}] store result score @s UUIDTracker run data get entity @s UUID[0]
execute as @a[scores={NovaShot=1..}] at @s run setblock ~ 174 ~ oak_sign
execute as @a[team=Blue,scores={NovaShot=1..}] at @s run data merge block ~ 174 ~ {Text1:'{"text":""}',Text2:'["",{"selector":"@p[team=Blue,scores={NovaShot=1..}]"},{"text":"\'s Nova Rocket"}]'}
execute as @a[team=Yellow,scores={NovaShot=1..}] at @s run data merge block ~ 174 ~ {Text1:'{"text":""}',Text2:'["",{"selector":"@p[team=Yellow,scores={NovaShot=1..}]"},{"text":"\'s Nova Rocket"}]'}
execute as @a[team=Blue,scores={NovaShot=1..}] at @s run tag @e[type=firework_rocket,distance=..4,limit=1,tag=!YellowNova,tag=!BlueNova] add BlueNova
execute as @a[team=Blue,scores={NovaShot=1..}] at @s run data modify entity @e[type=firework_rocket,tag=BlueNova,limit=1,sort=nearest,distance=..5] CustomName set from block ~ 174 ~ Text2
execute as @a[team=Blue,scores={NovaShot=1..}] at @s store result score @e[type=firework_rocket,tag=BlueNova,distance=..4,limit=1] UUIDTracker run scoreboard players get @s UUIDTracker
execute as @a[team=Yellow,scores={NovaShot=1..}] at @s run tag @e[type=firework_rocket,distance=..4,limit=1,tag=!YellowNova,tag=!BlueNova] add YellowNova
execute as @a[team=Yellow,scores={NovaShot=1..}] at @s run data modify entity @e[type=firework_rocket,tag=YellowNova,limit=1,sort=nearest,distance=..5] CustomName set from block ~ 174 ~ Text2
execute as @a[team=Yellow,scores={NovaShot=1..}] at @s store result score @e[type=firework_rocket,tag=YellowNova,distance=..4,limit=1] UUIDTracker run scoreboard players get @s UUIDTracker
execute as @a[team=Blue,scores={NovaShot=1..}] at @s run fill ~ 173 ~ ~ 175 ~ air replace oak_sign
execute as @a[team=Yellow,scores={NovaShot=1..}] at @s run fill ~ 173 ~ ~ 175 ~ air replace oak_sign
scoreboard players reset @a[scores={NovaShot=1..}] NovaShot

#Identifies players near enemy Nova Rockets
execute as @s[tag=!customNova] as @a[team=Blue] at @s if entity @e[type=firework_rocket,distance=..4,limit=1,tag=YellowNova] run tag @s add YellowNovaNear
execute as @s[tag=!customNova] as @a[team=Yellow] at @s if entity @e[type=firework_rocket,distance=..4,limit=1,tag=BlueNova] run tag @s add BlueNovaNear
execute as @s[tag=!customNova] as @a[team=Blue] at @s if entity @e[type=marker,distance=..4,limit=1,tag=yellownovatracker] run tag @s add YellowNovaNear
execute as @s[tag=!customNova] as @a[team=Yellow] at @s if entity @e[type=marker,distance=..4,limit=1,tag=bluenovatracker] run tag @s add BlueNovaNear
scoreboard players add @a[tag=YellowNovaNear] NovaNear 1
scoreboard players add @a[tag=BlueNovaNear] NovaNear 1
execute as @s[tag=!customNova] as @a[team=Blue,tag=YellowNovaNear,scores={NovaNear=4..}] at @s unless entity @e[type=firework_rocket,distance=..4,limit=1,tag=YellowNova] run tag @s remove YellowNovaNear
execute as @s[tag=!customNova] as @a[team=Blue,tag=!YellowNovaNear,scores={NovaNear=4..}] run scoreboard players reset @s NovaNear
execute as @s[tag=!customNova] as @a[team=Yellow,tag=BlueNovaNear,scores={NovaNear=4..}] at @s unless entity @e[type=firework_rocket,distance=..4,limit=1,tag=BlueNova] run tag @s remove BlueNovaNear
execute as @s[tag=!customNova] as @a[team=Yellow,tag=!BlueNovaNear,scores={NovaNear=4..}] run scoreboard players reset @s NovaNear

#Nova Rocket flight and tracker entity
scoreboard players add @e[type=firework_rocket,tag=BlueNova] novatimer 0
scoreboard players add @e[type=firework_rocket,tag=YellowNova] novatimer 0
execute as @e[type=firework_rocket,tag=BlueNova,scores={novatimer=0}] at @s run summon marker ~ ~ ~ {Tags:["novatracker","bluenovatracker"]}
execute as @e[type=firework_rocket,tag=BlueNova,scores={novatimer=0}] at @s store result score @e[type=marker,tag=bluenovatracker,distance=..3,limit=1] UUIDTracker run scoreboard players get @s UUIDTracker
execute as @e[type=firework_rocket,tag=BlueNova,scores={novatimer=0}] at @s run data modify entity @e[type=marker,tag=bluenovatracker,limit=1,sort=nearest,distance=..5] CustomName set from entity @s CustomName
execute as @e[type=firework_rocket,tag=YellowNova,scores={novatimer=0}] at @s run summon marker ~ ~ ~ {Tags:["novatracker","yellownovatracker"]}
execute as @e[type=firework_rocket,tag=YellowNova,scores={novatimer=0}] at @s store result score @e[type=marker,tag=yellownovatracker,distance=..3,limit=1] UUIDTracker run scoreboard players get @s UUIDTracker
execute as @e[type=firework_rocket,tag=YellowNova,scores={novatimer=0}] at @s run data modify entity @e[type=marker,tag=yellownovatracker,limit=1,sort=nearest,distance=..5] CustomName set from entity @s CustomName
execute as @e[type=marker,tag=novatracker] at @s at @e[type=firework_rocket,scores={novatimer=1..},limit=1,sort=nearest,distance=..3] run tp @s ~ ~ ~ ~ ~
scoreboard players add @e[type=firework_rocket,tag=BlueNova] novatimer 1
scoreboard players add @e[type=firework_rocket,tag=YellowNova] novatimer 1
scoreboard players add @e[type=marker,tag=novatracker] novatimer 1

#Nova Rockets explode Canopies
execute as @a[tag=BlueNovaAttach] at @s if entity @e[type=marker,tag=YellowPlatform,distance=..3,limit=1] run summon marker ~ ~ ~ {Tags:["bluenovatracker","CanopyIsGone"]}
execute as @a[tag=YellowNovaAttach] at @s if entity @e[type=marker,tag=BluePlatform,distance=..3,limit=1] run summon marker ~ ~ ~ {Tags:["yellownovatracker","CanopyIsGone"]}
execute as @a[tag=BlueNovaAttach] at @s if entity @e[type=marker,tag=YellowPlatform,distance=..3,limit=1] run tag @e[type=marker,tag=YellowPlatform,distance=..3,limit=1] add killCanopy
execute as @a[tag=YellowNovaAttach] at @s if entity @e[type=marker,tag=BluePlatform,distance=..3,limit=1] run tag @e[type=marker,tag=BluePlatform,distance=..3,limit=1] add killCanopy
execute as @e[type=marker,tag=bluenovatracker,tag=!NovaLost] at @s if entity @e[type=marker,tag=YellowPlatform,distance=..5,limit=1] run tag @s add CanopyIsGone
execute as @e[type=marker,tag=yellownovatracker,tag=!NovaLost] at @s if entity @e[type=marker,tag=BluePlatform,distance=..5,limit=1] run tag @s add CanopyIsGone
execute as @e[type=marker,tag=bluenovatracker,tag=!NovaLost] at @s if entity @e[type=marker,tag=YellowPlatform,distance=..5,limit=1] run tag @e[type=marker,tag=YellowPlatform,distance=..5,limit=1] add killCanopy
execute as @e[type=marker,tag=yellownovatracker,tag=!NovaLost] at @s if entity @e[type=marker,tag=BluePlatform,distance=..5,limit=1] run tag @e[type=marker,tag=BluePlatform,distance=..5,limit=1] add killCanopy
execute as @e[type=marker,tag=bluenovatracker,tag=CanopyIsGone,tag=!NovaLost] at @s run kill @e[type=firework_rocket,tag=BlueNova,limit=1,sort=nearest,distance=..5]
execute as @e[type=marker,tag=yellownovatracker,tag=CanopyIsGone,tag=!NovaLost] at @s run kill @e[type=firework_rocket,tag=YellowNova,limit=1,sort=nearest,distance=..5]
execute as @e[type=marker,tag=CanopyIsGone,tag=yellownovatracker,tag=!NovaLost] at @s as @e[type=marker,tag=BluePlatform,distance=..5,limit=1,sort=nearest] run tag @s add killCanopy
execute as @e[type=marker,tag=CanopyIsGone,tag=bluenovatracker,tag=!NovaLost] at @s as @e[type=marker,tag=YellowPlatform,distance=..5,limit=1,sort=nearest] run tag @s add killCanopy
execute as @e[type=marker,tag=CanopyIsGone,tag=!NovaLost] at @s run tag @a[team=!Lobby,team=!Spectator,distance=..10] add UtilKilled
execute as @e[type=marker,tag=CanopyIsGone,tag=yellownovatracker,tag=!bluenovatracker,tag=!NovaLost] at @s as @e[type=marker,tag=BluePlatform,distance=..5,limit=1,sort=nearest] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:3,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;14602026,15435844]}]}}}}
execute as @e[type=marker,tag=CanopyIsGone,tag=yellownovatracker,tag=bluenovatracker,tag=!NovaLost] at @s as @e[type=marker,tag=BluePlatform,distance=..5,limit=1,sort=nearest] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:3,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;2437522,2651799]}]}}}}
execute as @e[type=marker,tag=CanopyIsGone,tag=bluenovatracker,tag=!NovaLost] at @s as @e[type=marker,tag=YellowPlatform,distance=..5,limit=1,sort=nearest] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:3,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;2437522,2651799]}]}}}}
execute if entity @s[tag=!Explosive] as @e[type=marker,tag=CanopyIsGone,tag=yellownovatracker,tag=!NovaLost] at @s as @e[type=marker,tag=BluePlatform,distance=..5,limit=1,sort=nearest] at @s run summon creeper ~ ~2 ~ {Tags:["UtilKilled"],NoGravity:1b,CustomName:'{"text":"a Nova Rocket"}',ExplosionRadius:5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=Explosive] as @e[type=marker,tag=CanopyIsGone,tag=yellownovatracker,tag=!NovaLost] at @s as @e[type=marker,tag=BluePlatform,distance=..5,limit=1,sort=nearest] at @s run summon creeper ~ ~2 ~ {Tags:["UtilKilled"],NoGravity:1b,CustomName:'{"text":"a Nova Rocket"}',ExplosionRadius:7,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=!Explosive] as @e[type=marker,tag=CanopyIsGone,tag=bluenovatracker,tag=!NovaLost] at @s as @e[type=marker,tag=YellowPlatform,distance=..5,limit=1,sort=nearest] at @s run summon creeper ~ ~2 ~ {Tags:["UtilKilled"],NoGravity:1b,CustomName:'{"text":"a Nova Rocket"}',ExplosionRadius:5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=Explosive] as @e[type=marker,tag=CanopyIsGone,tag=bluenovatracker,tag=!NovaLost] at @s as @e[type=marker,tag=YellowPlatform,distance=..5,limit=1,sort=nearest] at @s run summon creeper ~ ~2 ~ {Tags:["UtilKilled"],NoGravity:1b,CustomName:'{"text":"a Nova Rocket"}',ExplosionRadius:7,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute as @e[type=marker,tag=CanopyIsGone,tag=!NovaLost] at @s run tag @e[type=creeper,distance=..10,limit=1] add UtilKilled
execute as @e[type=marker,tag=CanopyIsGone,tag=!NovaLost] at @s run tag @e[type=tnt,distance=..8] add UtilKilled
execute as @e[type=marker,tag=CanopyIsGone,tag=!NovaLost] at @s store result score @e[type=creeper,limit=1,sort=nearest,distance=..8] UUIDTracker run scoreboard players get @s UUIDTracker
execute as @e[type=marker,tag=CanopyIsGone,tag=!NovaLost] at @s store result score @e[type=creeper,limit=1,sort=nearest,distance=..8] KillerUUID run scoreboard players get @s UUIDTracker
execute as @e[type=marker,tag=CanopyIsGone,tag=!NovaLost] at @s store result score @a[team=!Spectator,team=!Lobby,distance=..8] KillerUUID run scoreboard players get @s UUIDTracker
execute as @e[type=marker,tag=CanopyIsGone,tag=!NovaLost] at @s run data modify entity @e[type=creeper,limit=1,sort=nearest,distance=..8] CustomName set from entity @s CustomName
execute as @e[type=marker,tag=CanopyIsGone,tag=!NovaLost] at @s run scoreboard players set @s novatimer 31
execute as @e[type=marker,tag=CanopyIsGone,tag=!NovaLost] at @s run tag @s add NovaLost

#Nova Rocket collision
execute as @e[type=firework_rocket,tag=BlueNova] at @s if entity @e[type=firework_rocket,tag=YellowNova,distance=..2] run tag @e[type=firework_rocket,tag=YellowNova,distance=..2,limit=1] add CollideNova
execute as @e[type=firework_rocket,tag=BlueNova] at @s if entity @e[type=firework_rocket,tag=YellowNova,distance=..2] run tag @s add CollideNova
execute as @e[type=firework_rocket,tag=BlueNova] at @s if entity @e[type=firework_rocket,tag=YellowNova,distance=..2] run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;4312372],FadeColors:[I;3887386]}]}}}}
execute as @e[type=firework_rocket,tag=BlueNova] at @s if entity @e[type=firework_rocket,tag=YellowNova,distance=..2] run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:'{"text":"a Nova Rocket Collision"}',ExplosionRadius:6,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute as @e[type=firework_rocket,tag=CollideNova] run kill @s

#Explosion/particle effects
execute as @e[type=firework_rocket,tag=BlueNova,scores={novatimer=1..10}] at @s run data merge entity @s {LifeTime:30,tag:{Fireworks:{Explosions:[{Type:4}]}}}
execute as @e[type=firework_rocket,tag=YellowNova,scores={novatimer=1..10}] at @s run data merge entity @s {LifeTime:30,tag:{Fireworks:{Explosions:[{Type:4}]}}}
execute as @e[type=firework_rocket,tag=BlueNova] at @s run particle minecraft:falling_dust lapis_block ~ ~0.2 ~ 0 0 0 1 2
execute as @e[type=firework_rocket,tag=YellowNova] at @s run particle minecraft:falling_dust gold_block ~ ~0.2 ~ 0 0 0 1 2

##Yellow Nova Rocket functionality
#Static
execute if entity @s[tag=!Explosive] as @e[type=marker,tag=yellownovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=YellowNova,distance=..3,limit=1,sort=nearest] run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:'{"text":"a Nova Rocket"}',ExplosionRadius:2,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=Explosive] as @e[type=marker,tag=yellownovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=YellowNova,distance=..3,limit=1,sort=nearest] run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:'{"text":"a Nova Rocket"}',ExplosionRadius:5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute as @e[type=marker,tag=yellownovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=YellowNova,distance=..3,limit=1,sort=nearest] store result score @e[type=creeper,limit=1,sort=nearest,distance=..5] KillerUUID run scoreboard players get @s UUIDTracker
execute as @e[type=marker,tag=yellownovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=YellowNova,distance=..3,limit=1,sort=nearest] run data modify entity @e[type=creeper,limit=1,sort=nearest,distance=..5] CustomName set from entity @s CustomName
execute as @e[type=marker,tag=yellownovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=YellowNova,distance=..3,limit=1,sort=nearest] run tag @a[team=!Lobby,team=!Spectator,distance=..10] add UtilKilled
execute as @e[type=marker,tag=yellownovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=YellowNova,distance=..3,limit=1,sort=nearest] run tag @e[type=tnt,distance=..6] add UtilKilled
execute as @e[type=marker,tag=yellownovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=YellowNova,distance=..3,limit=1,sort=nearest] run tag @s add NovaLost
execute as @e[type=firework_rocket,tag=YellowNova,scores={novatimer=30}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:3,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;14602026,15435844]}]}}}}
execute as @e[type=firework_rocket,tag=YellowNova,scores={novatimer=30..}] at @s run tag @e[type=tnt,distance=..7] add UtilKilled
kill @e[type=firework_rocket,tag=YellowNova,scores={novatimer=33..}]

#Attach
scoreboard players add @a[tag=YellowNovaAttach] novattach 1
execute as @a[tag=YellowNovaAttach,scores={novattach=1}] at @s run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 2 1.2
execute as @a[tag=YellowNovaAttach,scores={novattach=1}] run effect give @s levitation 1 60 true
execute as @a[tag=YellowNovaAttach,scores={novattach=4..}] run effect clear @s levitation
execute as @a[tag=YellowNovaAttach,scores={novattach=15..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:3,Explosions:[{Type:2,Flicker:1,Trail:1,Colors:[I;14602026,15435844]}]}}}}
execute as @a[tag=YellowNovaAttach,scores={novattach=1..}] at @s run particle firework ~ ~ ~ 0 0 0 0.05 1 force
execute as @a[tag=YellowNovaAttach] run tag @s[scores={novattach=15..}] remove YellowNovaAttach

##Blue Nova Rocket Functionality
#Static
execute if entity @s[tag=!Explosive] as @e[type=marker,tag=bluenovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=BlueNova,distance=..3,limit=1,sort=nearest] run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:'{"text":"a Nova Rocket"}',ExplosionRadius:2,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=Explosive] as @e[type=marker,tag=bluenovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=BlueNova,distance=..3,limit=1,sort=nearest] run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:'{"text":"a Nova Rocket"}',ExplosionRadius:5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute as @e[type=marker,tag=bluenovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=BlueNova,distance=..3,limit=1,sort=nearest] store result score @e[type=creeper,limit=1,sort=nearest,distance=..5] KillerUUID run scoreboard players get @s UUIDTracker
execute as @e[type=marker,tag=bluenovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=BlueNova,distance=..3,limit=1,sort=nearest] run data modify entity @e[type=creeper,limit=1,sort=nearest,distance=..5] CustomName set from entity @s CustomName
execute as @e[type=marker,tag=bluenovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=BlueNova,distance=..3,limit=1,sort=nearest] run tag @a[team=!Lobby,team=!Spectator,distance=..10] add UtilKilled
execute as @e[type=marker,tag=bluenovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=BlueNova,distance=..3,limit=1,sort=nearest] run tag @e[type=tnt,distance=..6] add UtilKilled

execute as @e[type=marker,tag=bluenovatracker] at @s unless entity @e[type=firework_rocket,tag=BlueNova,distance=..3,limit=1,sort=nearest] run tag @s add NovaLost
execute as @e[type=firework_rocket,tag=BlueNova,scores={novatimer=30}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:3,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;2437522,2651799]}]}}}}
execute as @e[type=firework_rocket,tag=BlueNova,scores={novatimer=30..}] at @s run tag @e[type=tnt,distance=..7] add UtilKilled
kill @e[type=firework_rocket,tag=BlueNova,scores={novatimer=33..}]

#Nova lost timer
execute as @e[type=marker,tag=NovaLost] at @s run tag @e[type=tnt,distance=..7] add UtilKilled
scoreboard players add @e[type=marker,tag=NovaLost] CmdData 1
execute as @e[type=marker,tag=NovaLost] at @s store result score @e[type=tnt,distance=..5] UUIDTracker run scoreboard players get @s UUIDTracker
execute as @e[type=marker,tag=NovaLost] at @s store result score @e[type=tnt,distance=..5] KillerUUID run scoreboard players get @s UUIDTracker
execute as @e[type=marker,tag=NovaLost] at @s run function game:nametnt
kill @e[type=marker,tag=NovaLost,scores={CmdData=6..}]

#Add to score for tnt detection
execute as @e[type=firework_rocket,scores={novatimer=30..}] at @s store result score @e[type=tnt,distance=..6] KillerUUID run scoreboard players get @s UUIDTracker

#Attach
scoreboard players add @a[tag=BlueNovaAttach] novattach 1
execute as @a[tag=BlueNovaAttach,scores={novattach=1}] at @s run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 2 1.2
execute as @a[tag=BlueNovaAttach,scores={novattach=1}] run effect give @s levitation 1 60 true
execute as @a[tag=BlueNovaAttach,scores={novattach=4..}] run effect clear @s levitation
execute as @a[tag=BlueNovaAttach,scores={novattach=15..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:3,Explosions:[{Type:2,Flicker:1,Trail:1,Colors:[I;2437522,2651799]}]}}}}
execute as @a[tag=BlueNovaAttach,scores={novattach=1..}] at @s run particle firework ~ ~ ~ 0 0 0 0.05 1 force
execute as @a[tag=BlueNovaAttach] run tag @s[scores={novattach=15..}] remove BlueNovaAttach