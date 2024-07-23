######################################
## SHIELD: A throwable glass shield ##
## Blocks most missiles in its path ##
######################################

##Identify snowballs as Shields
execute as @a[x=0,team=Yellow,scores={ThrowShield=1..}] at @s run tag @e[type=snowball,limit=1,sort=nearest,distance=..5,tag=!YellowShield,tag=!BlueShield,tag=!NullShield] add YellowShield
execute as @a[x=0,team=Blue,scores={ThrowShield=1..}] at @s run tag @e[type=snowball,limit=1,sort=nearest,distance=..5,tag=!YellowShield,tag=!BlueShield,tag=!NullShield] add BlueShield
scoreboard players reset @a[x=0] ThrowShield

##Yellow Shield functionality
execute as @e[x=0,type=snowball,tag=YellowShield] at @s if score $dust CmdData matches 1 run particle minecraft:dust{color:[1,1,0],scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
scoreboard players add @e[x=0,type=snowball,tag=YellowShield] shieldtest 1
#Next 2 commands disable Yellow Shields inside of portals
execute unless entity @s[tag=noPortal] as @e[x=0,type=snowball,tag=YellowShield,scores={shieldtest=19..20}] at @s if entity @s[x=-12,y=33,z=-74,dx=48,dy=28] run scoreboard players remove @s shieldtest 1
execute unless entity @s[tag=noPortal] as @e[x=0,type=snowball,tag=YellowShield,scores={shieldtest=19..20}] at @s if entity @s[x=-12,y=33,z=74,dx=48,dy=28] run scoreboard players remove @s shieldtest 1
#Disable Yellow Shields near void
execute as @e[x=0,type=snowball,tag=YellowShield] at @s if predicate custom:nearvoid run scoreboard players remove @s shieldtest 1
#Disable Yellow Shields near spawnpoints
execute as @e[x=0,type=snowball,tag=YellowShield] at @s if entity @e[type=marker,tag=YellowSpawnZone,distance=..3] run scoreboard players remove @s shieldtest 1
execute as @e[x=0,type=snowball,tag=YellowShield] at @s if entity @e[type=marker,tag=BlueSpawnZone,distance=..3] run scoreboard players remove @s shieldtest 1

execute as @e[x=0,type=snowball,tag=YellowShield,scores={shieldtest=20}] at @s run summon marker ~ ~ ~ {Tags:["PlaceYellowShield"]}
scoreboard players add @e[x=0,type=marker,tag=PlaceYellowShield] shieldplacement 1
execute as @e[x=0,type=marker,tag=PlaceYellowShield,scores={shieldplacement=1}] run data modify storage rocketriders:shieldpos x prepend from entity @s Pos[0]
execute as @e[x=0,type=marker,tag=PlaceYellowShield,scores={shieldplacement=1}] run data modify storage rocketriders:shieldpos y prepend from entity @s Pos[1]
execute as @e[x=0,type=marker,tag=PlaceYellowShield,scores={shieldplacement=1}] run data modify storage rocketriders:shieldpos z prepend from entity @s Pos[2]
execute as @e[x=0,type=marker,tag=PlaceYellowShield,scores={shieldplacement=1}] run scoreboard players add @e[x=0,type=armor_stand,tag=Selection,limit=1] shieldCount 1
execute as @e[x=0,type=marker,tag=PlaceYellowShield,scores={shieldplacement=1}] at @s run place template yellowshield1 ~-1 ~-1 ~
execute as @e[x=0,type=marker,tag=PlaceYellowShield,scores={shieldplacement=1}] at @s run playsound block.glass.break master @a[x=0] ~ ~ ~ 2 0.6
execute as @e[x=0,type=marker,tag=PlaceYellowShield,scores={shieldplacement=1}] at @s run playsound item.shield.break master @a[x=0] ~ ~ ~ 2 2
execute as @e[x=0,type=marker,tag=PlaceYellowShield,scores={shieldplacement=2}] at @s run place template yellowshield2 ~-2 ~-2 ~
execute as @e[x=0,type=marker,tag=PlaceYellowShield,scores={shieldplacement=2}] at @s run playsound block.glass.break master @a[x=0] ~ ~ ~ 2 0.6
execute as @e[x=0,type=marker,tag=PlaceYellowShield,scores={shieldplacement=2}] at @s run playsound item.shield.break master @a[x=0] ~ ~ ~ 2 2
execute as @e[x=0,type=marker,tag=PlaceYellowShield,scores={shieldplacement=3}] at @s run place template yellowshield3 ~-3 ~-3 ~
execute as @e[x=0,type=marker,tag=PlaceYellowShield,scores={shieldplacement=3}] at @s run playsound block.glass.break master @a[x=0] ~ ~ ~ 2 0
execute as @e[x=0,type=marker,tag=PlaceYellowShield,scores={shieldplacement=3}] at @s run playsound item.shield.block master @a[x=0] ~ ~ ~ 2 0
execute as @e[x=0,type=marker,tag=PlaceYellowShield,scores={shieldplacement=3}] at @s run particle minecraft:block{block_state:"minecraft:yellow_stained_glass"} ~ ~ ~ 1 1 0 0.1 50
kill @e[x=0,type=marker,tag=PlaceYellowShield,scores={shieldplacement=3..}]
kill @e[x=0,type=snowball,tag=YellowShield,scores={shieldtest=20..}]

##Blue Shield functionality
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!customShield] as @e[x=0,type=snowball,tag=BlueShield] at @s if score $dust CmdData matches 1 run particle minecraft:dust{color:[0,0,1],scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
scoreboard players add @e[x=0,type=snowball,tag=BlueShield] shieldtest2 1
#Next 2 commands disable Blue Shields inside of portals
execute unless entity @s[tag=noPortal] as @e[x=0,type=snowball,tag=BlueShield,scores={shieldtest2=19..20}] at @s if entity @s[x=-12,y=33,z=-74,dx=48,dy=28] run scoreboard players remove @s shieldtest2 1
execute unless entity @s[tag=noPortal] as @e[x=0,type=snowball,tag=BlueShield,scores={shieldtest2=19..20}] at @s if entity @s[x=-12,y=33,z=74,dx=48,dy=28] run scoreboard players remove @s shieldtest2 1
#Disable Blue Shields near void
execute as @e[x=0,type=snowball,tag=BlueShield] at @s if predicate custom:nearvoid run scoreboard players remove @s shieldtest2 1
#Disable Blue Shields near spawnpoints
execute as @e[x=0,type=snowball,tag=BlueShield] at @s if entity @e[type=marker,tag=YellowSpawnZone,distance=..7] run scoreboard players remove @s shieldtest2 1
execute as @e[x=0,type=snowball,tag=BlueShield] at @s if entity @e[type=marker,tag=BlueSpawnZone,distance=..7] run scoreboard players remove @s shieldtest2 1
execute as @e[x=0,type=snowball,tag=BlueShield,scores={shieldtest2=20}] at @s run summon marker ~ ~ ~ {Tags:["PlaceBlueShield"]}
scoreboard players add @e[x=0,type=marker,tag=PlaceBlueShield] shieldplacement 1
execute as @e[x=0,type=marker,tag=PlaceBlueShield,scores={shieldplacement=1}] run data modify storage rocketriders:shieldpos x prepend from entity @s Pos[0]
execute as @e[x=0,type=marker,tag=PlaceBlueShield,scores={shieldplacement=1}] run data modify storage rocketriders:shieldpos y prepend from entity @s Pos[1]
execute as @e[x=0,type=marker,tag=PlaceBlueShield,scores={shieldplacement=1}] run data modify storage rocketriders:shieldpos z prepend from entity @s Pos[2]
execute as @e[x=0,type=marker,tag=PlaceBlueShield,scores={shieldplacement=1}] run scoreboard players add @e[x=0,type=armor_stand,tag=Selection,limit=1] shieldCount 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!customShield] as @e[x=0,type=marker,tag=PlaceBlueShield,scores={shieldplacement=1}] at @s run place template blueshield1 ~-1 ~-1 ~
execute as @e[x=0,type=marker,tag=PlaceBlueShield,scores={shieldplacement=1}] at @s run playsound block.glass.break master @a[x=0] ~ ~ ~ 2 0.6
execute as @e[x=0,type=marker,tag=PlaceBlueShield,scores={shieldplacement=1}] at @s run playsound item.shield.break master @a[x=0] ~ ~ ~ 2 2
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!customShield] as @e[x=0,type=marker,tag=PlaceBlueShield,scores={shieldplacement=2}] at @s run place template blueshield2 ~-2 ~-2 ~
execute as @e[x=0,type=marker,tag=PlaceBlueShield,scores={shieldplacement=2}] at @s run playsound block.glass.break master @a[x=0] ~ ~ ~ 2 0.6
execute as @e[x=0,type=marker,tag=PlaceBlueShield,scores={shieldplacement=2}] at @s run playsound item.shield.break master @a[x=0] ~ ~ ~ 2 2
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!customShield] as @e[x=0,type=marker,tag=PlaceBlueShield,scores={shieldplacement=3}] at @s run place template blueshield3 ~-3 ~-3 ~
execute as @e[x=0,type=marker,tag=PlaceBlueShield,scores={shieldplacement=3}] at @s run playsound block.glass.break master @a[x=0] ~ ~ ~ 2 0
execute as @e[x=0,type=marker,tag=PlaceBlueShield,scores={shieldplacement=3}] at @s run playsound item.shield.block master @a[x=0] ~ ~ ~ 2 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!customShield] as @e[x=0,type=marker,tag=PlaceBlueShield,scores={shieldplacement=3}] at @s run particle minecraft:block{block_state:"minecraft:blue_stained_glass"} ~ ~ ~ 1 1 0 0.1 50
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!customShield] run kill @e[x=0,type=marker,tag=PlaceBlueShield,scores={shieldplacement=3..}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!customShield] run kill @e[x=0,type=snowball,tag=BlueShield,scores={shieldtest2=20..}]