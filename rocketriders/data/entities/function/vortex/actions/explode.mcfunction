# Redirect function to the brain
execute if entity @s[predicate=entities:type/vortex/body] run return run execute on passengers if entity @s[predicate=entities:type/vortex/brain] at @s run function entities:vortex/actions/explode

scoreboard players set @s entity.vortex.fuse 0

scoreboard players set $fuse var 0
scoreboard players operation $fuse var > @e[distance=..4,predicate=entities:type/vortex/brain,scores={entity.vortex.fuse=1..}] entity.vortex.fuse
execute as @e[distance=..4,predicate=entities:type/vortex/brain,sort=nearest] unless score @s entity.vortex.fuse matches 0.. store result score @s entity.vortex.fuse run scoreboard players add $fuse var 3

execute if entity @s[tag=!vortex.feathered] run particle minecraft:item{item:"minecraft:ender_eye"} ~ ~ ~ 0.2 0.2 0.1 0.3 10
execute if entity @s[tag=vortex.feathered] run loot spawn ~ ~-0.3 ~ loot {pools:[{rolls:{min:5,max:10},entries:[{type:"minecraft:item",name:"minecraft:feather",functions:[{function:"minecraft:set_components",components:{"minecraft:custom_data":{dummy_item_entity:true},"minecraft:damage_resistant":{types:"#minecraft:is_explosion"}}}]}]}]}
execute if entity @s[tag=vortex.feathered] run loot spawn ~ ~-0.4 ~ loot {pools:[{rolls:{min:5,max:10},entries:[{type:"minecraft:item",name:"minecraft:feather",functions:[{function:"minecraft:set_components",components:{"minecraft:custom_data":{dummy_item_entity:true},"minecraft:damage_resistant":{types:"#minecraft:is_explosion"}}}]}]}]}
execute if entity @s[tag=vortex.feathered] as @e[distance=..1,type=item] if items entity @s contents feather run data merge entity @s {PickupDelay:32767,Age:5900}

execute if entity @s[tag=!vortex.feathered] unless predicate game:modifiers/explosive/on unless predicate game:modifiers/clutter_collector/on at @s run function custom:explosion {power:3,modifiers:{copy_name:true,trigger_vortices:false}}
execute if entity @s[tag=!vortex.feathered] if predicate game:modifiers/explosive/on unless predicate game:modifiers/clutter_collector/on at @s run function custom:explosion {power:5,modifiers:{copy_name:true,trigger_vortices:false}}
execute if entity @s[tag=!vortex.feathered] if predicate game:modifiers/clutter_collector/on at @s run function custom:explosion {power:0,modifiers:{copy_name:true,trigger_vortices:false}}

execute if entity @s[tag=vortex.feathered] unless predicate game:modifiers/explosive/on unless predicate game:modifiers/clutter_collector/on at @s run function custom:explosion {power:2,modifiers:{copy_name:true,trigger_vortices:false}}
execute if entity @s[tag=vortex.feathered] if predicate game:modifiers/explosive/on unless predicate game:modifiers/clutter_collector/on at @s run function custom:explosion {power:4,modifiers:{copy_name:true,trigger_vortices:false}}
execute if entity @s[tag=vortex.feathered] if predicate game:modifiers/clutter_collector/on at @s run function custom:explosion {power:0,modifiers:{copy_name:true,trigger_vortices:false}}

function entities:vortex/actions/kill
