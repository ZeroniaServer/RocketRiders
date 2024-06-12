######################################################
## NOVA ROCKET: A crossbow equipped with a firework ##
## that launches the enemy and explodes upon impact ##
######################################################

##General Nova Rocket functionality
#Creative mode support
execute as @a[x=0,team=Blue,scores={LaunchCrossbow=1..},gamemode=creative] at @s if entity @e[type=firework_rocket,distance=..5,limit=1,tag=!YellowNova,tag=!BlueNova] run scoreboard players add @s NovaShot 1
execute as @a[x=0,team=Yellow,scores={LaunchCrossbow=1..},gamemode=creative] at @s if entity @e[type=firework_rocket,distance=..5,limit=1,tag=!YellowNova,tag=!BlueNova] run scoreboard players add @s NovaShot 1
clear @a[x=0] crossbow[custom_data={nova:1b}]

#Identifies shot Nova Rockets and stores player UUID into their tracker score
execute as @a[x=0,scores={NovaShot=1..}] store result score @s UUIDTracker run data get entity @s UUID[0]
execute as @a[x=0,scores={NovaShot=1..}] at @s run setblock ~ 174 ~ oak_sign
execute as @a[x=0,team=Blue,scores={NovaShot=1..}] at @s run data modify block ~ 174 ~ front_text.messages[0] set value '["",{"selector":"@p[team=Blue,scores={NovaShot=1..}]"},{"text":"\'s Nova Rocket"}]'
execute as @a[x=0,team=Yellow,scores={NovaShot=1..}] at @s run data modify block ~ 174 ~ front_text.messages[0] set value '["",{"selector":"@p[team=Yellow,scores={NovaShot=1..}]"},{"text":"\'s Nova Rocket"}]'
execute as @a[x=0,team=Blue,scores={NovaShot=1..}] at @s run tag @e[type=firework_rocket,distance=..5,limit=1,tag=!YellowNova,tag=!BlueNova] add BlueNova
execute as @a[x=0,team=Blue,scores={NovaShot=1..}] at @s run data modify entity @e[type=firework_rocket,tag=BlueNova,limit=1,sort=nearest,distance=..5] CustomName set from block ~ 174 ~ front_text.messages[0]
execute as @a[x=0,team=Blue,scores={NovaShot=1..}] at @s store result score @e[type=firework_rocket,tag=BlueNova,distance=..5,limit=1] UUIDTracker run scoreboard players get @s UUIDTracker
execute as @a[x=0,team=Yellow,scores={NovaShot=1..}] at @s run tag @e[type=firework_rocket,distance=..5,limit=1,tag=!YellowNova,tag=!BlueNova] add YellowNova
execute as @a[x=0,team=Yellow,scores={NovaShot=1..}] at @s run data modify entity @e[type=firework_rocket,tag=YellowNova,limit=1,sort=nearest,distance=..5] CustomName set from block ~ 174 ~ front_text.messages[0]
execute as @a[x=0,team=Yellow,scores={NovaShot=1..}] at @s store result score @e[type=firework_rocket,tag=YellowNova,distance=..5,limit=1] UUIDTracker run scoreboard players get @s UUIDTracker
execute as @a[x=0,team=Blue,scores={NovaShot=1..}] at @s run fill ~ 173 ~ ~ 175 ~ air replace oak_sign
execute as @a[x=0,team=Yellow,scores={NovaShot=1..}] at @s run fill ~ 173 ~ ~ 175 ~ air replace oak_sign
scoreboard players reset @a[x=0,scores={NovaShot=1..}] NovaShot

