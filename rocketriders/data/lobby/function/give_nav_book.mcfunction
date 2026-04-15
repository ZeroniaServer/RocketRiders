# arguments: id, count, components

$execute unless predicate {condition:entity_properties,entity:this,predicate:{slots:{hotbar.4:{items:"$(id)",components:$(components)}}}} run loot replace entity @s hotbar.4 loot {pools:[{rolls:1,entries:[{type:item,name:"$(id)",functions:[{function:set_components,components:$(components)},{function:set_count,count:$(count)}]}]}]}
