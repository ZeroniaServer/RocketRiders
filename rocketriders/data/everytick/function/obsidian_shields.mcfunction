#####################################################
## OBSIDIAN SHIELD: A shield made out of obsidian ##
## Spawns from a Dragon Fireball and breaks when  ##
## the central glass pane is broken three times   ##
#####################################################

##Blue Obsidian Shield functionality
#Detecting motion
scoreboard players add @e[x=0,type=dragon_fireball,tag=blueobfireball,predicate=!custom:not_moving] obshieldtime 1
kill @e[x=0,type=dragon_fireball,tag=blueobfireball,scores={obshieldtime=30..}]
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
execute as @e[x=0,type=marker,tag=blueobalone] at @s align xyz run function everytick:obsidian_shield_place
tp @e[x=0,type=marker,tag=BlueObshield] ~ ~-250 ~
kill @e[x=0,type=marker,tag=BlueObshield]

##Yellow Obsidian Shield functionality
#Detecting motion
scoreboard players add @e[x=0,type=dragon_fireball,tag=yellowobfireball,predicate=!custom:not_moving] obshieldtime 1
kill @e[x=0,type=dragon_fireball,tag=yellowobfireball,scores={obshieldtime=30..}]
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
execute as @e[x=0,type=marker,tag=yellowobalone] at @s align xyz run function everytick:obsidian_shield_place
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
execute as @e[x=0,type=marker,scores={breakobshield=2}] at @s if score $dust CmdData matches 1 run particle minecraft:block{block_state:"minecraft:crying_obsidian"} ~ ~ ~ 1 1 0.4 0.1 5 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute as @e[x=0,type=marker,scores={breakobshield=2}] at @s unless block ~ ~ ~ minecraft:magenta_stained_glass_pane unless block ~ ~ ~ minecraft:crying_obsidian run scoreboard players set @s breakobshield 3
execute as @e[x=0,type=marker,scores={breakobshield=3}] at @s run playsound block.respawn_anchor.deplete master @a[x=0] ~ ~ ~ 2 1.2
execute as @e[x=0,type=marker,scores={breakobshield=3}] at @s run setblock ~ ~ ~ minecraft:pink_stained_glass_pane[west=true,east=true]
execute as @e[x=0,type=marker,scores={breakobshield=3}] at @s run scoreboard players set @s breakobshield 4
execute as @e[x=0,type=marker,scores={breakobshield=4}] at @s if score $dust CmdData matches 1 run particle minecraft:block{block_state:"minecraft:crying_obsidian"} ~ ~ ~ 1 1 0 0.1 25 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
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