#Identifies players near enemy Nova Rockets
execute if entity @s[tag=!customNova] as @a[x=0,team=Blue] at @s if entity @e[type=firework_rocket,distance=..4,limit=1,tag=YellowNova] run tag @s add YellowNovaNear
execute if entity @s[tag=!customNova] as @a[x=0,team=Yellow] at @s if entity @e[type=firework_rocket,distance=..4,limit=1,tag=BlueNova] run tag @s add BlueNovaNear
execute if entity @s[tag=!customNova] as @a[x=0,team=Blue] at @s if entity @e[type=marker,distance=..4,limit=1,tag=yellownovatracker] run tag @s add YellowNovaNear
execute if entity @s[tag=!customNova] as @a[x=0,team=Yellow] at @s if entity @e[type=marker,distance=..4,limit=1,tag=bluenovatracker] run tag @s add BlueNovaNear
scoreboard players add @a[x=0,tag=YellowNovaNear] NovaNear 1
scoreboard players add @a[x=0,tag=BlueNovaNear] NovaNear 1
execute if entity @s[tag=!customNova] as @a[x=0,team=Blue,tag=YellowNovaNear,scores={NovaNear=4..}] at @s unless entity @e[type=firework_rocket,distance=..4,limit=1,tag=YellowNova] run tag @s remove YellowNovaNear
execute if entity @s[tag=!customNova] as @a[x=0,team=Blue,tag=!YellowNovaNear,scores={NovaNear=4..}] run scoreboard players reset @s NovaNear
execute if entity @s[tag=!customNova] as @a[x=0,team=Yellow,tag=BlueNovaNear,scores={NovaNear=4..}] at @s unless entity @e[type=firework_rocket,distance=..4,limit=1,tag=BlueNova] run tag @s remove BlueNovaNear
execute if entity @s[tag=!customNova] as @a[x=0,team=Yellow,tag=!BlueNovaNear,scores={NovaNear=4..}] run scoreboard players reset @s NovaNear

#Nova Rocket flight and tracker entity
scoreboard players add @e[x=0,type=firework_rocket,tag=BlueNova] novatimer 0
scoreboard players add @e[x=0,type=firework_rocket,tag=YellowNova] novatimer 0
execute as @e[x=0,type=firework_rocket,tag=BlueNova,scores={novatimer=0}] at @s run summon marker ~ ~ ~ {Tags:["novatracker","bluenovatracker"]}
execute as @e[x=0,type=firework_rocket,tag=BlueNova,scores={novatimer=0}] at @s store result score @e[type=marker,tag=bluenovatracker,distance=..3,limit=1] UUIDTracker run scoreboard players get @s UUIDTracker
execute as @e[x=0,type=firework_rocket,tag=BlueNova,scores={novatimer=0}] at @s run data modify entity @e[type=marker,tag=bluenovatracker,limit=1,sort=nearest,distance=..5] CustomName set from entity @s CustomName
execute as @e[x=0,type=firework_rocket,tag=YellowNova,scores={novatimer=0}] at @s run summon marker ~ ~ ~ {Tags:["novatracker","yellownovatracker"]}
execute as @e[x=0,type=firework_rocket,tag=YellowNova,scores={novatimer=0}] at @s store result score @e[type=marker,tag=yellownovatracker,distance=..3,limit=1] UUIDTracker run scoreboard players get @s UUIDTracker
execute as @e[x=0,type=firework_rocket,tag=YellowNova,scores={novatimer=0}] at @s run data modify entity @e[type=marker,tag=yellownovatracker,limit=1,sort=nearest,distance=..5] CustomName set from entity @s CustomName
execute as @e[x=0,type=marker,tag=novatracker] at @s at @e[type=firework_rocket,scores={novatimer=1..},limit=1,sort=nearest,distance=..3] run tp @s ~ ~ ~ ~ ~
scoreboard players add @e[x=0,type=firework_rocket,tag=BlueNova] novatimer 1
scoreboard players add @e[x=0,type=firework_rocket,tag=YellowNova] novatimer 1
scoreboard players add @e[x=0,type=marker,tag=novatracker] novatimer 1

