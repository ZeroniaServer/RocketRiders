##Puts out the executor's fire by placing a brief layer of water
function custom:summon_temp_marker_aec {modifiers:{nbt:{WaitTime:2,Tags:["fireAEC"]}}}
summon splash_potion ~ ~2.5 ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"water"},"minecraft:item_model":"air"}},Silent:true,Motion:[0.0d,-10.0d,0.0d],LeftOwner:true}