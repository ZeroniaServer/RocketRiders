# arguments: run

summon area_effect_cloud ~ ~ ~ {\
    Tags: ["summon.this"],\
    data: {marker:true},\
    Particle: {type: "minecraft:block", block_state: "minecraft:air"},\
    custom_particle: {type: "minecraft:block", block_state: "minecraft:air"},\
    Radius: 0,\
    Age: -2147483648,\
    WaitTime: 2147483647,\
    Duration: 0,\
}

$execute as @e[distance=..0.01,type=area_effect_cloud,tag=summon.this,limit=1] if function custom:summon/_ run $(run)

return 1