#Nova Rockets explode Canopies
execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=chaseEnabled] as @e[x=0,type=marker,tag=bluenovatracker,tag=!NovaLost] at @s if entity @e[type=marker,tag=YellowPlatform,distance=..5,limit=1] if entity @a[team=Blue,distance=..5] run tag @s add DontExplode
execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=chaseEnabled] as @e[x=0,type=marker,tag=yellownovatracker,tag=!NovaLost] at @s if entity @e[type=marker,tag=BluePlatform,distance=..5,limit=1] if entity @a[team=Yellow,distance=..5] run tag @s add DontExplode
execute as @e[x=0,type=marker,tag=bluenovatracker,tag=!NovaLost] at @s if entity @e[type=marker,tag=YellowPlatform,distance=..5,limit=1] if entity @a[team=Yellow,distance=..4] unless entity @a[team=Blue,distance=..4] run tag @s remove DontExplode
execute as @e[x=0,type=marker,tag=yellownovatracker,tag=!NovaLost] at @s if entity @e[type=marker,tag=BluePlatform,distance=..5,limit=1] if entity @a[team=Blue,distance=..4] unless entity @a[team=Yellow,distance=..4] run tag @s remove DontExplode
execute as @e[x=0,type=marker,tag=bluenovatracker,tag=!NovaLost] at @s if entity @e[type=marker,tag=YellowPlatform,distance=..5,limit=1] unless entity @a[team=Blue,distance=..4] run tag @s remove DontExplode
execute as @e[x=0,type=marker,tag=yellownovatracker,tag=!NovaLost] at @s if entity @e[type=marker,tag=BluePlatform,distance=..5,limit=1] unless entity @a[team=Yellow,distance=..4] run tag @s remove DontExplode

