#####################################################
## OBSIDIAN SHIELD: A shield made out of obsidian ##
## Spawns from a Dragon Fireball and breaks when  ##
## the central glass pane is broken three times   ##
#####################################################

#Void spawn prevention
execute as @e[x=0,type=marker,tag=BlueObshield,tag=!UnableSpawn] at @s if predicate custom:nearvoid run tag @s add void
execute as @e[x=0,type=marker,tag=BlueObshield,tag=!UnableSpawn] at @s if predicate custom:nearvoid run tag @s add UnableSpawn
execute as @e[x=0,type=marker,tag=YellowObshield,tag=!UnableSpawn] at @s if predicate custom:nearvoid run tag @s add void
execute as @e[x=0,type=marker,tag=YellowObshield,tag=!UnableSpawn] at @s if predicate custom:nearvoid run tag @s add UnableSpawn

#Roof spawn prevention
execute as @e[x=0,type=marker,tag=BlueObshield,tag=!UnableSpawn] at @s if predicate custom:verynearroof run tag @s add roof
execute as @e[x=0,type=marker,tag=BlueObshield,tag=!UnableSpawn] at @s if predicate custom:verynearroof run tag @s add UnableSpawn
execute as @e[x=0,type=marker,tag=YellowObshield,tag=!UnableSpawn] at @s if predicate custom:verynearroof run tag @s add roof
execute as @e[x=0,type=marker,tag=YellowObshield,tag=!UnableSpawn] at @s if predicate custom:verynearroof run tag @s add UnableSpawn

#Give back if prevented
execute as @e[x=0,type=marker,tag=BlueObshield,tag=UnableSpawn] run function items:prevention/unablefx
execute as @e[x=0,type=marker,tag=YellowObshield,tag=UnableSpawn] run function items:prevention/unablefx
function items:prevention/giveback

##Blue Obsidian Shield functionality
#Spawning in Fireball entities
execute as @e[x=0,type=marker,tag=BlueObshield] at @s unless block ~ ~ ~ #custom:nonsolid run tp @s ~ ~1 ~
execute as @e[x=0,type=marker,tag=BlueObshield] at @s run summon fireball ~ ~1.2 ~ {Tags:["blueobfireball","obfireball"],ExplosionPower:0,Motion:[0.0,0.0,0.0]}
execute as @e[x=0,type=marker,tag=BlueObshield] at @s run summon dragon_fireball ~ ~1.2 ~ {Tags:["blueobfireball","obfireball"],Motion:[0.0,0.0,0.0],Passengers:[{id:"minecraft:marker",Tags:["yellowobtracker"]}]}
execute as @e[x=0,type=marker,tag=BlueObshield] at @s as @a[distance=..6] run playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 1 1
execute as @e[x=0,type=marker,tag=BlueObshield] at @s as @a[distance=..6] run playsound minecraft:block.respawn_anchor.charge master @s ~ ~ ~ 0.5 1

#Detecting motion
tag @e[x=0,type=fireball,tag=blueobfireball] remove StillOb
tag @e[x=0,type=fireball,tag=blueobfireball,nbt={Motion:[0.0,0.0,0.0]}] add StillOb
execute as @e[x=0,type=fireball,tag=blueobfireball] store result score @s CmdData run data get entity @s Motion[1] 100
execute as @e[x=0,type=fireball,tag=blueobfireball] unless score @s CmdData matches 0 run tag @s remove StillOb
scoreboard players add @e[x=0,type=fireball,tag=blueobfireball,tag=!StillOb] obmove 1
scoreboard players add @e[x=0,type=dragon_fireball,tag=blueobfireball,scores={obshieldtime=1..}] obshieldtime 1
scoreboard players add @e[x=0,type=dragon_fireball,tag=blueobfireball] obshieldtime 0

