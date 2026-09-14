# arguments: id, count, components

$loot replace block 0 184 -16 container.4 loot {pools:[{rolls:1,entries:[{type:"item",name:"$(id)",modifier:[{type:"set_components",components:$(components)},{type:"set_count",count:$(count)}]}]}]}
