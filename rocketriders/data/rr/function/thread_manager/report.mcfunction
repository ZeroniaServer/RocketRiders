# arguments: thread

execute unless function dev:enabled run return 0
execute in minecraft:overworld as @e[x=0,type=marker,tag=thread_manager] run function custom:entity/kill_marker
execute in minecraft:overworld run summon marker 0.0 0.0 0.0 {Tags:["thread_manager","thread_manager.name"],CustomName:{text:"",extra:[{text:"",bold:true,hover_event:{action:"show_text",value:""},insertion:"",extra:[{color:"blue",text:"R"},{color:"gold",text:"R"}]}]}}
$execute in minecraft:overworld run summon marker 0.0 0.0 0.0 {Tags:["thread_manager","thread_manager.message"],CustomName:{text:"",extra:[{text:"",hover_event:{action:"show_text",value:""},insertion:"",extra:[{color:"red",text:"Thread exceeded execution limit: "},{color:"yellow",text:"$(thread)"}]}]}}
execute in minecraft:overworld positioned 0.0 0.0 0.0 as @e[limit=1,distance=..0.01,tag=thread_manager,tag=thread_manager.name] run say @e[limit=1,distance=..0.01,tag=thread_manager,tag=thread_manager.message]
execute in minecraft:overworld as @e[x=0,type=marker,tag=thread_manager] run function custom:entity/kill_marker
