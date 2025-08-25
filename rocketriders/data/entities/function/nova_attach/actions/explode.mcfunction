# Redirect function to the brain
execute unless entity @s[predicate=entities:type/nova_attach/brain] run return run execute on passengers if entity @s[predicate=entities:type/nova_attach/brain] run function entities:nova_attach/actions/explode

execute on origin run tag @s add nova_attach.origin
execute on vehicle on origin run tag @s add nova_attach.target

execute at @a[limit=1,tag=nova_attach.target] run function entities:nova_attach/actions/firework
execute at @a[limit=1,tag=nova_attach.target] positioned ~ ~0.5 ~1 run function custom:explosion {power:1,modifiers:{copy_name:true}}
execute at @a[limit=1,tag=nova_attach.target] positioned ~ ~0.5 ~-1 run function custom:explosion {power:1,modifiers:{copy_name:true}}
execute if predicate entities:origin_team/blue at @a[limit=1,tag=nova_attach.target] run tag @n[predicate=entities:type/canopy,predicate=entities:origin_team/yellow,distance=..7] add canopy.kill
execute if predicate entities:origin_team/yellow at @a[limit=1,tag=nova_attach.target] run tag @n[predicate=entities:type/canopy,predicate=entities:origin_team/blue,distance=..7] add canopy.kill
execute if predicate entities:origin_team/none at @a[limit=1,tag=nova_attach.target] run tag @n[predicate=entities:type/canopy,distance=..7] add canopy.kill
execute at @a[limit=1,tag=nova_attach.target] run fill ~ ~-2 ~ ~ ~ ~ air replace oak_wood
execute at @a[limit=1,tag=nova_attach.target] run fill ~-3 ~-2 ~-3 ~3 ~ ~3 air replace #minecraft:leaves
execute at @a[limit=1,tag=nova_attach.target] run particle minecraft:block{block_state:"minecraft:oak_leaves"} ~ ~1 ~ 2 1 2 0.1 50 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute at @a[limit=1,tag=nova_attach.target] run playsound minecraft:entity.firework_rocket.blast master @a[x=0] ~ ~ ~ 2 0

execute on origin run tag @s remove nova_attach.origin
execute on vehicle on origin run tag @s remove nova_attach.target

function entities:nova_attach/actions/break
