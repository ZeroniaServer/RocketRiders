execute as @e[type=tnt,distance=..5] facing entity @s feet positioned as @s run function entities:wind_spell/tick/push_tnt

tag @s add wind_spell.this
execute on origin run tag @s add wind_spell.origin
execute as @a[distance=..5,predicate=!custom:near_own_spawn_zone] run damage @s 0.00000001 minecraft:wind_charge by @e[limit=1,distance=..0.01,type=minecraft:area_effect_cloud,tag=wind_spell.this] from @a[limit=1,tag=wind_spell.origin]
execute on origin run tag @s remove wind_spell.origin
tag @s remove wind_spell.this

summon minecraft:area_effect_cloud ~ ~-2 ~ {Age:-1,WaitTime:0,Duration:1,DurationOnUse:0,Radius:4,RadiusOnUse:0,ReapplicationDelay:0,potion_contents:{custom_effects:[{id:"minecraft:levitation",duration:5,amplifier:10,show_particles:false,show_icon:false}]},custom_particle:{type:"minecraft:block",block_state:"minecraft:air"}}
summon minecraft:area_effect_cloud ~ ~-1 ~ {Age:-1,WaitTime:0,Duration:1,DurationOnUse:0,Radius:4,RadiusOnUse:0,ReapplicationDelay:0,potion_contents:{custom_effects:[{id:"minecraft:levitation",duration:5,amplifier:10,show_particles:false,show_icon:false}]},custom_particle:{type:"minecraft:block",block_state:"minecraft:air"}}
summon minecraft:area_effect_cloud ~ ~ ~ {Age:-1,WaitTime:0,Duration:1,DurationOnUse:0,Radius:4,RadiusOnUse:0,ReapplicationDelay:0,potion_contents:{custom_effects:[{id:"minecraft:levitation",duration:5,amplifier:10,show_particles:false,show_icon:false}]},custom_particle:{type:"minecraft:block",block_state:"minecraft:air"}}
summon minecraft:area_effect_cloud ~ ~1 ~ {Age:-1,WaitTime:0,Duration:1,DurationOnUse:0,Radius:4,RadiusOnUse:0,ReapplicationDelay:0,potion_contents:{custom_effects:[{id:"minecraft:levitation",duration:5,amplifier:10,show_particles:false,show_icon:false}]},custom_particle:{type:"minecraft:block",block_state:"minecraft:air"}}
summon minecraft:area_effect_cloud ~ ~2 ~ {Age:-1,WaitTime:0,Duration:1,DurationOnUse:0,Radius:4,RadiusOnUse:0,ReapplicationDelay:0,potion_contents:{custom_effects:[{id:"minecraft:levitation",duration:5,amplifier:10,show_particles:false,show_icon:false}]},custom_particle:{type:"minecraft:block",block_state:"minecraft:air"}}

kill @s
