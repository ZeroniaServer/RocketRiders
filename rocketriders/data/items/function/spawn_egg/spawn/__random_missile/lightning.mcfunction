# choose a random LIGHTNING missile
loot replace block 0 184 -16 container.0 loot {pools:[{rolls:1,entries:[\
    {type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_components",components:{"minecraft:custom_data":{missile:"hurricane"}}}],conditions:[{condition:"minecraft:reference",name:"game:item_pool/missile/hurricane"}]},\
    {type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_components",components:{"minecraft:custom_data":{missile:"thunderbolt"}}}],conditions:[{condition:"minecraft:reference",name:"game:item_pool/missile/thunderbolt"}]},\
]}]}

execute if items block 0 184 -16 container.0 *[custom_data={missile:"hurricane"}] run data modify storage rocketriders:main spawn_egg.missile set value "hurricane"
execute if items block 0 184 -16 container.0 *[custom_data={missile:"thunderbolt"}] run data modify storage rocketriders:main spawn_egg.missile set value "thunderbolt"
