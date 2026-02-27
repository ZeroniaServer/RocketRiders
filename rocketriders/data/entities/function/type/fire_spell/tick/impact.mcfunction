execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ tnt run function entities:type/fire_spell/tick/ignite_tnt
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ tnt run function entities:type/fire_spell/tick/ignite_tnt
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ tnt run function entities:type/fire_spell/tick/ignite_tnt
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ tnt run function entities:type/fire_spell/tick/ignite_tnt
execute positioned ~ ~-1 ~ if block ~ ~ ~ tnt run function entities:type/fire_spell/tick/ignite_tnt
execute positioned ~ ~-1 ~1 if block ~ ~ ~ tnt run function entities:type/fire_spell/tick/ignite_tnt
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ tnt run function entities:type/fire_spell/tick/ignite_tnt
execute positioned ~1 ~-1 ~ if block ~ ~ ~ tnt run function entities:type/fire_spell/tick/ignite_tnt
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ tnt run function entities:type/fire_spell/tick/ignite_tnt

execute positioned ~-1 ~ ~-1 if block ~ ~ ~ tnt run function entities:type/fire_spell/tick/ignite_tnt
execute positioned ~-1 ~ ~ if block ~ ~ ~ tnt run function entities:type/fire_spell/tick/ignite_tnt
execute positioned ~-1 ~ ~1 if block ~ ~ ~ tnt run function entities:type/fire_spell/tick/ignite_tnt
execute positioned ~ ~ ~-1 if block ~ ~ ~ tnt run function entities:type/fire_spell/tick/ignite_tnt
execute positioned ~ ~ ~ if block ~ ~ ~ tnt run function entities:type/fire_spell/tick/ignite_tnt
execute positioned ~ ~ ~1 if block ~ ~ ~ tnt run function entities:type/fire_spell/tick/ignite_tnt
execute positioned ~1 ~ ~-1 if block ~ ~ ~ tnt run function entities:type/fire_spell/tick/ignite_tnt
execute positioned ~1 ~ ~ if block ~ ~ ~ tnt run function entities:type/fire_spell/tick/ignite_tnt
execute positioned ~1 ~ ~1 if block ~ ~ ~ tnt run function entities:type/fire_spell/tick/ignite_tnt

execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ tnt run function entities:type/fire_spell/tick/ignite_tnt
execute positioned ~-1 ~1 ~ if block ~ ~ ~ tnt run function entities:type/fire_spell/tick/ignite_tnt
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ tnt run function entities:type/fire_spell/tick/ignite_tnt
execute positioned ~ ~1 ~-1 if block ~ ~ ~ tnt run function entities:type/fire_spell/tick/ignite_tnt
execute positioned ~ ~1 ~ if block ~ ~ ~ tnt run function entities:type/fire_spell/tick/ignite_tnt
execute positioned ~ ~1 ~1 if block ~ ~ ~ tnt run function entities:type/fire_spell/tick/ignite_tnt
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ tnt run function entities:type/fire_spell/tick/ignite_tnt
execute positioned ~1 ~1 ~ if block ~ ~ ~ tnt run function entities:type/fire_spell/tick/ignite_tnt
execute positioned ~1 ~1 ~1 if block ~ ~ ~ tnt run function entities:type/fire_spell/tick/ignite_tnt

execute if predicate game:modifiers/rotting/on as @e[limit=3,sort=nearest,distance=..3,predicate=entities:type/rot/brain] run function entities:type/rot/actions/start_burning

kill @s
