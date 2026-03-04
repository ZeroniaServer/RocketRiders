execute if entity @s if predicate {condition:"minecraft:location_check",predicate:{position:{x:{min:186.0}}}} run tp @s 185.5 ~ ~
execute if entity @s unless predicate {condition:"minecraft:location_check",predicate:{position:{x:{min:-161.0}}}} run tp @s -160.5 ~ ~
execute if entity @s if predicate {condition:"minecraft:location_check",predicate:{position:{z:{min:176.0}}}} run tp @s ~ ~ 175.5
execute if entity @s unless predicate {condition:"minecraft:location_check",predicate:{position:{z:{min:-175.0}}}} run tp @s ~ ~ -174.5

#Obsidian Shield markers
execute if entity @s[scores={shieldplacement=1}] unless entity @e[type=marker,tag=obsidianshield,distance=..0.5] run summon marker ~ ~ ~ {Tags:["obsidianshield"]}
execute if entity @s[scores={shieldplacement=1}] run scoreboard players set @e[type=marker,tag=obsidianshield,tag=!blueobsidianshield,tag=!yellowobsidianshield,sort=nearest,limit=1,distance=..0.5] breakobshield 0

#Obsidian Shield deploy animation + sounds
execute if entity @s[scores={shieldplacement=2}] positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if entity @s[scores={shieldplacement=2}] positioned ~ ~ ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if entity @s[scores={shieldplacement=2}] positioned ~ ~1 ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if entity @s[scores={shieldplacement=2}] positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if entity @s[scores={shieldplacement=2}] positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if entity @s[scores={shieldplacement=2}] run fill ~ ~1 ~ ~ ~-1 ~ crying_obsidian
execute if entity @s[scores={shieldplacement=2}] run fill ~1 ~ ~ ~-1 ~ ~ crying_obsidian
execute if entity @s[scores={shieldplacement=2}] run setblock ~ ~ ~ purple_stained_glass_pane[east=true,west=true]
execute if entity @s[scores={shieldplacement=2}] run playsound minecraft:block.respawn_anchor.charge master @a[x=0] ~ ~ ~ 2 1

execute if entity @s[scores={shieldplacement=4}] positioned ~-1 ~-1 ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if entity @s[scores={shieldplacement=4}] positioned ~-1 ~1 ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if entity @s[scores={shieldplacement=4}] positioned ~1 ~-1 ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if entity @s[scores={shieldplacement=4}] positioned ~1 ~1 ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if entity @s[scores={shieldplacement=4}] run fill ~1 ~1 ~ ~-1 ~-1 ~ crying_obsidian
execute if entity @s[scores={shieldplacement=4}] run setblock ~ ~ ~ purple_stained_glass_pane[east=true,west=true]
execute if entity @s[scores={shieldplacement=4}] run playsound minecraft:block.respawn_anchor.charge master @a[x=0] ~ ~ ~ 2 1

execute if entity @s[scores={shieldplacement=6}] positioned ~ ~-2 ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if entity @s[scores={shieldplacement=6}] positioned ~ ~2 ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if entity @s[scores={shieldplacement=6}] positioned ~-2 ~ ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if entity @s[scores={shieldplacement=6}] positioned ~2 ~ ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if entity @s[scores={shieldplacement=6}] run fill ~ ~2 ~ ~ ~-2 ~ crying_obsidian
execute if entity @s[scores={shieldplacement=6}] run fill ~2 ~ ~ ~-2 ~ ~ crying_obsidian
execute if entity @s[scores={shieldplacement=6}] run setblock ~ ~ ~ purple_stained_glass_pane[east=true,west=true]

execute if entity @s[scores={shieldplacement=6}] positioned ~-1 ~-2 ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if entity @s[scores={shieldplacement=6}] positioned ~1 ~-2 ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if entity @s[scores={shieldplacement=6}] positioned ~-2 ~-1 ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if entity @s[scores={shieldplacement=6}] positioned ~2 ~-1 ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if entity @s[scores={shieldplacement=6}] positioned ~-2 ~1 ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if entity @s[scores={shieldplacement=6}] positioned ~2 ~1 ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if entity @s[scores={shieldplacement=6}] positioned ~-1 ~2 ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if entity @s[scores={shieldplacement=6}] positioned ~1 ~2 ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block

