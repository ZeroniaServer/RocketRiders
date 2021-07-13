#Obsidian Shield deploy animation + sounds
execute as @s[scores={shieldplacement=2}] run fill ~ ~1 ~ ~ ~-1 ~ crying_obsidian
execute as @s[scores={shieldplacement=2}] run fill ~1 ~ ~ ~-1 ~ ~ crying_obsidian
execute as @s[scores={shieldplacement=2}] run setblock ~ ~ ~ purple_stained_glass_pane[east=true,west=true]
execute as @s[scores={shieldplacement=2}] run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 2 1
execute as @s[scores={shieldplacement=4}] run fill ~1 ~1 ~ ~-1 ~-1 ~ crying_obsidian
execute as @s[scores={shieldplacement=4}] run setblock ~ ~ ~ purple_stained_glass_pane[east=true,west=true]
execute as @s[scores={shieldplacement=4}] run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 2 1
execute as @s[scores={shieldplacement=6}] run fill ~ ~2 ~ ~ ~-2 ~ crying_obsidian
execute as @s[scores={shieldplacement=6}] run fill ~2 ~ ~ ~-2 ~ ~ crying_obsidian
execute as @s[scores={shieldplacement=6}] run setblock ~ ~ ~ purple_stained_glass_pane[east=true,west=true]

#Yellow panes
execute as @s[tag=yellowobalone,scores={shieldplacement=6}] run setblock ~1 ~2 ~ yellow_stained_glass_pane[east=true]
execute as @s[tag=yellowobalone,scores={shieldplacement=6}] run setblock ~-1 ~2 ~ yellow_stained_glass_pane[west=true]
execute as @s[tag=yellowobalone,scores={shieldplacement=6}] run setblock ~1 ~-2 ~ yellow_stained_glass_pane[east=true]
execute as @s[tag=yellowobalone,scores={shieldplacement=6}] run setblock ~-1 ~-2 ~ yellow_stained_glass_pane[west=true]
execute as @s[tag=yellowobalone,scores={shieldplacement=6}] run setblock ~-2 ~1 ~ orange_stained_glass_pane[east=true]
execute as @s[tag=yellowobalone,scores={shieldplacement=6}] run setblock ~-2 ~-1 ~ orange_stained_glass_pane[east=true]
execute as @s[tag=yellowobalone,scores={shieldplacement=6}] run setblock ~2 ~1 ~ orange_stained_glass_pane[west=true]
execute as @s[tag=yellowobalone,scores={shieldplacement=6}] run setblock ~2 ~-1 ~ orange_stained_glass_pane[west=true]

#Blue panes
execute as @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~1 ~2 ~ blue_stained_glass_pane[east=true]
execute as @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~-1 ~2 ~ blue_stained_glass_pane[west=true]
execute as @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~1 ~-2 ~ blue_stained_glass_pane[east=true]
execute as @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~-1 ~-2 ~ blue_stained_glass_pane[west=true]
execute as @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~-2 ~1 ~ cyan_stained_glass_pane[east=true]
execute as @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~-2 ~-1 ~ cyan_stained_glass_pane[east=true]
execute as @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~2 ~1 ~ cyan_stained_glass_pane[west=true]
execute as @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~2 ~-1 ~ cyan_stained_glass_pane[west=true]

execute as @s[scores={shieldplacement=6}] run playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 2 1
execute as @s[scores={shieldplacement=6}] run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 2 1
execute as @s[scores={shieldplacement=6}] run summon marker ~ ~ ~ {Tags:["yellowobsidianshield"]}
execute as @s[scores={shieldplacement=6}] run scoreboard players set @e[tag=yellowobsidianshield,sort=nearest,limit=1,distance=..3] breakobshield 0
kill @s[scores={shieldplacement=6..}]