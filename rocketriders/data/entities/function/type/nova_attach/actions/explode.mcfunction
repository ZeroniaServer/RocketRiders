# Redirect function to the brain
execute unless entity @s[predicate=entities:type/nova_attach/brain] run return run execute on passengers if entity @s[predicate=entities:type/nova_attach/brain] run function entities:type/nova_attach/actions/explode

execute on origin run tag @s add nova_attach.origin
execute on vehicle on origin run tag @s add nova_attach.target

execute at @a[limit=1,tag=nova_attach.target] run function entities:type/nova_attach/actions/firework
execute at @a[limit=1,tag=nova_attach.target] run function entities:type/nova_attach/actions/__explode__/offset_explosion
execute if predicate entities:origin_team/blue at @a[limit=1,tag=nova_attach.target] run tag @n[predicate=entities:type/canopy/brain,predicate=entities:origin_team/yellow,distance=..7] add canopy.kill
execute if predicate entities:origin_team/yellow at @a[limit=1,tag=nova_attach.target] run tag @n[predicate=entities:type/canopy/brain,predicate=entities:origin_team/blue,distance=..7] add canopy.kill
execute if predicate entities:origin_team/none at @a[limit=1,tag=nova_attach.target] run tag @n[predicate=entities:type/canopy/brain,distance=..7] add canopy.kill
execute at @a[limit=1,tag=nova_attach.target] run fill ~ ~-2 ~ ~ ~ ~ air replace oak_wood
execute at @a[limit=1,tag=nova_attach.target] run fill ~-3 ~-2 ~-3 ~3 ~ ~3 air replace #minecraft:leaves
execute at @a[limit=1,tag=nova_attach.target] run playsound minecraft:entity.firework_rocket.blast master @a[x=0] ~ ~ ~ 2 0

execute on origin run tag @s remove nova_attach.origin
execute on vehicle on origin run tag @s remove nova_attach.target

function entities:type/nova_attach/actions/break
