######################################
## SHIELD: A throwable glass shield ##
## Blocks most missiles in its path ##
######################################

##Identify snowballs as Shields
execute as @a[team=Yellow,scores={ThrowShield=1..}] at @s run tag @e[type=snowball,limit=1,sort=nearest,distance=..5,tag=!YellowShield,tag=!BlueShield] add YellowShield
execute as @a[team=Blue,scores={ThrowShield=1..}] at @s run tag @e[type=snowball,limit=1,sort=nearest,distance=..5,tag=!YellowShield,tag=!BlueShield] add BlueShield
scoreboard players reset @a ThrowShield

##Yellow Shield functionality
execute as @e[tag=YellowShield] at @s run particle dust 1 1 0 1 ~ ~ ~ 0 0 0 0.1 10 force @a
scoreboard players add @e[tag=YellowShield] shieldtest 1
#Next 2 commands disable Yellow Shields inside of portals
execute as @e[tag=YellowShield] at @s if entity @s[x=-12,y=36,z=-74,dx=48,dy=25] run scoreboard players remove @s shieldtest 1
execute as @e[tag=YellowShield] at @s if entity @s[x=-12,y=36,z=74,dx=48,dy=25] run scoreboard players remove @s shieldtest 1
#Disable Yellow Shields near void
execute as @e[tag=YellowShield] at @s if predicate custom:nearvoid run scoreboard players remove @s shieldtest 1
execute as @e[tag=YellowShield,scores={shieldtest=20}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["PlaceYellowShield"],Duration:25}
execute as @e[tag=YellowShield,scores={shieldtest=20}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["ClearShields"],Duration:2000000000}
scoreboard players add @e[tag=PlaceYellowShield] shieldplacement 1
execute as @e[tag=PlaceYellowShield,scores={shieldplacement=1}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-1,posZ:0,name:"minecraft:yellowshield1"}
execute as @e[tag=PlaceYellowShield,scores={shieldplacement=1}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=PlaceYellowShield,scores={shieldplacement=1}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=PlaceYellowShield,scores={shieldplacement=1}] at @s run playsound block.glass.break player @a ~ ~ ~ 2 0.6
execute as @e[tag=PlaceYellowShield,scores={shieldplacement=1}] at @s run playsound item.shield.break player @a ~ ~ ~ 2 2
execute as @e[tag=PlaceYellowShield,scores={shieldplacement=2}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-2,posZ:0,name:"minecraft:yellowshield2"}
execute as @e[tag=PlaceYellowShield,scores={shieldplacement=2}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=PlaceYellowShield,scores={shieldplacement=2}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=PlaceYellowShield,scores={shieldplacement=2}] at @s run playsound block.glass.break player @a ~ ~ ~ 2 0.6
execute as @e[tag=PlaceYellowShield,scores={shieldplacement=2}] at @s run playsound item.shield.break player @a ~ ~ ~ 2 2
execute as @e[tag=PlaceYellowShield,scores={shieldplacement=3}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-3,posY:-3,posZ:0,name:"minecraft:yellowshield3"}
execute as @e[tag=PlaceYellowShield,scores={shieldplacement=3}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=PlaceYellowShield,scores={shieldplacement=3}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=PlaceYellowShield,scores={shieldplacement=3}] at @s run playsound block.glass.break player @a ~ ~ ~ 2 0
execute as @e[tag=PlaceYellowShield,scores={shieldplacement=3}] at @s run playsound item.shield.block player @a ~ ~ ~ 2 0
execute as @e[tag=PlaceYellowShield,scores={shieldplacement=3}] at @s run particle block yellow_stained_glass ~ ~ ~ 1 1 0 0.1 100
kill @e[tag=PlaceYellowShield,scores={shieldplacement=3..}]
kill @e[tag=YellowShield,scores={shieldtest=20..}]

##Blue Shield functionality
execute as @e[tag=BlueShield] at @s run particle dust 0 0 1 1 ~ ~ ~ 0 0 0 0.1 10 force @a
scoreboard players add @e[tag=BlueShield] shieldtest2 1
#Next 2 commands disable Blue Shields inside of portals
execute as @e[tag=BlueShield] at @s if entity @s[x=-12,y=36,z=-74,dx=48,dy=25] run scoreboard players remove @s shieldtest2 1
execute as @e[tag=BlueShield] at @s if entity @s[x=-12,y=36,z=74,dx=48,dy=25] run scoreboard players remove @s shieldtest2 1
#Disable Blue Shields near void
execute as @e[tag=BlueShield] at @s if predicate custom:nearvoid run scoreboard players remove @s shieldtest2 1
execute as @e[tag=BlueShield,scores={shieldtest2=20}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["PlaceBlueShield"],Duration:25}
execute as @e[tag=BlueShield,scores={shieldtest2=20}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["ClearShields"],Duration:2000000000}
scoreboard players add @e[tag=PlaceBlueShield] shieldplacement 1
execute as @e[tag=PlaceBlueShield,scores={shieldplacement=1}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-1,posZ:0,name:"minecraft:blueshield1"}
execute as @e[tag=PlaceBlueShield,scores={shieldplacement=1}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=PlaceBlueShield,scores={shieldplacement=1}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=PlaceBlueShield,scores={shieldplacement=1}] at @s run playsound block.glass.break player @a ~ ~ ~ 2 0.6
execute as @e[tag=PlaceBlueShield,scores={shieldplacement=1}] at @s run playsound item.shield.break player @a ~ ~ ~ 2 2
execute as @e[tag=PlaceBlueShield,scores={shieldplacement=2}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-2,posZ:0,name:"minecraft:blueshield2"}
execute as @e[tag=PlaceBlueShield,scores={shieldplacement=2}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=PlaceBlueShield,scores={shieldplacement=2}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=PlaceBlueShield,scores={shieldplacement=2}] at @s run playsound block.glass.break player @a ~ ~ ~ 2 0.6
execute as @e[tag=PlaceBlueShield,scores={shieldplacement=2}] at @s run playsound item.shield.break player @a ~ ~ ~ 2 2
execute as @e[tag=PlaceBlueShield,scores={shieldplacement=3}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-3,posY:-3,posZ:0,name:"minecraft:blueshield3"}
execute as @e[tag=PlaceBlueShield,scores={shieldplacement=3}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=PlaceBlueShield,scores={shieldplacement=3}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=PlaceBlueShield,scores={shieldplacement=3}] at @s run playsound block.glass.break player @a ~ ~ ~ 2 0
execute as @e[tag=PlaceBlueShield,scores={shieldplacement=3}] at @s run playsound item.shield.block player @a ~ ~ ~ 2 0
execute as @e[tag=PlaceBlueShield,scores={shieldplacement=3}] at @s run particle block blue_stained_glass ~ ~ ~ 1 1 0 0.1 100
kill @e[tag=PlaceBlueShields,scores={shieldplacement=3..}]
kill @e[tag=BlueShield,scores={shieldtest2=20..}]