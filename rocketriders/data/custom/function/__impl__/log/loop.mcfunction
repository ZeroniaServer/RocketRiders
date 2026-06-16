loot replace block 0 184 -16 container.0 loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_name",entity:"this",name:{storage:"rocketriders:main",nbt:"log.message"}}]}]}]}
data modify storage rocketriders:main log.join_left set from block 0 184 -16 Items[0].components.minecraft:custom_name.extra[1].text

data modify storage rocketriders:main log.next_component set from storage rocketriders:main log.message_components[0]
data remove storage rocketriders:main log.message_components[0]
data modify storage rocketriders:main log.message_components prepend from storage rocketriders:main log.next_component.extra[]
item replace block 0 184 -16 container.0 with stone
execute unless data storage rocketriders:main log.next_component{} run loot replace block 0 184 -16 container.0 loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_name",entity:"this",name:{storage:"rocketriders:main",nbt:"log.next_component"}}]}]}]}
execute if data storage rocketriders:main log.next_component.text run loot replace block 0 184 -16 container.0 loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_name",entity:"this",name:{storage:"rocketriders:main",nbt:"log.next_component.text"}}]}]}]}
execute if data storage rocketriders:main log.next_component.translate run loot replace block 0 184 -16 container.0 loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_name",entity:"this",name:{storage:"rocketriders:main",nbt:"log.next_component.translate"}}]}]}]}
data modify storage rocketriders:main log.join_right set value {text:"",extra:['"',{text:"?"},'"']}
data modify storage rocketriders:main log.join_right set from block 0 184 -16 Items[0].components.minecraft:custom_name
data modify storage rocketriders:main log.quote_type set from storage rocketriders:main log.join_right.extra[0]
data modify storage rocketriders:main log.join_right set from storage rocketriders:main log.join_right.extra[1].text
execute if data storage rocketriders:main log{quote_type:"'"} run function custom:__impl__/log/fix_quote_type with storage rocketriders:main log
function custom:__impl__/log/join with storage rocketriders:main log

execute if data storage rocketriders:main log.message_components[0] run function custom:__impl__/log/loop