#Transferring movement data from Fireball to Dragon Fireball
execute as @e[x=0,type=fireball,tag=blueobfireball,scores={obmove=1..}] at @s store result entity @e[type=dragon_fireball,tag=blueobfireball,distance=..2,limit=1,sort=nearest] Motion[0] double 0.000001 run data get entity @s Motion[0] 1000000
execute as @e[x=0,type=fireball,tag=blueobfireball,scores={obmove=1..}] at @s store result entity @e[type=dragon_fireball,tag=blueobfireball,distance=..2,limit=1,sort=nearest] Motion[1] double 0.000001 run data get entity @s Motion[1] 1000000
execute as @e[x=0,type=fireball,tag=blueobfireball,scores={obmove=1..}] at @s store result entity @e[type=dragon_fireball,tag=blueobfireball,distance=..2,limit=1,sort=nearest] Motion[2] double 0.000001 run data get entity @s Motion[2] 1000000
execute as @e[x=0,type=fireball,tag=blueobfireball,scores={obmove=1..}] at @s store result entity @e[type=dragon_fireball,tag=blueobfireball,distance=..2,limit=1,sort=nearest] power[0] double 0.000001 run data get entity @s power[0] 1000000
execute as @e[x=0,type=fireball,tag=blueobfireball,scores={obmove=1..}] at @s store result entity @e[type=dragon_fireball,tag=blueobfireball,distance=..2,limit=1,sort=nearest] power[1] double 0.000001 run data get entity @s power[1] 1000000
execute as @e[x=0,type=fireball,tag=blueobfireball,scores={obmove=1..}] at @s store result entity @e[type=dragon_fireball,tag=blueobfireball,distance=..2,limit=1,sort=nearest] power[2] double 0.000001 run data get entity @s power[2] 1000000
execute as @e[x=0,type=fireball,tag=blueobfireball,scores={obmove=1..}] at @s run scoreboard players set @e[type=dragon_fireball,tag=blueobfireball,distance=..1,limit=1,sort=nearest] obshieldtime 1
kill @e[x=0,type=fireball,tag=blueobfireball,scores={obmove=1..}]
kill @e[x=0,type=dragon_fireball,tag=blueobfireball,scores={obshieldtime=30..}]
execute as @e[x=0,type=dragon_fireball,tag=blueobfireball,scores={obshieldtime=0}] at @s unless entity @e[type=fireball,tag=blueobfireball,distance=..2,limit=1,sort=nearest] run kill @s
tag @e[x=0,type=marker,tag=blueobtracker,predicate=!custom:has_vehicle] add blueobalone
#Disable Blue Obsidian Shields inside of portals
execute unless entity @s[tag=noPortal] as @e[x=0,type=marker,tag=blueobalone] at @s if entity @s[x=-12,y=35,z=-74,dx=48,dy=25] run kill @s
execute unless entity @s[tag=noPortal] as @e[x=0,type=marker,tag=blueobalone] at @s if entity @s[x=-12,y=35,z=74,dx=48,dy=25] run kill @s
#Do the same but for Hole in One
execute unless entity @s[tag=noPortal] if entity @s[scores={PortalDeco=4},tag=!portalDecosOff] as @e[x=0,type=marker,tag=blueobalone] at @s if entity @s[x=-12,y=35,z=-75,dx=48,dy=25,dz=2] run kill @s
execute unless entity @s[tag=noPortal] if entity @s[scores={PortalDeco=4},tag=!portalDecosOff] as @e[x=0,type=marker,tag=blueobalone] at @s if entity @s[x=-12,y=35,z=73,dx=48,dy=25,dz=2] run kill @s
#Disable Blue Obsidian Shields near void
execute as @e[x=0,type=marker,tag=blueobalone] at @s if predicate custom:nearvoid run kill @s
#Disable Blue Obsidian Shields near spawnpoints
execute as @e[x=0,type=marker,tag=blueobalone] at @s if entity @e[type=marker,tag=BlueSpawnZone,distance=..3] run kill @s
execute as @e[x=0,type=marker,tag=blueobalone] at @s if entity @e[type=marker,tag=YellowSpawnZone,distance=..3] run kill @s

#Place Obsidian Shield
scoreboard players add @e[x=0,type=marker,tag=blueobalone] shieldplacement 1
execute as @e[x=0,type=marker,tag=blueobalone,scores={shieldplacement=1}] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0,Duration:2000000,Tags:["tempobshield"],Particle:"block air"}
execute as @e[x=0,type=marker,tag=blueobalone] at @s at @e[type=area_effect_cloud,tag=tempobshield,limit=1,sort=nearest,distance=..1] align xyz run function everytick:obsidian_shield_place
tp @e[x=0,type=marker,tag=BlueObshield] ~ ~-250 ~
kill @e[x=0,type=marker,tag=BlueObshield]

