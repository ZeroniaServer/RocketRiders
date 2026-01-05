# arguments: id, count, components

$execute unless predicate {condition:"entity_properties",entity:"this",predicate:{slots:{hotbar.4:{items:"$(id)",components:$(components)}}}} run loot replace entity @s hotbar.4 loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"$(id)",functions:[{function:"minecraft:set_components",components:$(components)},{function:"minecraft:set_count",count:$(count)}]}]}]}
