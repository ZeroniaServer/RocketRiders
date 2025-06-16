#Overwrite vortex owner (makes these hostile towards team members)
execute as @a[x=0,team=Blue] at @s run tag @e[type=egg,sort=nearest,limit=1,distance=..5,tag=BlueVortex] add YellowVortex
execute as @a[x=0,team=Blue] at @s run tag @e[type=egg,sort=nearest,limit=1,distance=..5,tag=BlueVortex] remove BlueVortex

#Overwrite vortex particles
execute as @e[x=0,type=egg,tag=YellowVortex] at @s if score $dust CmdData matches 1 run particle minecraft:dust{color:[3,3,3],scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute as @e[x=0,type=marker,tag=VortexYellow] at @s if score $dust CmdData matches 1 run particle minecraft:dust{color:[3,3,3],scale:1.5} ~ ~0.3 ~ 0.5 0.5 0 0 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute as @e[x=0,type=marker,tag=VortexYellow] at @s if score $dust CmdData matches 1 run particle minecraft:electric_spark ~ ~0.3 ~ 0.5 0.5 0 0 3 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

#Nova tracking
execute as @a[x=0,team=Blue] at @s if entity @e[type=firework_rocket,distance=..4,limit=1,tag=BlueNova] run tag @s add BlueNovaNear
execute as @a[x=0,team=Blue] at @s if entity @e[type=marker,distance=..4,limit=1,tag=bluenovatracker] run tag @s add BlueNovaNear
execute as @a[x=0,team=Blue,tag=BlueNovaNear,scores={NovaNear=4..}] at @s unless entity @e[type=firework_rocket,distance=..4,limit=1,tag=BlueNova] run tag @s remove BlueNovaNear
execute as @a[x=0,team=Blue,tag=!BlueNovaNear,scores={NovaNear=4..}] run scoreboard players reset @s NovaNear
execute as @a[x=0,tag=BlueNovaAttach,scores={novattach=15..},predicate=custom:is_on_ground] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:3,explosions:[{shape:"star",colors:[I;15790320],fade_colors:[I;11743532,3887386,2437522,8073150,2651799,14188952,4312372,14602026,6719955,12801229,15435844],has_trail:true,has_twinkle:true}]}}}}