#Kill temporary Obsidian Shield entities in invalid locations
execute unless entity @s[tag=noPortal] as @e[x=0,type=area_effect_cloud,tag=tempobshield] at @s if entity @s[x=-12,y=35,z=-74,dx=48,dy=25] run kill @s
execute unless entity @s[tag=noPortal] as @e[x=0,type=area_effect_cloud,tag=tempobshield] at @s if entity @s[x=-12,y=35,z=74,dx=48,dy=25] run kill @s
execute as @e[x=0,type=area_effect_cloud,tag=tempobshield] at @s if predicate custom:nearvoid run kill @s
execute as @e[x=0,type=area_effect_cloud,tag=tempobshield] at @s if entity @e[type=marker,tag=BlueSpawnZone,distance=..3] run kill @s
execute as @e[x=0,type=area_effect_cloud,tag=tempobshield] at @s if entity @e[type=marker,tag=YellowSpawnZone,distance=..3] run kill @s

##Yellow Obsidian Shield functionality
#Spawning in Fireball entities
execute as @e[x=0,type=marker,tag=YellowObshield] at @s unless block ~ ~ ~ #custom:nonsolid run tp @s ~ ~1 ~
execute as @e[x=0,type=marker,tag=YellowObshield] at @s run summon fireball ~ ~1.2 ~ {Tags:["yellowobfireball","obfireball"],ExplosionPower:0,Motion:[0.0,0.0,0.0]}
execute as @e[x=0,type=marker,tag=YellowObshield] at @s run summon dragon_fireball ~ ~1.2 ~ {Tags:["yellowobfireball","obfireball"],Motion:[0.0,0.0,0.0],Passengers:[{id:"minecraft:marker",Tags:["yellowobtracker"]}]}
execute as @e[x=0,type=marker,tag=YellowObshield] at @s as @a[distance=..6] run playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 1 1
execute as @e[x=0,type=marker,tag=YellowObshield] at @s as @a[distance=..6] run playsound minecraft:block.respawn_anchor.charge master @s ~ ~ ~ 0.5 1
execute as @e[x=0,type=fireball,tag=yellowobfireball,tag=!headreplaced] run data merge entity @s {Item:{id:"minecraft:air",Count:1b}}
tag @e[x=0,type=fireball,tag=yellowobfireball,tag=!headreplaced] add headreplaced

#Detecting motion
tag @e[x=0,type=fireball,tag=yellowobfireball] remove StillOb
tag @e[x=0,type=fireball,tag=yellowobfireball,nbt={Motion:[0.0,0.0,0.0]}] add StillOb
execute as @e[x=0,type=fireball,tag=yellowobfireball] store result score @s CmdData run data get entity @s Motion[1] 100
execute as @e[x=0,type=fireball,tag=yellowobfireball] unless score @s CmdData matches 0 run tag @s remove StillOb
scoreboard players add @e[x=0,type=fireball,tag=yellowobfireball,tag=!StillOb] obmove 1
scoreboard players add @e[x=0,type=dragon_fireball,tag=yellowobfireball,scores={obshieldtime=1..}] obshieldtime 1
scoreboard players add @e[x=0,type=dragon_fireball,tag=yellowobfireball] obshieldtime 0

