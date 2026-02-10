# arguments: message

execute unless function dev:enabled run return 0
execute in minecraft:overworld run summon marker 0.0 0.0 0.0 {Tags:["thread_manager"],CustomName:{text:"",extra:[{text:"",bold:true,hover_event:{action:"show_text",value:""},insertion:"",extra:[{color:"blue",text:"R"},{color:"gold",text:"R"}]}]}}
$execute as @e[limit=1,x=0.0,y=0.0,z=0.0,distance=..0.01,tag=thread_manager] if function custom:kill_marker run say $(message)
