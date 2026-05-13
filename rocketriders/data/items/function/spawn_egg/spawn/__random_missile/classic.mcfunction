# choose a random CLASSIC missile
loot replace block 0 184 -16 container.0 loot {pools:[{rolls:1,entries:[\
    {type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_components",components:{"minecraft:custom_data":{missile:"classic/guardian"}}}]},\
    {type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_components",components:{"minecraft:custom_data":{missile:"classic/juggernaut"}}}]},\
    {type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_components",components:{"minecraft:custom_data":{missile:"classic/lightning"}}}]},\
    {type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_components",components:{"minecraft:custom_data":{missile:"classic/shield_buster"}}}]},\
    {type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_components",components:{"minecraft:custom_data":{missile:"classic/tomahawk"}}}]},\
]}]}

execute if items block 0 184 -16 container.0 *[custom_data={missile:"classic/guardian"}] run data modify storage rocketriders:main spawn_egg.missile set value "classic/guardian"
execute if items block 0 184 -16 container.0 *[custom_data={missile:"classic/juggernaut"}] run data modify storage rocketriders:main spawn_egg.missile set value "classic/juggernaut"
execute if items block 0 184 -16 container.0 *[custom_data={missile:"classic/lightning"}] run data modify storage rocketriders:main spawn_egg.missile set value "classic/lightning"
execute if items block 0 184 -16 container.0 *[custom_data={missile:"classic/shield_buster"}] run data modify storage rocketriders:main spawn_egg.missile set value "classic/shield_buster"
execute if items block 0 184 -16 container.0 *[custom_data={missile:"classic/tomahawk"}] run data modify storage rocketriders:main spawn_egg.missile set value "classic/tomahawk"
