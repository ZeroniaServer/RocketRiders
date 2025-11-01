execute if entity @s[tag=!vortex.feathered] unless predicate game:modifiers/explosive/on unless predicate game:modifiers/clutter_collector/on at @s run function custom:explosion {power:3,modifiers:{copy_name:true,trigger_vortices:false}}
execute if entity @s[tag=!vortex.feathered] if predicate game:modifiers/explosive/on unless predicate game:modifiers/clutter_collector/on at @s run function custom:explosion {power:5,modifiers:{copy_name:true,trigger_vortices:false}}
execute if entity @s[tag=!vortex.feathered] if predicate game:modifiers/clutter_collector/on at @s run function custom:explosion {power:0,modifiers:{copy_name:true,trigger_vortices:false}}

execute if entity @s[tag=vortex.feathered] unless predicate game:modifiers/explosive/on unless predicate game:modifiers/clutter_collector/on at @s run function custom:explosion {power:2,modifiers:{copy_name:true,trigger_vortices:false}}
execute if entity @s[tag=vortex.feathered] if predicate game:modifiers/explosive/on unless predicate game:modifiers/clutter_collector/on at @s run function custom:explosion {power:4,modifiers:{copy_name:true,trigger_vortices:false}}
execute if entity @s[tag=vortex.feathered] if predicate game:modifiers/clutter_collector/on at @s run function custom:explosion {power:0,modifiers:{copy_name:true,trigger_vortices:false}}

execute unless score @s entity.vortex.arms matches 1.. run return 0
scoreboard players remove @s entity.vortex.arms 1
function entities:vortex/tick/recursive_explosions