execute as @e[x=0,type=marker,tag=bluenovatracker,tag=!NovaLost,tag=!DontExplode] at @s if entity @e[type=marker,tag=YellowPlatform,distance=..7,limit=1] unless entity @e[type=firework_rocket,tag=BlueNova,limit=1,sort=nearest,distance=..5] run tag @s add CanopyIsGone
execute as @e[x=0,type=marker,tag=yellownovatracker,tag=!NovaLost,tag=!DontExplode] at @s if entity @e[type=marker,tag=BluePlatform,distance=..7,limit=1] unless entity @e[type=firework_rocket,tag=YellowNova,limit=1,sort=nearest,distance=..5] run tag @s add CanopyIsGone
execute as @e[x=0,type=marker,tag=bluenovatracker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s if entity @e[type=marker,tag=YellowPlatform,distance=..7,limit=1] run tag @e[type=marker,tag=YellowPlatform,distance=..7,limit=1] add killCanopy
execute as @e[x=0,type=marker,tag=yellownovatracker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s if entity @e[type=marker,tag=BluePlatform,distance=..7,limit=1] run tag @e[type=marker,tag=BluePlatform,distance=..7,limit=1] add killCanopy
execute as @e[x=0,type=marker,tag=bluenovatracker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s run kill @e[type=firework_rocket,tag=BlueNova,limit=1,sort=nearest,distance=..5]
execute as @e[x=0,type=marker,tag=yellownovatracker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s run kill @e[type=firework_rocket,tag=YellowNova,limit=1,sort=nearest,distance=..5]
execute as @e[x=0,type=marker,tag=CanopyIsGone,tag=yellownovatracker,tag=!NovaLost,tag=!DontExplode] at @s as @e[type=marker,tag=BluePlatform,distance=..7,limit=1,sort=nearest] run tag @s add killCanopy
execute as @e[x=0,type=marker,tag=CanopyIsGone,tag=bluenovatracker,tag=!NovaLost,tag=!DontExplode] at @s as @e[type=marker,tag=YellowPlatform,distance=..7,limit=1,sort=nearest] run tag @s add killCanopy
execute as @e[x=0,type=marker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s run tag @a[team=!Lobby,team=!Spectator,distance=..10] add UtilKilled
execute if entity @s[tag=!Explosive,tag=!ClutterCollector] as @e[x=0,type=marker,tag=CanopyIsGone,tag=yellownovatracker,tag=!NovaLost,tag=!DontExplode] at @s as @e[type=marker,tag=BluePlatform,distance=..7,limit=1,sort=nearest] at @s run summon creeper ~ ~2 ~ {Tags:["UtilKilled","NovaCanopy"],NoGravity:1b,CustomName:'{"text":"a Nova Rocket"}',ExplosionRadius:5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Invulnerable:1b}
execute if entity @s[tag=Explosive,tag=!ClutterCollector] as @e[x=0,type=marker,tag=CanopyIsGone,tag=yellownovatracker,tag=!NovaLost,tag=!DontExplode] at @s as @e[type=marker,tag=BluePlatform,distance=..7,limit=1,sort=nearest] at @s run summon creeper ~ ~2 ~ {Tags:["UtilKilled","NovaCanopy"],NoGravity:1b,CustomName:'{"text":"a Nova Rocket"}',ExplosionRadius:7,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Invulnerable:1b}
execute if entity @s[tag=ClutterCollector] as @e[x=0,type=marker,tag=CanopyIsGone,tag=yellownovatracker,tag=!NovaLost,tag=!DontExplode] at @s as @e[type=marker,tag=BluePlatform,distance=..7,limit=1,sort=nearest] at @s run summon creeper ~ ~2 ~ {Tags:["UtilKilled","NovaCanopy"],NoGravity:1b,CustomName:'{"text":"a Nova Rocket"}',ExplosionRadius:0,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Invulnerable:1b}
execute if entity @s[tag=!Explosive,tag=!ClutterCollector] as @e[x=0,type=marker,tag=CanopyIsGone,tag=bluenovatracker,tag=!NovaLost,tag=!DontExplode] at @s as @e[type=marker,tag=YellowPlatform,distance=..7,limit=1,sort=nearest] at @s run summon creeper ~ ~2 ~ {Tags:["UtilKilled","NovaCanopy"],NoGravity:1b,CustomName:'{"text":"a Nova Rocket"}',ExplosionRadius:5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Invulnerable:1b}
execute if entity @s[tag=Explosive,tag=!ClutterCollector] as @e[x=0,type=marker,tag=CanopyIsGone,tag=bluenovatracker,tag=!NovaLost,tag=!DontExplode] at @s as @e[type=marker,tag=YellowPlatform,distance=..7,limit=1,sort=nearest] at @s run summon creeper ~ ~2 ~ {Tags:["UtilKilled","NovaCanopy"],NoGravity:1b,CustomName:'{"text":"a Nova Rocket"}',ExplosionRadius:7,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Invulnerable:1b}
execute if entity @s[tag=ClutterCollector] as @e[x=0,type=marker,tag=CanopyIsGone,tag=bluenovatracker,tag=!NovaLost,tag=!DontExplode] at @s as @e[type=marker,tag=YellowPlatform,distance=..7,limit=1,sort=nearest] at @s run summon creeper ~ ~2 ~ {Tags:["UtilKilled","NovaCanopy"],NoGravity:1b,CustomName:'{"text":"a Nova Rocket"}',ExplosionRadius:0,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Invulnerable:1b}
execute as @e[x=0,type=marker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s run tag @e[type=creeper,distance=..10,limit=1] add UtilKilled
execute as @e[x=0,type=marker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s run tag @e[type=tnt,distance=..8] add UtilKilled
execute as @e[x=0,type=marker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s store result score @e[type=creeper,limit=1,sort=nearest,distance=..8,tag=NovaCanopy] UUIDTracker run scoreboard players get @s UUIDTracker
execute as @e[x=0,type=marker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s store result score @e[type=creeper,limit=1,sort=nearest,distance=..8,tag=NovaCanopy] KillerUUID run scoreboard players get @s UUIDTracker
execute as @e[x=0,type=marker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s store result score @a[team=!Spectator,team=!Lobby,distance=..8,tag=NovaCanopy] KillerUUID run scoreboard players get @s UUIDTracker
execute as @e[x=0,type=marker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s run data modify entity @e[type=creeper,limit=1,sort=nearest,distance=..8,tag=NovaCanopy] CustomName set from entity @s CustomName
execute as @e[x=0,type=marker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s run scoreboard players set @s novatimer 31
execute as @e[x=0,type=marker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s run tag @s add NovaLost
tag @e[x=0,type=marker,tag=novatracker,tag=DontExplode] remove DontExplode

#Nova Rocket collision
execute as @e[x=0,type=firework_rocket,tag=BlueNova] at @s if entity @e[type=firework_rocket,tag=YellowNova,distance=..2] run tag @e[type=firework_rocket,tag=YellowNova,distance=..2,limit=1] add CollideNova
execute as @e[x=0,type=firework_rocket,tag=BlueNova] at @s if entity @e[type=firework_rocket,tag=YellowNova,distance=..2] run tag @s add CollideNova
execute as @e[x=0,type=firework_rocket,tag=BlueNova] at @s if entity @e[type=firework_rocket,tag=YellowNova,distance=..2] run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1,explosions:[{shape:"large_ball",colors:[I;4312372],fade_colors:[I;3887386],has_trail:1,has_twinkle:1}]}}}}
execute as @e[x=0,type=firework_rocket,tag=BlueNova] at @s if entity @e[type=firework_rocket,tag=YellowNova,distance=..2] run summon creeper ~ ~ ~ {Tags:["NovaCollision"],NoGravity:1b,CustomName:'{"text":"a Nova Rocket Collision"}',ExplosionRadius:6,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Invulnerable:1b}
execute as @e[x=0,type=firework_rocket,tag=CollideNova] run kill @s

#Explosion/particle effects
execute as @e[x=0,type=firework_rocket,tag=BlueNova,scores={novatimer=1..10}] at @s run data merge entity @s {LifeTime:30,FireworksItem:{components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"burst"}]}}}}
execute as @e[x=0,type=firework_rocket,tag=YellowNova,scores={novatimer=1..10}] at @s run data merge entity @s {LifeTime:30,FireworksItem:{components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"burst"}]}}}}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!customNova] as @e[x=0,type=firework_rocket,tag=BlueNova] at @s if score $dust CmdData matches 1 run particle minecraft:falling_dust{block_state:"minecraft:lapis_block"} ~ ~0.2 ~ 0 0 0 1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=customNova] as @e[x=0,type=firework_rocket,tag=BlueNova] at @s if score $dust CmdData matches 1 run particle minecraft:dust{color:[3,3,3],scale:1} ~ ~0.2 ~ 0 0 0 1 1 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=customNova] as @e[x=0,type=firework_rocket,tag=BlueNova] at @s if score $dust CmdData matches 1 run particle minecraft:dust{color:[3,3,3],scale:1} ^ ^0.2 ^-0.2 0 0 0 1 1 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute as @e[x=0,type=firework_rocket,tag=YellowNova] at @s if score $dust CmdData matches 1 run particle minecraft:falling_dust{block_state:"minecraft:gold_block"} ~ ~0.2 ~ 0 0 0 1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

