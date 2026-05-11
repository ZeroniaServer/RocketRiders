# choose a random LIGHTNING missile
loot replace block 0 184 -16 container.0 loot {pools:[{rolls:1,entries:[\
    {type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_components",components:{"minecraft:custom_data":{missile:"ant"}}}],conditions:[{condition:"minecraft:reference",name:"game:item_pool/missile/ant"}]},\
    {type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_components",components:{"minecraft:custom_data":{missile:"blade"}}}],conditions:[{condition:"minecraft:reference",name:"game:item_pool/missile/blade"}]},\
    {type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_components",components:{"minecraft:custom_data":{missile:"catapult"}}}],conditions:[{condition:"minecraft:reference",name:"game:item_pool/missile/catapult"}]},\
    {type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_components",components:{"minecraft:custom_data":{missile:"chronullifier"}}}],conditions:[{condition:"minecraft:reference",name:"game:item_pool/missile/chronullifier"}]},\
    {type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_components",components:{"minecraft:custom_data":{missile:"citadel"}}}],conditions:[{condition:"minecraft:reference",name:"game:item_pool/missile/citadel"}]},\
    {type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_components",components:{"minecraft:custom_data":{missile:"elder_guardian"}}}],conditions:[{condition:"minecraft:reference",name:"game:item_pool/missile/elder_guardian"}]},\
    {type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_components",components:{"minecraft:custom_data":{missile:"gemini"}}}],conditions:[{condition:"minecraft:reference",name:"game:item_pool/missile/gemini"}]},\
    {type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_components",components:{"minecraft:custom_data":{missile:"lifter"}}}],conditions:[{condition:"minecraft:reference",name:"game:item_pool/missile/lifter"}]},\
    {type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_components",components:{"minecraft:custom_data":{missile:"slasher"}}}],conditions:[{condition:"minecraft:reference",name:"game:item_pool/missile/slasher"}]},\
    {type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_components",components:{"minecraft:custom_data":{missile:"tomatwo"}}}],conditions:[{condition:"minecraft:reference",name:"game:item_pool/missile/tomatwo"}]},\
]}]}

execute if items block 0 184 -16 container.0 *[custom_data={missile:"ant"}] run data modify storage rocketriders:main spawn_egg.missile set value "ant"
execute if items block 0 184 -16 container.0 *[custom_data={missile:"blade"}] run data modify storage rocketriders:main spawn_egg.missile set value "blade"
execute if items block 0 184 -16 container.0 *[custom_data={missile:"catapult"}] run data modify storage rocketriders:main spawn_egg.missile set value "catapult"
execute if items block 0 184 -16 container.0 *[custom_data={missile:"chronullifier"}] run data modify storage rocketriders:main spawn_egg.missile set value "chronullifier"
execute if items block 0 184 -16 container.0 *[custom_data={missile:"citadel"}] run data modify storage rocketriders:main spawn_egg.missile set value "citadel"
execute if items block 0 184 -16 container.0 *[custom_data={missile:"elder_guardian"}] run data modify storage rocketriders:main spawn_egg.missile set value "elder_guardian"
execute if items block 0 184 -16 container.0 *[custom_data={missile:"gemini"}] run data modify storage rocketriders:main spawn_egg.missile set value "gemini"
execute if items block 0 184 -16 container.0 *[custom_data={missile:"lifter"}] run data modify storage rocketriders:main spawn_egg.missile set value "lifter"
execute if items block 0 184 -16 container.0 *[custom_data={missile:"slasher"}] run data modify storage rocketriders:main spawn_egg.missile set value "slasher"
execute if items block 0 184 -16 container.0 *[custom_data={missile:"tomatwo"}] run data modify storage rocketriders:main spawn_egg.missile set value "tomatwo"
