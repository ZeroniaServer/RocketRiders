# arguments: text_component, write_to

$execute if entity @s run loot replace block 0 184 -16 container.0 loot {pools:[{rolls:1,entries:[{type:"item",name:"stone",functions:[{function:"set_name",entity:"this",name:$(text_component)}]}]}]}
$execute unless entity @s summon marker if function custom:entity/kill run loot replace block 0 184 -16 container.0 loot {pools:[{rolls:1,entries:[{type:"item",name:"stone",functions:[{function:"set_name",entity:"this",name:$(text_component)}]}]}]}
$data modify $(write_to) set from block 0 184 -16 Items[0].components.minecraft:custom_name