##Yellow Nova Rocket functionality
#Static
execute as @e[x=0,type=marker,tag=yellownovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=YellowNova,distance=..3,limit=1,sort=nearest] run fill ~3.5 ~3.5 ~3.5 ~-3.5 ~-3.5 ~-3.5 air replace #leaves
execute as @e[x=0,type=marker,tag=yellownovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=YellowNova,distance=..3,limit=1,sort=nearest] run fill ~3.5 ~3.5 ~3.5 ~-3.5 ~-3.5 ~-3.5 air replace #banners
execute as @e[x=0,type=marker,tag=yellownovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=YellowNova,distance=..3,limit=1,sort=nearest] run fill ~3.5 ~3.5 ~3.5 ~-3.5 ~-3.5 ~-3.5 air replace oak_wood
execute if entity @s[tag=!Explosive,tag=!ClutterCollector] as @e[x=0,type=marker,tag=yellownovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=YellowNova,distance=..3,limit=1,sort=nearest] run summon creeper ~ ~ ~ {Tags:["NovaExplode"],NoGravity:1b,CustomName:'{"text":"a Nova Rocket"}',ExplosionRadius:2,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Invulnerable:1b}
execute if entity @s[tag=Explosive,tag=!ClutterCollector] as @e[x=0,type=marker,tag=yellownovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=YellowNova,distance=..3,limit=1,sort=nearest] run summon creeper ~ ~ ~ {Tags:["NovaExplode"],NoGravity:1b,CustomName:'{"text":"a Nova Rocket"}',ExplosionRadius:5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Invulnerable:1b}
execute if entity @s[tag=ClutterCollector] as @e[x=0,type=marker,tag=yellownovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=YellowNova,distance=..3,limit=1,sort=nearest] run summon creeper ~ ~ ~ {Tags:["NovaExplode"],NoGravity:1b,CustomName:'{"text":"a Nova Rocket"}',ExplosionRadius:0,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Invulnerable:1b}
execute as @e[x=0,type=marker,tag=yellownovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=YellowNova,distance=..3,limit=1,sort=nearest] store result score @e[type=creeper,limit=1,sort=nearest,distance=..5,tag=NovaExplode] KillerUUID run scoreboard players get @s UUIDTracker
execute as @e[x=0,type=marker,tag=yellownovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=YellowNova,distance=..3,limit=1,sort=nearest] run data modify entity @e[type=creeper,limit=1,sort=nearest,distance=..5,tag=NovaExplode] CustomName set from entity @s CustomName
execute as @e[x=0,type=marker,tag=yellownovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=YellowNova,distance=..3,limit=1,sort=nearest] run tag @a[team=!Lobby,team=!Spectator,distance=..10] add UtilKilled
execute as @e[x=0,type=marker,tag=yellownovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=YellowNova,distance=..3,limit=1,sort=nearest] run tag @e[type=tnt,distance=..6] add UtilKilled
execute as @e[x=0,type=marker,tag=yellownovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=YellowNova,distance=..3,limit=1,sort=nearest] run tag @s add NovaLost
execute as @e[x=0,type=firework_rocket,tag=YellowNova,scores={novatimer=30}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:3,explosions:[{shape:"large_ball",colors:[I;14602026,15435844],has_trail:1,has_twinkle:1}]}}}}
execute as @e[x=0,type=firework_rocket,tag=YellowNova,scores={novatimer=30..}] at @s run tag @e[type=tnt,distance=..7] add UtilKilled
kill @e[x=0,type=firework_rocket,tag=YellowNova,scores={novatimer=33..}]

