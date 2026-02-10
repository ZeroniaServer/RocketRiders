## Set up data
data modify entity @s data.nova_attach set value {body:{}}

data modify entity @s Owner set from storage rocketriders:main nova_attach.target

data modify storage rocketriders:main nova_attach.name set value "Nova Rocket"
execute as @a[limit=1,x=0,tag=nova_attach.origin] run function custom:resolve_text_component {text_component:["",{selector:"@s"},"'s Nova Rocket"], write_to:"storage rocketriders:main nova_attach.name"}
data modify entity @s CustomName set from storage rocketriders:main nova_attach.name

## Summon body
tag @s add nova_attach.this_body
execute at @s run function custom:summon_persistent_marker_aec {modifiers:{run:"function entities:type/nova_attach/init/brain"}}
tag @s remove nova_attach.this_body
