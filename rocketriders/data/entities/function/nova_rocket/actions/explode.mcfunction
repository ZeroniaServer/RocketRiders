# Redirect function to the brain
execute unless entity @s[predicate=entities:type/nova_rocket/brain] run return run execute on passengers if entity @s[predicate=entities:type/nova_rocket/brain] run function entities:nova_rocket/actions/explode

execute at @s unless predicate entities:nova_rocket_can_explode run return run function entities:nova_rocket/actions/break

# Dismount the brain and trigger the firework
execute on vehicle run data merge entity @s {LifeTime:0,Motion:[0,0,0],ShotAtAngle:false}
execute on vehicle positioned as @s on passengers run tp @s ~ ~ ~

# Attempt to canopy-boom nearby enemy canopies
execute on origin run tag @s add nova_rocket.origin
execute on origin run tag @s add nova_attach.origin
execute if predicate entities:origin_team/blue run scoreboard players set $nova_rocket_team var 0
execute if predicate entities:origin_team/yellow run scoreboard players set $nova_rocket_team var 1
execute if predicate entities:origin_team/none run scoreboard players set $nova_rocket_team var -1
execute positioned as @s as @e[distance=..5,predicate=entities:type/canopy/brain] run function entities:nova_rocket/actions/_explode_/check_canopy
execute on origin run tag @s remove nova_rocket.origin
execute on origin run tag @s remove nova_attach.origin
#execute positioned as @s run fill ~3.5 ~3.5 ~3.5 ~-3.5 ~-3.5 ~-3.5 air replace #custom:canopy_blocks

execute on origin run tag @s add nova_attach.origin
execute if predicate game:modifiers/explosive/on if predicate entities:origin_team/blue at @s as @a[distance=..6.666,team=Yellow] run function entities:nova_attach/init
execute if predicate game:modifiers/explosive/on if predicate entities:origin_team/yellow at @s as @a[distance=..6.666,team=Blue] run function entities:nova_attach/init
execute if predicate game:modifiers/explosive/on if predicate entities:origin_team/none at @s as @a[distance=..6.666,tag=!nova_attach.origin] run function entities:nova_attach/init
execute unless predicate game:modifiers/explosive/on if predicate entities:origin_team/blue at @s as @a[distance=..4,team=Yellow] run function entities:nova_attach/init
execute unless predicate game:modifiers/explosive/on if predicate entities:origin_team/yellow at @s as @a[distance=..4,team=Blue] run function entities:nova_attach/init
execute unless predicate game:modifiers/explosive/on if predicate entities:origin_team/none at @s as @a[distance=..4,tag=!nova_attach.origin] run function entities:nova_attach/init
execute on origin run tag @s remove nova_attach.origin

# Create explosion
execute if predicate game:modifiers/explosive/on run function custom:explosion {power:5,modifiers:{copy_name:true,nbt:{data:{nova_rocket_explosion:{}}}}}
execute unless predicate game:modifiers/explosive/on run function custom:explosion {power:2,modifiers:{copy_name:true,nbt:{data:{nova_rocket_explosion:{}}}}}

# Kill entity stack
kill @s[predicate=entities:type/nova_rocket]
execute on vehicle run kill @s[predicate=entities:type/nova_rocket]
