# arguments: id, count, components

$loot replace block 0 184 -16 container.4 loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"$(id)",functions:[{function:"minecraft:set_components",components:$(components)},{function:"minecraft:set_count",count:$(count)}]}]}]}
