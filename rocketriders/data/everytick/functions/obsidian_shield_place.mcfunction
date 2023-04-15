#Obsiaidn Shield markers
execute if entity @s[scores={shieldplacement=1}] unless entity @e[predicate=custom:indimension,type=marker,tag=obsidianshield,distance=..0.5] run summon marker ~ ~ ~ {Tags:["obsidianshield"]}
execute if entity @s[scores={shieldplacement=1}] run scoreboard players set @e[predicate=custom:indimension,type=marker,tag=obsidianshield,tag=!blueobsidianshield,tag=!yellowobsidianshield,sort=nearest,limit=1,distance=..0.5] breakobshield 0

#Obsidian Shield deploy animation + sounds
execute if entity @s[scores={shieldplacement=2}] run fill ~ ~1 ~ ~ ~-1 ~ crying_obsidian
execute if entity @s[scores={shieldplacement=2}] run fill ~1 ~ ~ ~-1 ~ ~ crying_obsidian
execute if entity @s[scores={shieldplacement=2}] run setblock ~ ~ ~ purple_stained_glass_pane[east=true,west=true]
execute if entity @s[scores={shieldplacement=2}] run playsound minecraft:block.respawn_anchor.charge master @a[predicate=custom:indimension] ~ ~ ~ 2 1
execute if entity @s[scores={shieldplacement=4}] run fill ~1 ~1 ~ ~-1 ~-1 ~ crying_obsidian
execute if entity @s[scores={shieldplacement=4}] run setblock ~ ~ ~ purple_stained_glass_pane[east=true,west=true]
execute if entity @s[scores={shieldplacement=4}] run playsound minecraft:block.respawn_anchor.charge master @a[predicate=custom:indimension] ~ ~ ~ 2 1
execute if entity @s[scores={shieldplacement=6}] run fill ~ ~2 ~ ~ ~-2 ~ crying_obsidian
execute if entity @s[scores={shieldplacement=6}] run fill ~2 ~ ~ ~-2 ~ ~ crying_obsidian
execute if entity @s[scores={shieldplacement=6}] run setblock ~ ~ ~ purple_stained_glass_pane[east=true,west=true]

#Yellow panes
execute if entity @s[tag=yellowobalone,scores={shieldplacement=6}] run setblock ~1 ~2 ~ yellow_stained_glass_pane[east=true]
execute if entity @s[tag=yellowobalone,scores={shieldplacement=6}] run setblock ~-1 ~2 ~ yellow_stained_glass_pane[west=true]
execute if entity @s[tag=yellowobalone,scores={shieldplacement=6}] run setblock ~1 ~-2 ~ yellow_stained_glass_pane[east=true]
execute if entity @s[tag=yellowobalone,scores={shieldplacement=6}] run setblock ~-1 ~-2 ~ yellow_stained_glass_pane[west=true]
execute if entity @s[tag=yellowobalone,scores={shieldplacement=6}] run setblock ~-2 ~1 ~ orange_stained_glass_pane[east=true]
execute if entity @s[tag=yellowobalone,scores={shieldplacement=6}] run setblock ~-2 ~-1 ~ orange_stained_glass_pane[east=true]
execute if entity @s[tag=yellowobalone,scores={shieldplacement=6}] run setblock ~2 ~1 ~ orange_stained_glass_pane[west=true]
execute if entity @s[tag=yellowobalone,scores={shieldplacement=6}] run setblock ~2 ~-1 ~ orange_stained_glass_pane[west=true]

#Blue panes
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!customShield] if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~1 ~2 ~ blue_stained_glass_pane[east=true]
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!customShield] if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~-1 ~2 ~ blue_stained_glass_pane[west=true]
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!customShield] if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~1 ~-2 ~ blue_stained_glass_pane[east=true]
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!customShield] if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~-1 ~-2 ~ blue_stained_glass_pane[west=true]
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!customShield] if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~-2 ~1 ~ cyan_stained_glass_pane[east=true]
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!customShield] if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~-2 ~-1 ~ cyan_stained_glass_pane[east=true]
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!customShield] if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~2 ~1 ~ cyan_stained_glass_pane[west=true]
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!customShield] if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~2 ~-1 ~ cyan_stained_glass_pane[west=true]

execute if entity @s[tag=blueobalone,scores={shieldplacement=6}] run tag @e[predicate=custom:indimension,type=marker,tag=obsidianshield,tag=!blueobsidianshield,tag=!yellowobsidianshield,sort=nearest,limit=1,distance=..0.5] add blueobsidianshield
execute if entity @s[tag=yellowobalone,scores={shieldplacement=6}] run tag @e[predicate=custom:indimension,type=marker,tag=obsidianshield,tag=!blueobsidianshield,tag=!yellowobsidianshield,sort=nearest,limit=1,distance=..0.5] add yellowobsidianshield
execute if entity @s[scores={shieldplacement=6}] run playsound minecraft:block.respawn_anchor.set_spawn master @a[predicate=custom:indimension] ~ ~ ~ 2 1
execute if entity @s[scores={shieldplacement=6}] run playsound minecraft:block.respawn_anchor.charge master @a[predicate=custom:indimension] ~ ~ ~ 2 1
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!customShield] if entity @s[scores={shieldplacement=6..}] run kill @e[predicate=custom:indimension,type=area_effect_cloud,tag=tempobshield,limit=1,sort=nearest,distance=..1]
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!customShield] run kill @s[scores={shieldplacement=6..}]