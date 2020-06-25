#####################################################
## OBSIDIAN SHIELD: A shield made out of obsidian ##
## Spawns from a Dragon Fireball and breaks when  ##
## the central glass pane is broken three times   ##
#####################################################

##Blue Obsidian Shield functionality
#Spawning in Fireball entities
execute as @e[tag=BlueObshield] at @s run summon fireball ~ ~1.2 ~ {Tags:["blueobfireball","obfireball","NoMotionD"],ExplosionPower:0,direction:[0.0,0.0,0.0]}
execute as @e[tag=BlueObshield] at @s run summon dragon_fireball ~ ~1.2 ~ {Tags:["blueobfireball","obfireball","NoMotionD"],ExplosionPower:0,direction:[0.0,0.0,0.0]}

#Detecting motion
tag @e[type=fireball,tag=blueobfireball,nbt={Motion:[0.0,0.0,0.0]},tag=!StillOb] add StillOb
execute as @e[type=fireball,tag=blueobfireball,tag=!StillOb,tag=NoMotionD] at @s run kill @e[tag=ObFireballAS,distance=..2,limit=2,sort=nearest]
execute as @e[type=fireball,tag=blueobfireball,tag=!StillOb,tag=NoMotionD] at @s run tag @s remove NoMotionD
scoreboard players set @e[type=fireball,tag=blueobfireball] obmove 1
scoreboard players set @e[type=fireball,tag=blueobfireball,nbt={power:[0.0,0.0,0.0]}] obmove 0
scoreboard players add @e[type=dragon_fireball,tag=blueobfireball,scores={obshieldtime=1..}] obshieldtime 1
scoreboard players add @e[type=dragon_fireball,tag=blueobfireball] obshieldtime 0
tag @e[tag=blueobfireball,tag=StillOb] remove StillOb

#Transferring movement data from Fireball to Dragon Fireball
execute as @e[type=fireball,tag=blueobfireball,scores={obmove=1..}] at @s store result entity @e[type=dragon_fireball,tag=blueobfireball,distance=..2,limit=1,sort=nearest] Motion[0] double 0.000001 run data get entity @s Motion[0] 1000000
execute as @e[type=fireball,tag=blueobfireball,scores={obmove=1..}] at @s store result entity @e[type=dragon_fireball,tag=blueobfireball,distance=..2,limit=1,sort=nearest] Motion[1] double 0.000001 run data get entity @s Motion[1] 1000000
execute as @e[type=fireball,tag=blueobfireball,scores={obmove=1..}] at @s store result entity @e[type=dragon_fireball,tag=blueobfireball,distance=..2,limit=1,sort=nearest] Motion[2] double 0.000001 run data get entity @s Motion[2] 1000000
execute as @e[type=fireball,tag=blueobfireball,scores={obmove=1..}] at @s store result entity @e[type=dragon_fireball,tag=blueobfireball,distance=..2,limit=1,sort=nearest] power[0] double 0.000001 run data get entity @s power[0] 1000000
execute as @e[type=fireball,tag=blueobfireball,scores={obmove=1..}] at @s store result entity @e[type=dragon_fireball,tag=blueobfireball,distance=..2,limit=1,sort=nearest] power[1] double 0.000001 run data get entity @s power[1] 1000000
execute as @e[type=fireball,tag=blueobfireball,scores={obmove=1..}] at @s store result entity @e[type=dragon_fireball,tag=blueobfireball,distance=..2,limit=1,sort=nearest] power[2] double 0.000001 run data get entity @s power[2] 1000000
execute as @e[type=fireball,tag=blueobfireball,scores={obmove=1..}] at @s run scoreboard players set @e[type=dragon_fireball,tag=blueobfireball,distance=..1,limit=1,sort=nearest] obshieldtime 1
kill @e[type=fireball,tag=blueobfireball,scores={obmove=1..}]
kill @e[type=dragon_fireball,tag=blueobfireball,scores={obshieldtime=30..}]
execute as @e[type=dragon_fireball,tag=blueobfireball,scores={obshieldtime=0}] at @s unless entity @e[type=fireball,tag=blueobfireball,distance=..2,limit=1,sort=nearest] run kill @s
execute as @e[type=dragon_fireball,tag=blueobfireball,scores={obshieldtime=1}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Small:1b,DisabledSlots:2039583,Tags:["blueobtracker"]}
execute as @e[type=dragon_fireball,tag=blueobfireball,scores={obshieldtime=1..}] at @s run tp @e[type=armor_stand,tag=blueobtracker,distance=..2,limit=1,sort=nearest] @s
tag @e[type=armor_stand,tag=blueobtracker] add blueobalone
execute as @e[type=armor_stand,tag=blueobtracker,tag=blueobalone] at @s if entity @e[type=dragon_fireball,tag=blueobfireball,scores={obshieldtime=1..},distance=..4,limit=1,sort=nearest] run tag @s remove blueobalone
#Next 2 commands disable Blue Obsidian Shields inside of portals
execute as @e[type=armor_stand,tag=blueobalone] at @s if entity @s[x=-12,y=35,z=-74,dx=48,dy=25] run kill @s
execute as @e[type=armor_stand,tag=blueobalone] at @s if entity @s[x=-12,y=35,z=74,dx=48,dy=25] run kill @s