#Attach
scoreboard players add @a[x=0,tag=YellowNovaAttach] novattach 1
execute as @a[x=0,tag=YellowNovaAttach,scores={novattach=1}] at @s run playsound minecraft:entity.firework_rocket.launch master @a[x=0] ~ ~ ~ 2 1.2
execute as @a[x=0,tag=YellowNovaAttach,scores={novattach=1}] run effect give @s levitation 1 60 true
execute as @a[x=0,tag=YellowNovaAttach,scores={novattach=4..}] run effect clear @s levitation
execute as @a[x=0,tag=YellowNovaAttach,scores={novattach=15..},nbt={OnGround:1b}] at @s run tag @e[type=marker,tag=BluePlatform,distance=..7,limit=1,sort=nearest] add killCanopy
execute as @a[x=0,tag=YellowNovaAttach,scores={novattach=15..},nbt={OnGround:1b}] at @s run fill ~ ~-2 ~ ~ ~ ~ air replace oak_wood
execute as @a[x=0,tag=YellowNovaAttach,scores={novattach=15..},nbt={OnGround:1b}] at @s run fill ~-3 ~-2 ~-3 ~3 ~ ~3 air replace #minecraft:leaves
execute as @a[x=0,tag=YellowNovaAttach,scores={novattach=15..},nbt={OnGround:1b}] at @s run particle minecraft:block{block_state:"minecraft:oak_leaves"} ~ ~1 ~ 2 1 2 0.1 50 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute as @a[x=0,tag=YellowNovaAttach,scores={novattach=15..},nbt={OnGround:1b}] at @s run playsound minecraft:entity.firework_rocket.blast master @a[x=0] ~ ~ ~ 2 0
execute as @a[x=0,tag=YellowNovaAttach,scores={novattach=15..},nbt={OnGround:1b}] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:3,explosions:[{shape:"star",colors:[I;14602026,15435844],has_trail:1,has_twinkle:1}]}}}}
execute as @a[x=0,tag=YellowNovaAttach,tag=!CarryFlag,scores={novattach=15..},nbt={OnGround:1b}] at @s anchored eyes run summon creeper ~ ~0.5 ~1 {Tags:["NovaExplode"],NoGravity:1b,CustomName:'{"text":"a Nova Rocket"}',ExplosionRadius:1,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Invulnerable:1b}
execute as @a[x=0,tag=YellowNovaAttach,tag=CarryFlag,scores={novattach=15..},nbt={OnGround:1b}] at @s anchored eyes run summon creeper ~ ~0.5 ~-1 {Tags:["NovaExplode"],NoGravity:1b,CustomName:'{"text":"a Nova Rocket"}',ExplosionRadius:1,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Invulnerable:1b}
execute as @a[x=0,tag=YellowNovaAttach,scores={novattach=1..}] at @s if score $dust CmdData matches 1 run particle firework ~ ~ ~ 0 0 0 0.05 1 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute as @a[x=0,tag=YellowNovaAttach] run tag @s[scores={novattach=15..},nbt={OnGround:1b}] remove YellowNovaAttach

