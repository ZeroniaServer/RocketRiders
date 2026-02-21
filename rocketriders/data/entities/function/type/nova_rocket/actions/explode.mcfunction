# Redirect function to the brain
execute unless entity @s[predicate=entities:type/nova_rocket/brain] run return run execute on passengers if entity @s[predicate=entities:type/nova_rocket/brain] run function entities:type/nova_rocket/actions/explode

execute at @s unless predicate entities:nova_rocket_can_explode run return run function entities:type/nova_rocket/actions/break

# Dismount the brain and trigger the firework
execute on vehicle run data merge entity @s {LifeTime:0,Motion:[0,0,0],ShotAtAngle:false}
execute on vehicle positioned as @s on passengers run tp @s ~ ~ ~

# Create explosion
tag @e[x=0,type=creeper,tag=explosion] add old_explosion
execute if predicate game:modifiers/explosive/on run function custom:explosion {power:5,modifiers:{copy_name:true,nbt:{data:{nova_rocket_explosion:{}}}}}
execute unless predicate game:modifiers/explosive/on run function custom:explosion {power:2,modifiers:{copy_name:true,nbt:{data:{nova_rocket_explosion:{}}}}}

execute if predicate game:gamemode_components/has_chase_crystals positioned as @s positioned ~ ~-0.5 ~ as @e[distance=..5,type=minecraft:end_crystal] run data modify entity @s Invulnerable set value false
execute if predicate game:gamemode_components/has_chase_crystals positioned as @s positioned ~ ~-0.5 ~ on origin at @e[distance=..5,type=minecraft:end_crystal] run damage @n[limit=1,distance=..0.1,type=minecraft:end_crystal] 1 minecraft:player_attack by @s
execute if predicate game:gamemode_components/has_chase_crystals positioned as @s positioned ~ ~-0.5 ~ as @e[distance=..5,type=minecraft:end_crystal] run data modify entity @s Invulnerable set value true

# Attempt to poof nearby enemy canopies
tag @s add nova_rocket.explode.this
execute on origin run tag @s add nova_rocket.origin
execute on origin run tag @s add nova_attach.origin
execute if predicate entities:origin_team/blue run scoreboard players set $nova_rocket_team var 0
execute if predicate entities:origin_team/yellow run scoreboard players set $nova_rocket_team var 1
execute if predicate entities:origin_team/none run scoreboard players set $nova_rocket_team var -1
execute unless predicate game:modifiers/explosive/on positioned as @s positioned ~ ~-1 ~ as @e[distance=..8,predicate=entities:type/canopy/brain] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{distance:{y:{max:5},horizontal:{max:6}}}} positioned ~ ~1 ~ run function entities:type/nova_rocket/actions/__explode__/check_canopy
execute if predicate game:modifiers/explosive/on positioned as @s positioned ~ ~-1 ~ as @e[distance=..14,predicate=entities:type/canopy/brain] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{distance:{y:{max:9},horizontal:{max:10}}}} positioned ~ ~1 ~ run function entities:type/nova_rocket/actions/__explode__/check_canopy
execute on origin run tag @s remove nova_rocket.origin
execute on origin run tag @s remove nova_attach.origin
tag @s remove nova_rocket.explode.this

# Attach to nearby enemies
execute on origin run tag @s add nova_attach.origin
execute if predicate game:modifiers/explosive/on if predicate entities:origin_team/blue at @s as @e[distance=..6.666,type=player,predicate=custom:team/yellow] run function entities:type/nova_attach/init
execute if predicate game:modifiers/explosive/on if predicate entities:origin_team/yellow at @s as @e[distance=..6.666,type=player,predicate=custom:team/blue] run function entities:type/nova_attach/init
execute if predicate game:modifiers/explosive/on if predicate entities:origin_team/none at @s as @e[distance=..6.666,type=player,tag=!nova_attach.origin] run function entities:type/nova_attach/init
execute unless predicate game:modifiers/explosive/on if predicate entities:origin_team/blue at @s as @e[distance=..4,type=player,predicate=custom:team/yellow] run function entities:type/nova_attach/init
execute unless predicate game:modifiers/explosive/on if predicate entities:origin_team/yellow at @s as @e[distance=..4,type=player,predicate=custom:team/blue] run function entities:type/nova_attach/init
execute unless predicate game:modifiers/explosive/on if predicate entities:origin_team/none at @s as @e[distance=..4,type=player,tag=!nova_attach.origin] run function entities:type/nova_attach/init
execute on origin run tag @s remove nova_attach.origin

# Kill entity stack
kill @s[predicate=entities:type/nova_rocket]
execute on vehicle run kill @s[predicate=entities:type/nova_rocket]
