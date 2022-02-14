#Overwrite vortex owner (makes these hostile towards team members)
execute as @a[team=Blue] at @s run tag @e[type=egg,sort=nearest,limit=1,distance=..5,tag=BlueVortex] add YellowVortex
execute as @a[team=Blue] at @s run tag @e[type=egg,sort=nearest,limit=1,distance=..5,tag=BlueVortex] remove BlueVortex

#Overwrite vortex particles
execute as @e[type=egg,tag=YellowVortex] at @s run particle dust 3 3 3 1 ~ ~ ~ 0 0 0 0.1 10 force @a
execute as @e[type=marker,tag=VortexYellow] at @s run particle dust 3 3 3 1.5 ~ ~0.3 ~ 0.5 0.5 0 0 2 force @a
execute as @e[type=marker,tag=VortexYellow] at @s run particle minecraft:electric_spark ~ ~0.3 ~ 0.5 0.5 0 0 3 force @a

#Nova tracking
execute as @a[team=Blue] at @s if entity @e[type=firework_rocket,distance=..4,limit=1,tag=BlueNova] run tag @s add BlueNovaNear
execute as @a[team=Blue] at @s if entity @e[type=marker,distance=..4,limit=1,tag=bluenovatracker] run tag @s add BlueNovaNear
execute as @a[team=Blue,tag=BlueNovaNear,scores={NovaNear=4..}] at @s unless entity @e[type=firework_rocket,distance=..4,limit=1,tag=BlueNova] run tag @s remove BlueNovaNear
execute as @a[team=Blue,tag=!BlueNovaNear,scores={NovaNear=4..}] run scoreboard players reset @s NovaNear
execute as @a[tag=BlueNovaAttach,scores={novattach=15..},nbt={OnGround:1b}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:3,Explosions:[{Type:2,Flicker:1,Trail:1,Colors:[I;15790320],FadeColors:[I;11743532,3887386,2437522,8073150,2651799,14188952,4312372,14602026,6719955,12801229,15435844]}]}}}}

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

#Obshields
execute as @e[tag=blueobalone,scores={shieldplacement=6}] at @s run setblock ~1 ~2 ~ white_stained_glass_pane[east=true]
execute as @e[tag=blueobalone,scores={shieldplacement=6}] at @s run setblock ~-1 ~2 ~ white_stained_glass_pane[west=true]
execute as @e[tag=blueobalone,scores={shieldplacement=6}] at @s run setblock ~1 ~-2 ~ white_stained_glass_pane[east=true]
execute as @e[tag=blueobalone,scores={shieldplacement=6}] at @s run setblock ~-1 ~-2 ~ white_stained_glass_pane[west=true]
execute as @e[tag=blueobalone,scores={shieldplacement=6}] at @s run setblock ~-2 ~1 ~ white_stained_glass_pane[east=true]
execute as @e[tag=blueobalone,scores={shieldplacement=6}] at @s run setblock ~-2 ~-1 ~ white_stained_glass_pane[east=true]
execute as @e[tag=blueobalone,scores={shieldplacement=6}] at @s run setblock ~2 ~1 ~ white_stained_glass_pane[west=true]
execute as @e[tag=blueobalone,scores={shieldplacement=6}] at @s run setblock ~2 ~-1 ~ white_stained_glass_pane[west=true]

execute as @e[scores={shieldplacement=6..}] run kill @e[type=area_effect_cloud,tag=tempobshield,limit=1,sort=nearest,distance=..1]
kill @e[scores={shieldplacement=6..}]