#Storing movement data
execute as @e[x=0,type=fireball,tag=yellowobfireball,scores={obmove=1..}] at @s store result entity @e[type=dragon_fireball,tag=yellowobfireball,distance=..2,limit=1,sort=nearest] Motion[0] double 0.000001 run data get entity @s Motion[0] 1000000
execute as @e[x=0,type=fireball,tag=yellowobfireball,scores={obmove=1..}] at @s store result entity @e[type=dragon_fireball,tag=yellowobfireball,distance=..2,limit=1,sort=nearest] Motion[1] double 0.000001 run data get entity @s Motion[1] 1000000
execute as @e[x=0,type=fireball,tag=yellowobfireball,scores={obmove=1..}] at @s store result entity @e[type=dragon_fireball,tag=yellowobfireball,distance=..2,limit=1,sort=nearest] Motion[2] double 0.000001 run data get entity @s Motion[2] 1000000
execute as @e[x=0,type=fireball,tag=yellowobfireball,scores={obmove=1..}] at @s store result entity @e[type=dragon_fireball,tag=yellowobfireball,distance=..2,limit=1,sort=nearest] power[0] double 0.000001 run data get entity @s power[0] 1000000
execute as @e[x=0,type=fireball,tag=yellowobfireball,scores={obmove=1..}] at @s store result entity @e[type=dragon_fireball,tag=yellowobfireball,distance=..2,limit=1,sort=nearest] power[1] double 0.000001 run data get entity @s power[1] 1000000
execute as @e[x=0,type=fireball,tag=yellowobfireball,scores={obmove=1..}] at @s store result entity @e[type=dragon_fireball,tag=yellowobfireball,distance=..2,limit=1,sort=nearest] power[2] double 0.000001 run data get entity @s power[2] 1000000
execute as @e[x=0,type=fireball,tag=yellowobfireball,scores={obmove=1..}] at @s run scoreboard players set @e[type=dragon_fireball,tag=yellowobfireball,distance=..1,limit=1,sort=nearest] obshieldtime 1
kill @e[x=0,type=fireball,tag=yellowobfireball,scores={obmove=1..}]
kill @e[x=0,type=dragon_fireball,tag=yellowobfireball,scores={obshieldtime=30..}]
execute as @e[x=0,type=dragon_fireball,tag=yellowobfireball,scores={obshieldtime=0}] at @s unless entity @e[type=fireball,tag=yellowobfireball,distance=..2,limit=1,sort=nearest] run kill @s
tag @e[x=0,type=marker,tag=yellowobtracker,predicate=!custom:has_vehicle] add yellowobalone
#Disable Yellow Obsidian Shields inside of portals
execute unless entity @s[tag=noPortal] as @e[x=0,type=marker,tag=yellowobalone] at @s if entity @s[x=-12,y=35,z=-74,dx=48,dy=25] run kill @s
execute unless entity @s[tag=noPortal] as @e[x=0,type=marker,tag=yellowobalone] at @s if entity @s[x=-12,y=35,z=74,dx=48,dy=25] run kill @s
#Do the same but for Hole in One
execute unless entity @s[tag=noPortal] if entity @s[scores={PortalDeco=4},tag=!portalDecosOff] as @e[x=0,type=marker,tag=yellowobalone] at @s if entity @s[x=-12,y=35,z=-75,dx=48,dy=25,dz=2] run kill @s
execute unless entity @s[tag=noPortal] if entity @s[scores={PortalDeco=4},tag=!portalDecosOff] as @e[x=0,type=marker,tag=yellowobalone] at @s if entity @s[x=-12,y=35,z=73,dx=48,dy=25,dz=2] run kill @s
#Disable Yellow Obsidian Shields near void
execute as @e[x=0,type=marker,tag=yellowobalone] at @s if predicate custom:nearvoid run kill @s
#Disable Yellow Obsidian Shields near spawnpoints
execute as @e[x=0,type=marker,tag=yellowobalone] at @s if entity @e[type=marker,tag=BlueSpawnZone,distance=..3] run kill @s
execute as @e[x=0,type=marker,tag=yellowobalone] at @s if entity @e[type=marker,tag=YellowSpawnZone,distance=..3] run kill @s

#Place Obsidian Shield
scoreboard players add @e[x=0,type=marker,tag=yellowobalone] shieldplacement 1
execute as @e[x=0,type=marker,tag=yellowobalone,scores={shieldplacement=1}] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0,Duration:2000000,Tags:["tempobshield"],Particle:"block air"}
execute as @e[x=0,type=marker,tag=yellowobalone] at @s at @e[type=area_effect_cloud,tag=tempobshield,limit=1,sort=nearest,distance=..1] align xyz run function everytick:obsidian_shield_place
tp @e[x=0,type=marker,tag=YellowObshield] ~ ~-250 ~
kill @e[x=0,type=marker,tag=YellowObshield]

##General Obsidian Shield functionality
#Thanks @Maxaxik for this fix!!! Makes animations smoother
scoreboard players add obShield obshieldTick 1
execute if score obShield obshieldTick matches 1 as @e[x=0,type=dragon_fireball] run data merge entity @s {Air:0}
execute if score obShield obshieldTick matches 2 as @e[x=0,type=dragon_fireball] run data merge entity @s {Air:1}
execute if score obShield obshieldTick matches 2 run scoreboard players set obShield obshieldTick 0

