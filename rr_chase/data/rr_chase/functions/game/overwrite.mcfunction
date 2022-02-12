#Overwrite vortex owner (makes these hostile towards team members)
execute as @a[team=Blue] at @s run tag @e[type=egg,sort=nearest,limit=1,distance=..5,tag=BlueVortex] add YellowVortex
execute as @a[team=Blue] at @s run tag @e[type=egg,sort=nearest,limit=1,distance=..5,tag=BlueVortex] remove BlueVortex

#Overwrite vortex particles
execute as @e[type=egg,tag=YellowVortex] at @s run particle dust 0 0 1 1 ~ ~0.3 ~ 0 0 0 0.1 10 force @a
execute as @e[type=marker,tag=VortexYellow] at @s run particle dust 0 0 1 1 ~ ~0.3 ~ 0.5 0.5 0 0 2 force @a
execute as @e[type=marker,tag=VortexYellow] at @s run particle minecraft:scrape ~ ~0.3 ~ 0.5 0.5 0 0 3 force @a

#Nova tracking
execute as @a[team=Blue] at @s if entity @e[type=firework_rocket,distance=..4,limit=1,tag=BlueNova] run tag @s add BlueNovaNear
execute as @a[team=Blue] at @s if entity @e[type=marker,distance=..4,limit=1,tag=bluenovatracker] run tag @s add BlueNovaNear
execute as @a[team=Blue,tag=BlueNovaNear,scores={NovaNear=4..}] at @s unless entity @e[type=firework_rocket,distance=..4,limit=1,tag=BlueNova] run tag @s remove BlueNovaNear
execute as @a[team=Blue,tag=!BlueNovaNear,scores={NovaNear=4..}] run scoreboard players reset @s NovaNear

#Nova Rockets explode same team Canopies
tag @e[type=marker,tag=novatracker,tag=DontExplode] remove DontExplode
execute as @e[type=marker,tag=bluenovatracker,tag=!NovaLost,tag=!DontExplode] at @s if entity @e[type=marker,tag=BluePlatform,distance=..7,limit=1] unless entity @e[type=firework_rocket,tag=BlueNova,limit=1,sort=nearest,distance=..5] run tag @s add CanopyIsGone
execute as @e[type=marker,tag=bluenovatracker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s if entity @e[type=marker,tag=BluePlatform,distance=..7,limit=1] run tag @e[type=marker,tag=BluePlatform,distance=..7,limit=1] add killCanopy
execute as @e[type=marker,tag=bluenovatracker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s run kill @e[type=firework_rocket,tag=BlueNova,limit=1,sort=nearest,distance=..5]
execute as @e[type=marker,tag=CanopyIsGone,tag=yellownovatracker,tag=!NovaLost,tag=!DontExplode] at @s as @e[type=marker,tag=BluePlatform,distance=..7,limit=1,sort=nearest] run tag @s add killCanopy
execute as @e[type=marker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s run tag @a[team=!Lobby,team=!Spectator,distance=..10] add UtilKilled
execute if entity @s[tag=!Explosive,tag=!ClutterCollector] as @e[type=marker,tag=CanopyIsGone,tag=bluenovatracker,tag=!NovaLost,tag=!DontExplode] at @s as @e[type=marker,tag=BluePlatform,distance=..7,limit=1,sort=nearest] at @s run summon creeper ~ ~2 ~ {Tags:["UtilKilled","NovaCanopy"],NoGravity:1b,CustomName:'{"text":"a Nova Rocket"}',ExplosionRadius:5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=!Explosive,tag=ClutterCollector] as @e[type=marker,tag=CanopyIsGone,tag=bluenovatracker,tag=!NovaLost,tag=!DontExplode] at @s as @e[type=marker,tag=BluePlatform,distance=..7,limit=1,sort=nearest] at @s run summon creeper ~ ~2 ~ {Tags:["UtilKilled","NovaCanopy"],NoGravity:1b,CustomName:'{"text":"a Nova Rocket"}',ExplosionRadius:-5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=Explosive,tag=!ClutterCollector] as @e[type=marker,tag=CanopyIsGone,tag=bluenovatracker,tag=!NovaLost,tag=!DontExplode] at @s as @e[type=marker,tag=BluePlatform,distance=..7,limit=1,sort=nearest] at @s run summon creeper ~ ~2 ~ {Tags:["UtilKilled","NovaCanopy"],NoGravity:1b,CustomName:'{"text":"a Nova Rocket"}',ExplosionRadius:7,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=Explosive,tag=ClutterCollector] as @e[type=marker,tag=CanopyIsGone,tag=bluenovatracker,tag=!NovaLost,tag=!DontExplode] at @s as @e[type=marker,tag=BluePlatform,distance=..7,limit=1,sort=nearest] at @s run summon creeper ~ ~2 ~ {Tags:["UtilKilled","NovaCanopy"],NoGravity:1b,CustomName:'{"text":"a Nova Rocket"}',ExplosionRadius:-7,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute as @e[type=marker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s run tag @e[type=creeper,distance=..10,limit=1] add UtilKilled
execute as @e[type=marker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s run tag @e[type=tnt,distance=..8] add UtilKilled
execute as @e[type=marker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s store result score @e[type=creeper,limit=1,sort=nearest,distance=..8,tag=NovaCanopy] UUIDTracker run scoreboard players get @s UUIDTracker
execute as @e[type=marker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s store result score @e[type=creeper,limit=1,sort=nearest,distance=..8,tag=NovaCanopy] KillerUUID run scoreboard players get @s UUIDTracker
execute as @e[type=marker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s store result score @a[team=!Spectator,team=!Lobby,distance=..8,tag=NovaCanopy] KillerUUID run scoreboard players get @s UUIDTracker
execute as @e[type=marker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s run data modify entity @e[type=creeper,limit=1,sort=nearest,distance=..8,tag=NovaCanopy] CustomName set from entity @s CustomName
execute as @e[type=marker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s run scoreboard players set @s novatimer 31
execute as @e[type=marker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s run tag @s add NovaLost
execute as @e[type=marker,tag=bluenovatracker] at @s unless entity @e[type=firework_rocket,tag=BlueNova,distance=..3,limit=1,sort=nearest] run tag @s add NovaLost
execute as @a[tag=BlueNovaAttach,scores={novattach=15..},nbt={OnGround:1b}] at @s if entity @e[tag=BluePlatform,tag=killCanopy,distance=..5,limit=1] run scoreboard players set @s novattach 2