#Obsidian Shield deploy animation + sounds
execute as @s[scores={shieldplacement=2}] run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-1,posZ:0,name:"minecraft:obshield1"}
execute as @s[scores={shieldplacement=2}] run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @s[scores={shieldplacement=2}] run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @s[scores={shieldplacement=2}] run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 2 1
execute as @s[scores={shieldplacement=4}] run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-1,posZ:0,name:"minecraft:obshield2"}
execute as @s[scores={shieldplacement=4}] run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @s[scores={shieldplacement=4}] run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @s[scores={shieldplacement=4}] run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 2 1
execute as @s[tag=yellowobalone,scores={shieldplacement=6}] run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-2,posZ:0,name:"minecraft:obshieldyellow"}
execute as @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-2,posZ:0,name:"minecraft:obshieldblue"}
execute as @s[scores={shieldplacement=6}] run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @s[scores={shieldplacement=6}] run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @s[scores={shieldplacement=6}] run setblock ~ ~-1 ~ crying_obsidian
execute as @s[scores={shieldplacement=6}] run playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 2 1
execute as @s[scores={shieldplacement=6}] run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 2 1
execute as @s[scores={shieldplacement=6}] run summon marker ~ ~ ~ {Tags:["yellowobsidianshield"]}
execute as @s[scores={shieldplacement=6}] run scoreboard players set @e[tag=yellowobsidianshield,sort=nearest,limit=1,distance=..3] breakobshield 0
kill @s[scores={shieldplacement=6..}]