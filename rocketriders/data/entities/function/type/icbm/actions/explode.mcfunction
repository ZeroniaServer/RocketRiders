# Redirect function to the brain
execute unless entity @s[predicate=entities:type/icbm/brain] run return run execute on passengers if entity @s[predicate=entities:type/icbm/brain] run function entities:type/icbm/actions/explode

# Kill body and correct position
execute on vehicle if entity @s[predicate=entities:type/icbm/body] run function custom:tp_passengers_to_self_and_die

# Break if near a spawn zone
execute positioned as @s if predicate custom:near_any_spawn_zone_lenient run return run function entities:type/icbm/actions/break

# Create explosions
data modify storage rocketriders:main icbm set value {power:4,modifiers:{copy_name:true,can_crack_deepslate_bricks:false}}
execute if predicate game:modifiers/explosive/on run data modify storage rocketriders:main icbm.power set value 5

execute at @s positioned ~ ~ ~ run function custom:explosion with storage rocketriders:main icbm
execute at @s positioned ~ ~ ~0.1 run function custom:explosion with storage rocketriders:main icbm
execute at @s positioned ~ ~ ~-0.1 run function custom:explosion with storage rocketriders:main icbm
execute at @s positioned ~0.1 ~ ~ run function custom:explosion with storage rocketriders:main icbm
execute at @s positioned ~-0.1 ~ ~ run function custom:explosion with storage rocketriders:main icbm
execute at @s positioned ~ ~0.1 ~ run function custom:explosion with storage rocketriders:main icbm
execute at @s positioned ~ ~-0.1 ~ run function custom:explosion with storage rocketriders:main icbm

# Castle cracks
execute if predicate game:arena_details/castle if entity @s[predicate=custom:tnt_near_castle] run function game:explosion_deepslate_cracks/large

# Kill brain
kill @s
