# choose a random LIGHTNING missile
loot replace block 0 184 -16 container.0 loot {pools:[{rolls:1,entries:[\
    {type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_components",components:{"minecraft:custom_data":{missile:"auxiliary"}}}],conditions:[{condition:"minecraft:reference",name:"game:item_pool/missile/auxiliary"}]},\
    {type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_components",components:{"minecraft:custom_data":{missile:"juggerbuster"}}}],conditions:[{condition:"minecraft:reference",name:"game:item_pool/missile/juggerbuster"}]},\
    {type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_components",components:{"minecraft:custom_data":{missile:"rifter"}}}],conditions:[{condition:"minecraft:reference",name:"game:item_pool/missile/rifter"}]},\
    {type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_components",components:{"minecraft:custom_data":{missile:"warhead"}}}],conditions:[{condition:"minecraft:reference",name:"game:item_pool/missile/warhead"}]},\
]}]}

execute if items block 0 184 -16 container.0 *[custom_data={missile:"auxiliary"}] run data modify storage rocketriders:main spawn_egg.missile set value "auxiliary"
execute if items block 0 184 -16 container.0 *[custom_data={missile:"juggerbuster"}] run data modify storage rocketriders:main spawn_egg.missile set value "juggerbuster"
execute if items block 0 184 -16 container.0 *[custom_data={missile:"rifter"}] run data modify storage rocketriders:main spawn_egg.missile set value "rifter"
execute if items block 0 184 -16 container.0 *[custom_data={missile:"warhead"}] run data modify storage rocketriders:main spawn_egg.missile set value "warhead"
