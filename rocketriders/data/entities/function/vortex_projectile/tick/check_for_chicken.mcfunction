execute unless entity @e[limit=1,distance=..2,type=chicken,predicate=custom:is_baby] run return run kill @s
execute as @e[distance=..2,type=chicken,predicate=custom:is_baby] run function custom:kill_mob_discretely

execute align xyz if entity @e[limit=1,dx=0,predicate=entities:vortex/brain] run return run kill @s
execute if predicate {condition:"minecraft:random_chance",chance:0.5} run return run kill @s

tag @s add vortex.feathered
function entities:vortex_projectile/actions/deploy
