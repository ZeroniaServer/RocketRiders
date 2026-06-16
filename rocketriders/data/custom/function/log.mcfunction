# arguments: message

execute if score $previous_log_gametime global < $gametime global run fill 0 184 -15 0 185 -15 air strict
execute if score $previous_log_gametime global < $gametime global run setblock 0 184 -15 test_block[mode=log]{message:"_______",mode:"log",powered:0b} strict
execute if score $previous_log_gametime global < $gametime global run setblock 0 185 -15 redstone_block
scoreboard players operation $previous_log_gametime global = $gametime global

fill 0 184 -15 0 185 -15 air strict
setblock 0 184 -15 test_block[mode=log]{message:"RR >> ",mode:"log",powered:0b} strict

data modify storage rocketriders:main log.message_components set value [""]
$data modify storage rocketriders:main log.message_components[0] set value $(message)
loot replace block 0 184 -16 container.0 27 loot custom:empty
execute if entity @s run loot replace block 0 184 -16 container.0 loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_name",entity:"this",name:["RR >> ",{storage:"rocketriders:main",nbt:"log.message_components[0]",interpret:true}]}]}]}]}
execute unless entity @s summon marker if function custom:entity/kill_marker run loot replace block 0 184 -16 container.0 loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_name",entity:"this",name:["RR >> ",{storage:"rocketriders:main",nbt:"log.message_components[0]",interpret:true}]}]}]}]}
data modify storage rocketriders:main log.message_components[0] set from block 0 184 -16 Items[0].components.minecraft:custom_name

data modify storage rocketriders:main log.message set value "'"
execute if entity @s run function custom:__impl__/log/loop
execute unless entity @s summon marker if function custom:entity/kill_marker run function custom:__impl__/log/loop
data modify storage rocketriders:main log.message set string storage rocketriders:main log.message 1

data modify block 0 184 -15 message set from storage rocketriders:main log.message
setblock 0 185 -15 redstone_block