##Blue Nova Rocket Functionality
#Static
execute as @e[x=0,type=marker,tag=bluenovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=BlueNova,distance=..3,limit=1,sort=nearest] run fill ~3.5 ~3.5 ~3.5 ~-3.5 ~-3.5 ~-3.5 air replace #leaves
execute as @e[x=0,type=marker,tag=bluenovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=BlueNova,distance=..3,limit=1,sort=nearest] run fill ~3.5 ~3.5 ~3.5 ~-3.5 ~-3.5 ~-3.5 air replace #banners
execute as @e[x=0,type=marker,tag=bluenovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=BlueNova,distance=..3,limit=1,sort=nearest] run fill ~3.5 ~3.5 ~3.5 ~-3.5 ~-3.5 ~-3.5 air replace oak_wood
execute if entity @s[tag=!Explosive,tag=!ClutterCollector] as @e[x=0,type=marker,tag=bluenovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=BlueNova,distance=..3,limit=1,sort=nearest] run summon creeper ~ ~ ~ {Tags:["NovaExplode"],NoGravity:1b,CustomName:'{"text":"a Nova Rocket"}',ExplosionRadius:2,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Invulnerable:1b}
execute if entity @s[tag=Explosive,tag=!ClutterCollector] as @e[x=0,type=marker,tag=bluenovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=BlueNova,distance=..3,limit=1,sort=nearest] run summon creeper ~ ~ ~ {Tags:["NovaExplode"],NoGravity:1b,CustomName:'{"text":"a Nova Rocket"}',ExplosionRadius:5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Invulnerable:1b}
execute if entity @s[tag=ClutterCollector] as @e[x=0,type=marker,tag=bluenovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=BlueNova,distance=..3,limit=1,sort=nearest] run summon creeper ~ ~ ~ {Tags:["NovaExplode"],NoGravity:1b,CustomName:'{"text":"a Nova Rocket"}',ExplosionRadius:0,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Invulnerable:1b}
execute as @e[x=0,type=marker,tag=bluenovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=BlueNova,distance=..3,limit=1,sort=nearest] store result score @e[type=creeper,limit=1,sort=nearest,distance=..5,tag=NovaExplode] KillerUUID run scoreboard players get @s UUIDTracker
execute as @e[x=0,type=marker,tag=bluenovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=BlueNova,distance=..3,limit=1,sort=nearest] run data modify entity @e[type=creeper,limit=1,sort=nearest,distance=..5,tag=NovaExplode] CustomName set from entity @s CustomName
execute as @e[x=0,type=marker,tag=bluenovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=BlueNova,distance=..3,limit=1,sort=nearest] run tag @a[team=!Lobby,team=!Spectator,distance=..10] add UtilKilled
execute as @e[x=0,type=marker,tag=bluenovatracker,tag=!NovaLost] at @s unless entity @e[type=firework_rocket,tag=BlueNova,distance=..3,limit=1,sort=nearest] run tag @e[type=tnt,distance=..6] add UtilKilled
execute if entity @s[tag=!customNova] as @e[x=0,type=marker,tag=bluenovatracker] at @s unless entity @e[type=firework_rocket,tag=BlueNova,distance=..3,limit=1,sort=nearest] run tag @s add NovaLost
execute if entity @s[tag=!customNova] as @e[x=0,type=firework_rocket,tag=BlueNova,scores={novatimer=30}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:3,explosions:[{shape:"large_ball",colors:[I;2437522,2651799],has_trail:1,has_twinkle:1}]}}}}
execute as @e[x=0,type=firework_rocket,tag=BlueNova,scores={novatimer=30..}] at @s run tag @e[type=tnt,distance=..7] add UtilKilled
kill @e[x=0,type=firework_rocket,tag=BlueNova,scores={novatimer=33..}]

