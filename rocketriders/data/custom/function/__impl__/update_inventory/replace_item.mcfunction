# arguments: id

$loot replace block 0 184 -16 container.0 loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:item/$(id)"}],modifier:[{type:"set_count",count:{type:"score",target:{type:"fixed",name:"$count"},score:"var"}},{type:"set_components",components:{damage:$(damage)},condition:[{type:"int_value_check",value:{type:"score",target:{type:"fixed",name:"$damage"},score:"var"},test:{min:1}}]}]}]}
