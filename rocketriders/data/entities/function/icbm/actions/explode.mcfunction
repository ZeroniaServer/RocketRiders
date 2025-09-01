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

data modify storage rocketriders:main icbm set value {power:4,modifiers:{copy_name:true}}
execute unless predicate game:modifiers/clutter_collector/on if predicate game:modifiers/explosive/on run data modify storage rocketriders:main icbm.power set value 5
execute if predicate game:modifiers/clutter_collector/on if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=!Hardcore] if entity @s[z=-50,dz=100,x=-160,dx=320,y=-20,dy=200] run data modify storage rocketriders:main icbm.power set value 0
execute if predicate game:modifiers/clutter_collector/on if predicate game:modifiers/explosive/on if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=!Hardcore] unless entity @s[z=-50,dz=100,x=-160,dx=320,y=-20,dy=200] run data modify storage rocketriders:main icbm.power set value 5
execute if predicate game:modifiers/clutter_collector/on unless predicate game:modifiers/explosive/on if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=!Hardcore] unless entity @s[z=-50,dz=100,x=-160,dx=320,y=-20,dy=200] run data modify storage rocketriders:main icbm.power set value 4
execute if predicate game:modifiers/clutter_collector/on if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=Hardcore] if entity @s[z=-62,dz=124,x=-160,dx=320,y=-20,dy=200] run data modify storage rocketriders:main icbm.power set value 0
execute if predicate game:modifiers/clutter_collector/on if predicate game:modifiers/explosive/on if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=Hardcore] unless entity @s[z=-62,dz=124,x=-160,dx=320,y=-20,dy=200] run data modify storage rocketriders:main icbm.power set value 5
execute if predicate game:modifiers/clutter_collector/on unless predicate game:modifiers/explosive/on if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=Hardcore] unless entity @s[z=-62,dz=124,x=-160,dx=320,y=-20,dy=200] run data modify storage rocketriders:main icbm.power set value 4
execute at @s positioned ~ ~ ~ run function custom:explosion with storage rocketriders:main icbm
execute at @s positioned ~ ~ ~0.1 run function custom:explosion with storage rocketriders:main icbm
execute at @s positioned ~ ~ ~-0.1 run function custom:explosion with storage rocketriders:main icbm
execute at @s positioned ~0.1 ~ ~ run function custom:explosion with storage rocketriders:main icbm
execute at @s positioned ~-0.1 ~ ~ run function custom:explosion with storage rocketriders:main icbm
execute at @s positioned ~ ~0.1 ~ run function custom:explosion with storage rocketriders:main icbm
execute at @s positioned ~ ~-0.1 ~ run function custom:explosion with storage rocketriders:main icbm

execute if predicate game:gamemode_components/explosions_crack_deepslate_bricks run function rr_crusade:game/tnt_cracks_large

# Kill brain
kill @s