#Nova lost timer
execute as @e[x=0,type=marker,tag=NovaLost] at @s run tag @e[type=tnt,distance=..7] add UtilKilled
scoreboard players add @e[x=0,type=marker,tag=NovaLost] CmdData 1
execute as @e[x=0,type=marker,tag=NovaLost] at @s store result score @e[type=tnt,distance=..5] UUIDTracker run scoreboard players get @s UUIDTracker
execute as @e[x=0,type=marker,tag=NovaLost] at @s store result score @e[type=tnt,distance=..5] KillerUUID run scoreboard players get @s UUIDTracker
execute as @e[x=0,type=marker,tag=NovaLost] at @s run function game:nametnt
kill @e[x=0,type=marker,tag=NovaLost,scores={CmdData=6..}]

#Add to score for tnt detection
execute as @e[x=0,type=firework_rocket,scores={novatimer=30..}] at @s store result score @e[type=tnt,distance=..6] KillerUUID run scoreboard players get @s UUIDTracker

#Attach
scoreboard players add @a[x=0,tag=BlueNovaAttach] novattach 1
execute as @a[x=0,tag=BlueNovaAttach,scores={novattach=1}] at @s run playsound minecraft:entity.firework_rocket.launch master @a[x=0] ~ ~ ~ 2 1.2
execute as @a[x=0,tag=BlueNovaAttach,scores={novattach=1}] run effect give @s levitation 1 60 true
execute as @a[x=0,tag=BlueNovaAttach,scores={novattach=4..}] run effect clear @s levitation
execute as @a[x=0,tag=BlueNovaAttach,scores={novattach=15..},nbt={OnGround:1b}] at @s run tag @e[type=marker,tag=YellowPlatform,distance=..7,limit=1,sort=nearest] add killCanopy
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=chaseEnabled] as @a[x=0,tag=BlueNovaAttach,scores={novattach=15..},nbt={OnGround:1b}] at @s run tag @e[type=marker,tag=BluePlatform,distance=..7,limit=1,sort=nearest] add killCanopy
execute as @a[x=0,tag=BlueNovaAttach,scores={novattach=15..},nbt={OnGround:1b}] at @s run fill ~ ~-2 ~ ~ ~ ~ air replace oak_wood
execute as @a[x=0,tag=BlueNovaAttach,scores={novattach=15..},nbt={OnGround:1b}] at @s run playsound minecraft:entity.firework_rocket.blast master @a[x=0] ~ ~ ~ 3 0
execute if entity @s[tag=!customNova] as @a[x=0,tag=BlueNovaAttach,scores={novattach=15..},nbt={OnGround:1b}] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:3,explosions:[{shape:"star",colors:[I;2437522,2651799],has_trail:1,has_twinkle:1}]}}}}
execute as @a[x=0,tag=BlueNovaAttach,tag=!CarryFlag,scores={novattach=15..},nbt={OnGround:1b}] at @s anchored eyes run summon creeper ~ ~0.5 ~-1 {Tags:["NovaExplode"],NoGravity:1b,CustomName:'{"text":"a Nova Rocket"}',ExplosionRadius:1,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Invulnerable:1b}
execute as @a[x=0,tag=BlueNovaAttach,tag=CarryFlag,scores={novattach=15..},nbt={OnGround:1b}] at @s anchored eyes run summon creeper ~ ~0.5 ~1 {Tags:["NovaExplode"],NoGravity:1b,CustomName:'{"text":"a Nova Rocket"}',ExplosionRadius:1,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Invulnerable:1b}
execute as @a[x=0,tag=BlueNovaAttach,scores={novattach=1..}] at @s if score $dust CmdData matches 1 run particle firework ~ ~ ~ 0 0 0 0.05 1 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute as @a[x=0,tag=BlueNovaAttach] run tag @s[scores={novattach=15..},nbt={OnGround:1b}] remove BlueNovaAttach