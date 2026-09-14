# arguments: id, count, components

$execute unless predicate {type:entity_properties,entity:this,predicate:{slots:{hotbar.4:{items:"$(id)",components:$(components)}}}} run loot replace entity @s hotbar.4 loot {pools:[{rolls:1,entries:[{type:item,name:"$(id)",modifier:[{type:set_components,components:$(components)},{type:set_count,count:$(count)}]}]}]}
