# Redirect function to the brain
execute unless entity @s[predicate=entities:type/icbm/brain] run return run execute on passengers if entity @s[predicate=entities:type/icbm/brain] run function entities:icbm/actions/explode

# Kill body and correct position
execute on vehicle if entity @s[predicate=entities:type/icbm/body] run function custom:tp_passengers_to_self_and_die

# Create explosions
scoreboard players set $extra_fuse var 0
execute if predicate game:modifiers/clutter_collector/on run scoreboard players set $extra_fuse var 1
execute if predicate game:modifiers/explosive/on run scoreboard players set $extra_fuse var 1

data modify storage rocketriders:main icbm set value {Tags:["icbm_tnt"]}
data modify storage rocketriders:main icbm.owner set from entity @s Owner
execute if score $extra_fuse var matches 1 run data modify storage rocketriders:main icbm.fuse set value 1s
execute unless score $extra_fuse var matches 1 run data modify storage rocketriders:main icbm.fuse set value 2s

execute at @s positioned ~ ~ ~ summon tnt run data modify entity @s {} merge from storage rocketriders:main icbm
execute at @s positioned ~ ~ ~0.1 summon tnt run data modify entity @s {} merge from storage rocketriders:main icbm
execute at @s positioned ~ ~ ~-0.1 summon tnt run data modify entity @s {} merge from storage rocketriders:main icbm
execute at @s positioned ~0.1 ~ ~ summon tnt run data modify entity @s {} merge from storage rocketriders:main icbm
execute at @s positioned ~-0.1 ~ ~ summon tnt run data modify entity @s {} merge from storage rocketriders:main icbm
execute at @s positioned ~ ~0.1 ~ summon tnt run data modify entity @s {} merge from storage rocketriders:main icbm
execute at @s positioned ~ ~-0.1 ~ summon tnt run data modify entity @s {} merge from storage rocketriders:main icbm

execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=crusadeEnabled] run function rr_crusade:game/tnt_cracks_large

# Kill brain
kill @s
