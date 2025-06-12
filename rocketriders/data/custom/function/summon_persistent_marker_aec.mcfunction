# arguments: modifiers

summon area_effect_cloud ~ ~ ~ {\
    Tags: ["summon.this"],\
    data: {marker:true},\
    custom_particle: {type: "minecraft:block", block_state: "minecraft:air"},\
    Radius: 0,\
    Age: 0,\
    WaitTime: 2147483647,\
    Duration: 0,\
}

data modify storage rocketriders:main summon set value {nbt:{},run:"function custom:nothing"}
$data modify storage rocketriders:main summon merge value $(modifiers)
execute as @e[distance=..0.01,type=area_effect_cloud,tag=summon.this,limit=1] if function custom:summon/remove_tag run function custom:summon/modify with storage rocketriders:main summon

return 1
