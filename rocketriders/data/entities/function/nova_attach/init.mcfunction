# Do nothing if already processed
execute unless entity @s[type=player] run return fail
execute if predicate custom:nova_attached run return fail
execute unless entity @a[limit=1,tag=nova_attach.origin] run return fail

## Set up data
scoreboard players set @s flag.is_nova_attached 1
playsound minecraft:entity.firework_rocket.launch master @a[x=0] ~ ~ ~ 2 1.2
effect give @s levitation 1 60 true

## Summon body
tag @s add nova_attach.this
data modify storage rocketriders:main nova_attach.target set from entity @s UUID
execute at @s run function custom:summon_persistent_marker_aec {modifiers:{run:"function entities:nova_attach/init/body"}}
tag @s remove nova_attach.this
