# Kill body
execute on vehicle run kill @s[predicate=entities:type/shield_projectile/body]

## If impact_utilities is OFF
execute unless predicate game:game_rules/impact_utilities/on run return run function entities:type/shield_projectile/actions/break

scoreboard players set $too_close var 0
#execute if score $too_close var matches 0 if score @s entity.age matches ..6 on origin positioned ~ ~-1.5 ~ if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:distance":{y:{max:2.5},horizontal:{max:3.5}}}} run scoreboard players set $too_close var 1
execute if score $too_close var matches 0 if score @s entity.age matches ..6 on origin if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:distance":{y:{max:4},horizontal:{max:8}}}} if predicate custom:close_to_canopy_block run scoreboard players set $too_close var 1
execute if score $too_close var matches 1 run return run function entities:type/shield_projectile/actions/break

## If impact_utilities is ON
execute unless predicate entities:shield_can_be_deployed run return run function entities:type/shield_projectile/actions/break

# Convert to a shield entity
data remove entity @s data.shield_projectile
function entities:type/shield/init