#Yellow panes
execute if entity @s[tag=yellowobalone,scores={shieldplacement=6}] run setblock ~1 ~2 ~ yellow_stained_glass_pane[east=true,west=true]
execute if entity @s[tag=yellowobalone,scores={shieldplacement=6}] run setblock ~-1 ~2 ~ yellow_stained_glass_pane[east=true,west=true]
execute if entity @s[tag=yellowobalone,scores={shieldplacement=6}] run setblock ~1 ~-2 ~ yellow_stained_glass_pane[east=true,west=true]
execute if entity @s[tag=yellowobalone,scores={shieldplacement=6}] run setblock ~-1 ~-2 ~ yellow_stained_glass_pane[east=true,west=true]
execute if entity @s[tag=yellowobalone,scores={shieldplacement=6}] run setblock ~-2 ~1 ~ orange_stained_glass_pane[east=true,west=true]
execute if entity @s[tag=yellowobalone,scores={shieldplacement=6}] run setblock ~-2 ~-1 ~ orange_stained_glass_pane[east=true,west=true]
execute if entity @s[tag=yellowobalone,scores={shieldplacement=6}] run setblock ~2 ~1 ~ orange_stained_glass_pane[east=true,west=true]
execute if entity @s[tag=yellowobalone,scores={shieldplacement=6}] run setblock ~2 ~-1 ~ orange_stained_glass_pane[east=true,west=true]

#Blue panes
execute unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~1 ~2 ~ blue_stained_glass_pane[east=true,west=true]
execute unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~-1 ~2 ~ blue_stained_glass_pane[east=true,west=true]
execute unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~1 ~-2 ~ blue_stained_glass_pane[east=true,west=true]
execute unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~-1 ~-2 ~ blue_stained_glass_pane[east=true,west=true]
execute unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~-2 ~1 ~ cyan_stained_glass_pane[east=true,west=true]
execute unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~-2 ~-1 ~ cyan_stained_glass_pane[east=true,west=true]
execute unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~2 ~1 ~ cyan_stained_glass_pane[east=true,west=true]
execute unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~2 ~-1 ~ cyan_stained_glass_pane[east=true,west=true]
execute unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~1 ~2 ~ red_stained_glass_pane[east=true,west=true]
execute unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~-1 ~2 ~ red_stained_glass_pane[east=true,west=true]
execute unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~1 ~-2 ~ red_stained_glass_pane[east=true,west=true]
execute unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~-1 ~-2 ~ red_stained_glass_pane[east=true,west=true]
execute unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~-2 ~1 ~ pink_stained_glass_pane[east=true,west=true]
execute unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~-2 ~-1 ~ pink_stained_glass_pane[east=true,west=true]
execute unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~2 ~1 ~ pink_stained_glass_pane[east=true,west=true]
execute unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~2 ~-1 ~ pink_stained_glass_pane[east=true,west=true]
execute if predicate game:gamemode_components/neutral_items if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~1 ~2 ~ white_stained_glass_pane[east=true,west=true]
execute if predicate game:gamemode_components/neutral_items if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~-1 ~2 ~ white_stained_glass_pane[east=true,west=true]
execute if predicate game:gamemode_components/neutral_items if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~1 ~-2 ~ white_stained_glass_pane[east=true,west=true]
execute if predicate game:gamemode_components/neutral_items if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~-1 ~-2 ~ white_stained_glass_pane[east=true,west=true]
execute if predicate game:gamemode_components/neutral_items if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~-2 ~1 ~ white_stained_glass_pane[east=true,west=true]
execute if predicate game:gamemode_components/neutral_items if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~-2 ~-1 ~ white_stained_glass_pane[east=true,west=true]
execute if predicate game:gamemode_components/neutral_items if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~2 ~1 ~ white_stained_glass_pane[east=true,west=true]
execute if predicate game:gamemode_components/neutral_items if entity @s[tag=blueobalone,scores={shieldplacement=6}] run setblock ~2 ~-1 ~ white_stained_glass_pane[east=true,west=true]

execute if entity @s[tag=blueobalone,scores={shieldplacement=6}] run tag @e[type=marker,tag=obsidianshield,tag=!blueobsidianshield,tag=!yellowobsidianshield,sort=nearest,limit=1,distance=..0.5] add blueobsidianshield
execute if entity @s[tag=yellowobalone,scores={shieldplacement=6}] run tag @e[type=marker,tag=obsidianshield,tag=!blueobsidianshield,tag=!yellowobsidianshield,sort=nearest,limit=1,distance=..0.5] add yellowobsidianshield
execute if entity @s[scores={shieldplacement=6}] run playsound minecraft:block.respawn_anchor.set_spawn master @a[x=0] ~ ~ ~ 2 1
execute if entity @s[scores={shieldplacement=6}] run playsound minecraft:block.respawn_anchor.charge master @a[x=0] ~ ~ ~ 2 1
execute unless predicate game:gamemode_components/neutral_items run kill @s[scores={shieldplacement=6..}]
