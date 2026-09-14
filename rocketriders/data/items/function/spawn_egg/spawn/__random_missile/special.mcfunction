# choose a random LIGHTNING missile
loot replace block 0 184 -16 container.0 loot {pools:[{rolls:1,entries:[\
    {type:"minecraft:item",name:"minecraft:stone",modifier:[{type:"minecraft:set_components",components:{"minecraft:custom_data":{missile:"broadsword"}}}],condition:"game:item_pool/missile/broadsword"},\
    {type:"minecraft:item",name:"minecraft:stone",modifier:[{type:"minecraft:set_components",components:{"minecraft:custom_data":{missile:"bullet"}}}],condition:"game:item_pool/missile/bullet"},\
    {type:"minecraft:item",name:"minecraft:stone",modifier:[{type:"minecraft:set_components",components:{"minecraft:custom_data":{missile:"duplex"}}}],condition:"game:item_pool/missile/duplex"},\
    {type:"minecraft:item",name:"minecraft:stone",modifier:[{type:"minecraft:set_components",components:{"minecraft:custom_data":{missile:"hypersonic"}}}],condition:"game:item_pool/missile/hypersonic"},\
]}]}

execute if items block 0 184 -16 container.0 *[custom_data={missile:"broadsword"}] run data modify storage rocketriders:main spawn_egg.missile set value "broadsword"
execute if items block 0 184 -16 container.0 *[custom_data={missile:"bullet"}] run data modify storage rocketriders:main spawn_egg.missile set value "bullet"
execute if items block 0 184 -16 container.0 *[custom_data={missile:"duplex"}] run data modify storage rocketriders:main spawn_egg.missile set value "duplex"
execute if items block 0 184 -16 container.0 *[custom_data={missile:"hypersonic"}] run data modify storage rocketriders:main spawn_egg.missile set value "hypersonic"
