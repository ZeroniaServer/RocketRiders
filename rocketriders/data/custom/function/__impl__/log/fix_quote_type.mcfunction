$data modify storage rocketriders:main log.join_right set value '\'$(join_right)'
loot replace block 0 184 -16 container.0 loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_name",entity:"this",name:{storage:"rocketriders:main",nbt:"log.join_right"}}]}]}]}
data modify storage rocketriders:main log.join_right set string block 0 184 -16 Items[0].components.minecraft:custom_name.extra[1].text 1