#Obsidian Shield Break
execute as @e[x=0,type=marker,tag=blueobsidianshield,scores={breakobshield=..0}] at @s unless block ~ ~ ~ minecraft:purple_stained_glass_pane unless block ~ ~ ~ minecraft:crying_obsidian run scoreboard players set @s breakobshield 1
execute as @e[x=0,type=marker,tag=yellowobsidianshield,scores={breakobshield=..0}] at @s unless block ~ ~ ~ minecraft:purple_stained_glass_pane unless block ~ ~ ~ minecraft:crying_obsidian run scoreboard players set @s breakobshield 1
execute as @e[x=0,type=marker,scores={breakobshield=1}] at @s run playsound block.respawn_anchor.deplete master @a[x=0] ~ ~ ~ 2 1
execute as @e[x=0,type=marker,scores={breakobshield=1}] at @s run setblock ~ ~ ~ minecraft:magenta_stained_glass_pane[west=true,east=true]
execute as @e[x=0,type=marker,scores={breakobshield=1}] run scoreboard players set @e[x=0,type=marker,scores={breakobshield=1}] breakobshield 2
execute as @e[x=0,type=marker,scores={breakobshield=2}] at @s if score $dust CmdData matches 1 run particle block crying_obsidian ~ ~ ~ 1 1 0.4 0.1 5 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute as @e[x=0,type=marker,scores={breakobshield=2}] at @s unless block ~ ~ ~ minecraft:magenta_stained_glass_pane unless block ~ ~ ~ minecraft:crying_obsidian run scoreboard players set @s breakobshield 3
execute as @e[x=0,type=marker,scores={breakobshield=3}] at @s run playsound block.respawn_anchor.deplete master @a[x=0] ~ ~ ~ 2 1.2
execute as @e[x=0,type=marker,scores={breakobshield=3}] at @s run setblock ~ ~ ~ minecraft:pink_stained_glass_pane[west=true,east=true]
execute as @e[x=0,type=marker,scores={breakobshield=3}] at @s run scoreboard players set @s breakobshield 4
execute as @e[x=0,type=marker,scores={breakobshield=4}] at @s if score $dust CmdData matches 1 run particle block crying_obsidian ~ ~ ~ 1 1 0 0.1 25 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute as @e[x=0,type=marker,scores={breakobshield=4}] at @s unless block ~ ~ ~ minecraft:pink_stained_glass_pane unless block ~ ~ ~ minecraft:crying_obsidian run scoreboard players set @s breakobshield 5
execute as @e[x=0,type=marker,scores={breakobshield=5}] at @s run playsound block.respawn_anchor.deplete master @a[x=0] ~ ~ ~ 2 1.4
execute as @e[x=0,type=marker,scores={breakobshield=5..}] run scoreboard players add @s breakobshield 1
execute as @e[x=0,type=marker,scores={breakobshield=20}] at @s run function everytick:obsidian_shield_break

#Hotfix for replacing obsidian spawned by adjacent Obsidian Shield
execute as @e[x=0,type=marker,tag=blueobsidianshield,scores={breakobshield=..0}] at @s if block ~ ~ ~ crying_obsidian run setblock ~ ~ ~ purple_stained_glass_pane[west=true,east=true]
execute as @e[x=0,type=marker,tag=yellowobsidianshield,scores={breakobshield=..0}] at @s if block ~ ~ ~ crying_obsidian run setblock ~ ~ ~ purple_stained_glass_pane[west=true,east=true]
execute as @e[x=0,type=marker,scores={breakobshield=2}] at @s if block ~ ~ ~ crying_obsidian run setblock ~ ~ ~ magenta_stained_glass_pane[west=true,east=true]
execute as @e[x=0,type=marker,scores={breakobshield=4}] at @s if block ~ ~ ~ crying_obsidian run setblock ~ ~ ~ pink_stained_glass_pane[west=true,east=true]

#Obsidian Shields break duped glass panes
execute as @e[x=0,type=marker,scores={breakobshield=0..}] at @s positioned ~ ~ ~-1 if block ~ ~ ~ #custom:obshieldreplace unless entity @e[type=marker,scores={breakobshield=0..},limit=1,sort=nearest,distance=..0.5] run setblock ~ ~ ~ air destroy
execute as @e[x=0,type=marker,scores={breakobshield=0..}] at @s positioned ~ ~ ~1 if block ~ ~ ~ #custom:obshieldreplace unless entity @e[type=marker,scores={breakobshield=0..},limit=1,sort=nearest,distance=..0.5] run setblock ~ ~ ~ air destroy