#Shield
execute as @e[type=snowball,tag=BlueShield] at @s run particle dust 3 3 3 1 ~ ~ ~ 0 0 0 0.1 10 force @a
execute as @e[type=marker,tag=PlaceBlueShield,scores={shieldplacement=1}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-1,posZ:0,name:"minecraft:whiteshield1"}
execute as @e[type=marker,tag=PlaceBlueShield,scores={shieldplacement=1}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[type=marker,tag=PlaceBlueShield,scores={shieldplacement=1}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[type=marker,tag=PlaceBlueShield,scores={shieldplacement=2}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-2,posZ:0,name:"minecraft:whiteshield2"}
execute as @e[type=marker,tag=PlaceBlueShield,scores={shieldplacement=2}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[type=marker,tag=PlaceBlueShield,scores={shieldplacement=2}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[type=marker,tag=PlaceBlueShield,scores={shieldplacement=3}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-3,posY:-3,posZ:0,name:"minecraft:whiteshield3"}
execute as @e[type=marker,tag=PlaceBlueShield,scores={shieldplacement=3}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[type=marker,tag=PlaceBlueShield,scores={shieldplacement=3}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[type=marker,tag=PlaceBlueShield,scores={shieldplacement=3}] at @s run particle block white_stained_glass ~ ~ ~ 1 1 0 0.1 100
kill @e[type=marker,tag=PlaceBlueShield,scores={shieldplacement=3..}]
kill @e[type=snowball,tag=BlueShield,scores={shieldtest2=20..}]

#Canopy
execute as @e[type=ender_pearl,tag=BluePlat] at @s run particle dust 3 3 3 1 ~ ~ ~ 0 0 0 0.1 10 force @a
execute as @e[type=ender_pearl,tag=BluePlat] at @s run particle block spruce_leaves ~ ~ ~ 0 0 0 0.1 2 force @a
execute as @e[type=ender_pearl,tag=BluePlat] at @s run scoreboard players add @s testplat2 1
#Next 4 commands disable Blue Canopies inside of portals
execute unless entity @s[tag=noPortal] as @e[type=ender_pearl,scores={testplat2=9..10}] at @s if entity @s[x=-13,y=37,z=71,dx=50,dy=21,dz=6] run scoreboard players remove @s testplat2 1
execute unless entity @s[tag=noPortal] as @e[type=ender_pearl,scores={testplat2=9..10}] at @s if entity @s[x=-10,y=36,z=73,dx=44,dy=1,dz=2] run scoreboard players remove @s testplat2 2
execute unless entity @s[tag=noPortal] as @e[type=ender_pearl,scores={testplat2=9..10}] at @s if entity @s[x=-13,y=37,z=-77,dx=50,dy=21,dz=6] run scoreboard players remove @s testplat2 1
execute unless entity @s[tag=noPortal] as @e[type=ender_pearl,scores={testplat2=9..10}] at @s if entity @s[x=-10,y=36,z=-75,dx=44,dy=1,dz=2] run scoreboard players remove @s testplat2 2
#Disable Blue Canopies near void
execute as @e[type=ender_pearl,scores={testplat2=9..10}] at @s if predicate custom:canopy_nearvoid run scoreboard players remove @s testplat2 1
#Disable Blue Canopies near spawnpoints
execute as @e[type=ender_pearl,scores={testplat2=9..10}] at @s if entity @e[type=marker,tag=BlueSpawnZone,distance=..7] run scoreboard players remove @s testplat2 1
execute as @e[type=ender_pearl,scores={testplat2=9..10}] at @s if entity @e[type=marker,tag=YellowSpawnZone,distance=..7] run scoreboard players remove @s testplat2 1
execute as @e[type=ender_pearl,scores={testplat2=10},predicate=!custom:canopy_nearvoid] at @s run function everytick:canopy_threw
execute as @e[type=ender_pearl,scores={testplat2=10},predicate=!custom:canopy_nearvoid] at @s run setblock ~ ~1 ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-1,posZ:-1,name:"minecraft:whitecanopy1"}
execute as @e[type=ender_pearl,scores={testplat2=10},predicate=!custom:canopy_nearvoid] at @s run setblock ~ ~ ~ observer[facing=down,powered=true]
execute as @e[type=ender_pearl,scores={testplat2=10},predicate=!custom:canopy_nearvoid] at @s run setblock ~ ~ ~ observer[facing=down,powered=true]
execute as @e[type=ender_pearl,scores={testplat2=10},predicate=!custom:canopy_nearvoid] at @s run playsound ui.stonecutter.take_result master @a ~ ~ ~ 2 0
execute as @e[type=ender_pearl,scores={testplat2=10},predicate=!custom:canopy_nearvoid] at @s run playsound block.wood.break master @a ~ ~ ~ 2 1
execute as @e[type=ender_pearl,scores={testplat2=10},predicate=!custom:canopy_nearvoid] at @s run playsound block.grass.place master @a ~ ~ ~ 2 0
execute as @e[type=ender_pearl,scores={testplat2=10},predicate=!custom:canopy_nearvoid] at @s align xyz positioned ~0.5 ~ ~0.5 run function everytick:canopy_marker
scoreboard players add @e[type=marker,tag=BluePlatform] PlatTime 1
kill @e[type=ender_pearl,scores={testplat2=10..}]
execute as @e[type=marker,tag=BluePlatform,scores={PlatTime=1}] run data modify storage rocketriders:canopypos x prepend from entity @s Pos[0]
execute as @e[type=marker,tag=BluePlatform,scores={PlatTime=1}] run data modify storage rocketriders:canopypos y prepend from entity @s Pos[1]
execute as @e[type=marker,tag=BluePlatform,scores={PlatTime=1}] run data modify storage rocketriders:canopypos z prepend from entity @s Pos[2]
execute as @e[type=marker,tag=BluePlatform,scores={PlatTime=1}] run scoreboard players add @e[type=armor_stand,tag=Selection] canopyCount 1
#Teleporting happens in another function
execute as @e[type=marker,tag=BluePlatform,scores={PlatTime=..41}] run function everytick:canopy_tpblue
tag @e[type=marker,tag=BluePlatform] remove checkedTP
tag @a[team=Blue] remove checkedTP
execute as @e[type=marker,tag=BlueSpawnZone] at @s run scoreboard players set @a[team=Blue,distance=..6] respawn 0
#After 2 seconds the Canopy gives up
scoreboard players reset @e[type=marker,tag=BluePlatform,scores={PlatTime=41}] pearlOwnerUUID
