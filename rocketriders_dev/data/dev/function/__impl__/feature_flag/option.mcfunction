# arguments: name, description, index(0..9), config_id

$execute unless score @s dev matches 2$(index)1..2$(index)3 run return fail

$data modify storage rocketriders:main dev.dialog.body.contents set value ["",{"bold":true,"text":"$(name)"},"\n","$(description)","\n"]

$execute if score @s dev matches 2$(index)1 if predicate game:feature_flags/$(config_id) run data modify storage rocketriders:main dev.dialog.body.contents append value [{color:"gray",text:"\nWhen you opened this dialog, this feature was "},{color:"green",translate:"options.on"}]
$execute if score @s dev matches 2$(index)1 unless predicate game:feature_flags/$(config_id) run data modify storage rocketriders:main dev.dialog.body.contents append value [{color:"gray",text:"\nWhen you opened this dialog, this feature was "},{color:"red",translate:"options.off"}]
$execute if score @s dev matches 2$(index)1 run data modify storage rocketriders:main dev.dialog merge value {type:"minecraft:multi_action",actions:[{label:{translate:"options.off"},width:50,action:{type:"minecraft:run_command",command:"/trigger dev set 2$(index)2"}},{label:{translate:"options.on"},width:50,action:{type:"minecraft:run_command",command:"/trigger dev set 2$(index)3"}}]}

$execute if score @s dev matches 2$(index)2 run scoreboard players reset $$(config_id) config
$execute if score @s dev matches 2$(index)2 run data modify storage rocketriders:main dev.dialog.body.contents append value [{color:"gray",text:"\nYou turned this feature "},{color:"red",translate:"options.off"}]
$execute if score @s dev matches 2$(index)2 run function dev:__impl__/feature_flag/$(config_id)/off

$execute if score @s dev matches 2$(index)3 run scoreboard players set $$(config_id) config 1
$execute if score @s dev matches 2$(index)3 run data modify storage rocketriders:main dev.dialog.body.contents append value [{color:"gray",text:"\nYou turned this feature "},{color:"green",translate:"options.on"}]
$execute if score @s dev matches 2$(index)2 run function dev:__impl__/feature_flag/$(config_id)/on