#Deploy animation/effects
scoreboard players add @e[tag=blueobalone] shieldplacement 1
execute as @e[type=armor_stand,tag=blueobalone,scores={shieldplacement=1}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-1,posZ:0,name:"minecraft:obshield1"}
execute as @e[type=armor_stand,tag=blueobalone,scores={shieldplacement=1}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[type=armor_stand,tag=blueobalone,scores={shieldplacement=1}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[type=armor_stand,tag=blueobalone,scores={shieldplacement=1}] at @s run playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~ 2 1
execute as @e[type=armor_stand,tag=blueobalone,scores={shieldplacement=3}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-1,posZ:0,name:"minecraft:obshield2"}
execute as @e[type=armor_stand,tag=blueobalone,scores={shieldplacement=3}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[type=armor_stand,tag=blueobalone,scores={shieldplacement=3}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[type=armor_stand,tag=blueobalone,scores={shieldplacement=3}] at @s run playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~ 2 1
execute as @e[type=armor_stand,tag=blueobalone,scores={shieldplacement=5}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-2,posZ:0,name:"minecraft:obshieldblue"}
execute as @e[type=armor_stand,tag=blueobalone,scores={shieldplacement=5}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[type=armor_stand,tag=blueobalone,scores={shieldplacement=5}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[type=armor_stand,tag=blueobalone,scores={shieldplacement=5}] at @s run setblock ~ ~-1 ~ crying_obsidian
execute as @e[type=armor_stand,tag=blueobalone,scores={shieldplacement=5}] at @s run playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 2 1
execute as @e[type=armor_stand,tag=blueobalone,scores={shieldplacement=5}] at @s run playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~ 2 1
execute as @e[type=armor_stand,tag=blueobalone,scores={shieldplacement=5}] at @s align xyz positioned ~0.5 ~0.25 ~0.5 run summon area_effect_cloud ~ ~ ~ {Tags:["blueobsidianshield"],Duration:2000000000}
execute as @e[type=armor_stand,tag=blueobalone,scores={shieldplacement=5}] at @s run scoreboard players set @e[tag=blueobsidianshield,sort=nearest,limit=1,distance=..3] breakobshield 0
kill @e[type=armor_stand,tag=blueobalone,scores={shieldplacement=5..}]
tp @e[tag=BlueObshield] ~ ~-250 ~
kill @e[tag=BlueObshield]

##Yellow Obsidian Shield functionality
#Spawning in Fireball entities
execute as @e[tag=YellowObshield] at @s run summon fireball ~ ~1.2 ~ {Tags:["yellowobfireball","obfireball","NoMotionD"],ExplosionPower:0,Motion:[0.0,0.0,0.0]}
execute as @e[tag=YellowObshield] at @s run summon dragon_fireball ~ ~1.2 ~ {Tags:["yellowobfireball","obfireball","NoMotionD"],ExplosionPower:0,Motion:[0.0,0.0,0.0]}

#Detecting motion
tag @e[type=fireball,tag=yellowobfireball,nbt={Motion:[0.0,0.0,0.0]},tag=!StillOb] add StillOb
execute as @e[type=fireball,tag=yellowobfireball,tag=!StillOb,tag=NoMotionD] at @s run kill @e[tag=ObFireballAS,distance=..2,limit=2,sort=nearest]
execute as @e[type=fireball,tag=yellowobfireball,tag=!StillOb,tag=NoMotionD] at @s run tag @s remove NoMotionD
scoreboard players set @e[type=fireball,tag=yellowobfireball] obmove 1
scoreboard players set @e[type=fireball,tag=yellowobfireball,nbt={power:[0.0,0.0,0.0]}] obmove 0
scoreboard players add @e[type=dragon_fireball,tag=yellowobfireball,scores={obshieldtime=1..}] obshieldtime 1
scoreboard players add @e[type=dragon_fireball,tag=yellowobfireball] obshieldtime 0
tag @e[tag=yellowobfireball,tag=StillOb] remove StillOb

#Storing movement data
execute as @e[type=fireball,tag=yellowobfireball,scores={obmove=1..}] at @s store result entity @e[type=dragon_fireball,tag=yellowobfireball,distance=..2,limit=1,sort=nearest] Motion[0] double 0.000001 run data get entity @s Motion[0] 1000000
execute as @e[type=fireball,tag=yellowobfireball,scores={obmove=1..}] at @s store result entity @e[type=dragon_fireball,tag=yellowobfireball,distance=..2,limit=1,sort=nearest] Motion[1] double 0.000001 run data get entity @s Motion[1] 1000000
execute as @e[type=fireball,tag=yellowobfireball,scores={obmove=1..}] at @s store result entity @e[type=dragon_fireball,tag=yellowobfireball,distance=..2,limit=1,sort=nearest] Motion[2] double 0.000001 run data get entity @s Motion[2] 1000000
execute as @e[type=fireball,tag=yellowobfireball,scores={obmove=1..}] at @s store result entity @e[type=dragon_fireball,tag=yellowobfireball,distance=..2,limit=1,sort=nearest] power[0] double 0.000001 run data get entity @s power[0] 1000000
execute as @e[type=fireball,tag=yellowobfireball,scores={obmove=1..}] at @s store result entity @e[type=dragon_fireball,tag=yellowobfireball,distance=..2,limit=1,sort=nearest] power[1] double 0.000001 run data get entity @s power[1] 1000000
execute as @e[type=fireball,tag=yellowobfireball,scores={obmove=1..}] at @s store result entity @e[type=dragon_fireball,tag=yellowobfireball,distance=..2,limit=1,sort=nearest] power[2] double 0.000001 run data get entity @s power[2] 1000000
execute as @e[type=fireball,tag=yellowobfireball,scores={obmove=1..}] at @s run scoreboard players set @e[type=dragon_fireball,tag=yellowobfireball,distance=..1,limit=1,sort=nearest] obshieldtime 1
kill @e[type=fireball,tag=yellowobfireball,scores={obmove=1..}]
kill @e[type=dragon_fireball,tag=yellowobfireball,scores={obshieldtime=30..}]
execute as @e[type=dragon_fireball,tag=yellowobfireball,scores={obshieldtime=0}] at @s unless entity @e[type=fireball,tag=yellowobfireball,distance=..2,limit=1,sort=nearest] run kill @s
execute as @e[type=dragon_fireball,tag=yellowobfireball,scores={obshieldtime=1..1}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Small:1b,DisabledSlots:2039583,Tags:["yellowobtracker"]}
execute as @e[type=dragon_fireball,tag=yellowobfireball,scores={obshieldtime=1..}] at @s run tp @e[type=armor_stand,tag=yellowobtracker,distance=..2,limit=1,sort=nearest] @s
tag @e[type=armor_stand,tag=yellowobtracker] add yellowobalone
execute as @e[type=armor_stand,tag=yellowobtracker,tag=yellowobalone] at @s if entity @e[type=dragon_fireball,tag=yellowobfireball,scores={obshieldtime=1..},distance=..4,limit=1,sort=nearest] run tag @s remove yellowobalone
#Next 2 commands disable Yellow Obsidian Shields inside of portals
execute as @e[type=armor_stand,tag=yellowobalone] at @s if entity @s[x=-12,y=35,z=-74,dx=48,dy=25] run kill @s
execute as @e[type=armor_stand,tag=yellowobalone] at @s if entity @s[x=-12,y=35,z=74,dx=48,dy=25] run kill @s

#Deploy animation/sounds
scoreboard players add @e[tag=yellowobalone] shieldplacement 1
execute as @e[type=armor_stand,tag=yellowobalone,scores={shieldplacement=1}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-1,posZ:0,name:"minecraft:obshield1"}
execute as @e[type=armor_stand,tag=yellowobalone,scores={shieldplacement=1}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[type=armor_stand,tag=yellowobalone,scores={shieldplacement=1}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[type=armor_stand,tag=yellowobalone,scores={shieldplacement=1}] at @s run playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~ 2 1
execute as @e[type=armor_stand,tag=yellowobalone,scores={shieldplacement=3}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-1,posZ:0,name:"minecraft:obshield2"}
execute as @e[type=armor_stand,tag=yellowobalone,scores={shieldplacement=3}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[type=armor_stand,tag=yellowobalone,scores={shieldplacement=3}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[type=armor_stand,tag=yellowobalone,scores={shieldplacement=3}] at @s run playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~ 2 1
execute as @e[type=armor_stand,tag=yellowobalone,scores={shieldplacement=5}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-2,posZ:0,name:"minecraft:obshieldyellow"}
execute as @e[type=armor_stand,tag=yellowobalone,scores={shieldplacement=5}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[type=armor_stand,tag=yellowobalone,scores={shieldplacement=5}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[type=armor_stand,tag=yellowobalone,scores={shieldplacement=5}] at @s run setblock ~ ~-1 ~ crying_obsidian
execute as @e[type=armor_stand,tag=yellowobalone,scores={shieldplacement=5}] at @s run playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 2 1
execute as @e[type=armor_stand,tag=yellowobalone,scores={shieldplacement=5}] at @s run playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~ 2 1
execute as @e[type=armor_stand,tag=yellowobalone,scores={shieldplacement=5}] at @s align xyz positioned ~0.5 ~0.25 ~0.5 run summon area_effect_cloud ~ ~ ~ {Tags:["yellowobsidianshield"],Duration:2000000000}
execute as @e[type=armor_stand,tag=yellowobalone,scores={shieldplacement=5}] at @s run scoreboard players set @e[tag=yellowobsidianshield,sort=nearest,limit=1,distance=..3] breakobshield 0
kill @e[type=armor_stand,tag=yellowobalone,scores={shieldplacement=5..}]
tp @e[tag=YellowObshield] ~ ~-250 ~
kill @e[tag=YellowObshield]

##General Obsidian Shield functionality
#Thanks @Maxaxik for this fix!!! Makes animations smoother
scoreboard players add obShield obshieldTick 1
execute if score obShield obshieldTick matches 1 as @e[type=dragon_fireball] run data merge entity @s {Air:0}
execute if score obShield obshieldTick matches 2 as @e[type=dragon_fireball] run data merge entity @s {Air:1}
execute if score obShield obshieldTick matches 2 run scoreboard players set obShield obshieldTick 0

#Remove dragon breath
kill @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}]

#Obsidian Shield Break
execute as @e[tag=blueobsidianshield,scores={breakobshield=..0}] at @s unless block ~ ~ ~ minecraft:purple_stained_glass_pane unless block ~ ~ ~ minecraft:crying_obsidian run scoreboard players set @s breakobshield 1
execute as @e[tag=yellowobsidianshield,scores={breakobshield=..0}] at @s unless block ~ ~ ~ minecraft:purple_stained_glass_pane unless block ~ ~ ~ minecraft:crying_obsidian run scoreboard players set @s breakobshield 1
execute as @e[scores={breakobshield=1}] at @s run playsound block.respawn_anchor.deplete player @a ~ ~ ~ 2 1
execute as @e[scores={breakobshield=1}] at @s run setblock ~ ~ ~ minecraft:magenta_stained_glass_pane[west=true,east=true]
execute as @e[scores={breakobshield=1}] run scoreboard players set @e[scores={breakobshield=1}] breakobshield 2
execute as @e[scores={breakobshield=2}] at @s run particle block crying_obsidian ~ ~ ~ 1 1 0.4 0.1 5 force @a
execute as @e[scores={breakobshield=2}] at @s unless block ~ ~ ~ minecraft:magenta_stained_glass_pane unless block ~ ~ ~ minecraft:crying_obsidian run scoreboard players set @s breakobshield 3
execute as @e[scores={breakobshield=3}] at @s run playsound block.respawn_anchor.deplete player @a ~ ~ ~ 2 1.2
execute as @e[scores={breakobshield=3}] at @s run setblock ~ ~ ~ minecraft:pink_stained_glass_pane[west=true,east=true]
execute as @e[scores={breakobshield=3}] at @s run scoreboard players set @s breakobshield 4
execute as @e[scores={breakobshield=4}] at @s run particle block crying_obsidian ~ ~ ~ 1 1 0 0.1 25 force @a
execute as @e[scores={breakobshield=4}] at @s unless block ~ ~ ~ minecraft:pink_stained_glass_pane unless block ~ ~ ~ minecraft:crying_obsidian run scoreboard players set @s breakobshield 5
execute as @e[scores={breakobshield=5}] at @s run playsound block.respawn_anchor.deplete player @a ~ ~ ~ 2 1.4
execute as @e[scores={breakobshield=5..}] run scoreboard players add @s breakobshield 1
execute as @e[scores={breakobshield=20}] at @s run function everytick:obsidian_shield_break

#Hotfix for replacing obsidian spawned by adjacent Obsidian Shield
execute as @e[tag=blueobsidianshield,scores={breakobshield=..0}] at @s if block ~ ~ ~ crying_obsidian run setblock ~ ~ ~ purple_stained_glass_pane[west=true,east=true]
execute as @e[tag=yellowobsidianshield,scores={breakobshield=..0}] at @s if block ~ ~ ~ crying_obsidian run setblock ~ ~ ~ purple_stained_glass_pane[west=true,east=true]
execute as @e[scores={breakobshield=2}] at @s if block ~ ~ ~ crying_obsidian run setblock ~ ~ ~ magenta_stained_glass_pane[west=true,east=true]
execute as @e[scores={breakobshield=4}] at @s if block ~ ~ ~ crying_obsidian run setblock ~ ~ ~ pink_stained_glass_pane[west=true,east=true]

#Obsidian Shields break duped glass panes
execute as @e[scores={breakobshield=0..}] at @s positioned ~ ~ ~-1 if block ~ ~ ~ #custom:obshieldreplace unless entity @e[scores={breakobshield=0..},limit=1,sort=nearest,distance=..0.5] run setblock ~ ~ ~ air destroy
execute as @e[scores={breakobshield=0..}] at @s positioned ~ ~ ~1 if block ~ ~ ~ #custom:obshieldreplace unless entity @e[scores={breakobshield=0..},limit=1,sort=nearest,distance=..0.5] run setblock ~ ~ ~ air destroy