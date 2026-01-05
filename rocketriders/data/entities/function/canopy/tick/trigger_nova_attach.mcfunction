function custom:player_action/forget_all_canopies
ride @s dismount
tp @s ~ ~2 ~
execute at @s run particle minecraft:block{block_state:"minecraft:oak_leaves"} ~ ~1 ~ 2 1 2 0.1 50 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute at @s positioned ~ ~-0.5 ~ run function custom:player_action/trigger_nova_attach
