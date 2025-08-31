# arguments: loot_table_id

$loot replace block 0 184 -16 container.0 loot {pools:[{rolls:1,entries:[{type:"minecraft:loot_table",value:"$(loot_table_id)"}],functions:[{function:"minecraft:set_count",count:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"$count"},score:"var"}},{function:"minecraft:set_components",components:{"minecraft:damage":$(damage)},conditions:[{condition:"minecraft:value_check",value:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"$damage"},score:"var"},range:{min:1}}]}]}]}