#Nova Rockets explode same team Canopies
tag @e[x=0,type=marker,tag=novatracker,tag=DontExplode] remove DontExplode
execute as @e[x=0,type=marker,tag=bluenovatracker,tag=!NovaLost,tag=!DontExplode] at @s if entity @e[predicate=entities:canopy,predicate=entities:origin_team/blue,distance=..7,limit=1] unless entity @e[type=firework_rocket,tag=BlueNova,limit=1,sort=nearest,distance=..5] run tag @s add CanopyIsGone
execute as @e[x=0,type=marker,tag=bluenovatracker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s if entity @e[predicate=entities:canopy,predicate=entities:origin_team/blue,distance=..7,limit=1] run tag @e[predicate=entities:canopy,predicate=entities:origin_team/blue,distance=..7,limit=1] add canopy.kill
execute as @e[x=0,type=marker,tag=bluenovatracker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s run kill @e[type=firework_rocket,tag=BlueNova,limit=1,sort=nearest,distance=..5]
execute as @e[x=0,type=marker,tag=CanopyIsGone,tag=yellownovatracker,tag=!NovaLost,tag=!DontExplode] at @s as @e[predicate=entities:canopy,predicate=entities:origin_team/blue,distance=..7,limit=1,sort=nearest] run tag @s add canopy.kill
execute as @e[x=0,type=marker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s run tag @a[team=!Lobby,team=!Spectator,distance=..10] add UtilKilled
execute if entity @s[tag=!Explosive,tag=!ClutterCollector] as @e[x=0,type=marker,tag=CanopyIsGone,tag=bluenovatracker,tag=!NovaLost,tag=!DontExplode] at @s as @e[predicate=entities:canopy,predicate=entities:origin_team/blue,distance=..7,limit=1,sort=nearest] at @s positioned ~ ~2 ~ run function custom:explosion {r:5,modifiers:{nbt:{Tags:["UtilKilled","NovaCanopy"],CustomName:"a Nova Rocket"}}}
execute if entity @s[tag=Explosive,tag=!ClutterCollector] as @e[x=0,type=marker,tag=CanopyIsGone,tag=bluenovatracker,tag=!NovaLost,tag=!DontExplode] at @s as @e[predicate=entities:canopy,predicate=entities:origin_team/blue,distance=..7,limit=1,sort=nearest] at @s positioned ~ ~2 ~ run function custom:explosion {r:7,modifiers:{nbt:{Tags:["UtilKilled","NovaCanopy"],CustomName:"a Nova Rocket"}}}
execute if entity @s[tag=ClutterCollector] as @e[x=0,type=marker,tag=CanopyIsGone,tag=bluenovatracker,tag=!NovaLost,tag=!DontExplode] at @s as @e[predicate=entities:canopy,predicate=entities:origin_team/blue,distance=..7,limit=1,sort=nearest] at @s positioned ~ ~2 ~ run function custom:explosion {r:0,modifiers:{nbt:{Tags:["UtilKilled","NovaCanopy"],CustomName:"a Nova Rocket"}}}
execute as @e[x=0,type=marker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s run tag @e[type=creeper,distance=..10,limit=1] add UtilKilled
execute as @e[x=0,type=marker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s run tag @e[type=tnt,distance=..8] add UtilKilled
execute as @e[x=0,type=marker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s store result score @e[type=creeper,limit=1,sort=nearest,distance=..8,tag=NovaCanopy] UUIDTracker run scoreboard players get @s UUIDTracker
execute as @e[x=0,type=marker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s store result score @e[type=creeper,limit=1,sort=nearest,distance=..8,tag=NovaCanopy] KillerUUID run scoreboard players get @s UUIDTracker
execute as @e[x=0,type=marker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s store result score @a[team=!Spectator,team=!Lobby,distance=..8,tag=NovaCanopy] KillerUUID run scoreboard players get @s UUIDTracker
execute as @e[x=0,type=marker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s run data modify entity @e[type=creeper,limit=1,sort=nearest,distance=..8,tag=NovaCanopy] CustomName set from entity @s CustomName
execute as @e[x=0,type=marker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s run scoreboard players set @s novatimer 31
execute as @e[x=0,type=marker,tag=CanopyIsGone,tag=!NovaLost,tag=!DontExplode] at @s run tag @s add NovaLost
execute as @e[x=0,type=marker,tag=bluenovatracker] at @s unless entity @e[type=firework_rocket,tag=BlueNova,distance=..3,limit=1,sort=nearest] run tag @s add NovaLost

#Obshields
execute as @e[x=0,type=marker,tag=blueobalone,scores={shieldplacement=6}] at @s run setblock ~1 ~2 ~ white_stained_glass_pane[east=true]
execute as @e[x=0,type=marker,tag=blueobalone,scores={shieldplacement=6}] at @s run setblock ~-1 ~2 ~ white_stained_glass_pane[west=true]
execute as @e[x=0,type=marker,tag=blueobalone,scores={shieldplacement=6}] at @s run setblock ~1 ~-2 ~ white_stained_glass_pane[east=true]
execute as @e[x=0,type=marker,tag=blueobalone,scores={shieldplacement=6}] at @s run setblock ~-1 ~-2 ~ white_stained_glass_pane[west=true]
execute as @e[x=0,type=marker,tag=blueobalone,scores={shieldplacement=6}] at @s run setblock ~-2 ~1 ~ white_stained_glass_pane[east=true]
execute as @e[x=0,type=marker,tag=blueobalone,scores={shieldplacement=6}] at @s run setblock ~-2 ~-1 ~ white_stained_glass_pane[east=true]
execute as @e[x=0,type=marker,tag=blueobalone,scores={shieldplacement=6}] at @s run setblock ~2 ~1 ~ white_stained_glass_pane[west=true]
execute as @e[x=0,type=marker,tag=blueobalone,scores={shieldplacement=6}] at @s run setblock ~2 ~-1 ~ white_stained_glass_pane[west=true]

kill @e[x=0,type=marker,scores={shieldplacement=6..}]
