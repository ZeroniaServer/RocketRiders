################################################
## REFRESHSIGNS: Core function for refreshing ##
## Modification Room sign text and appearance ##
################################################

tag @s add refreshing_all_signs
function arenaclear:refreshmodifiersign
function arenaclear:refreshoptionssigns
function arenaclear:refreshitemsigns
function arenaclear:refreshcustomizer
tag @s remove refreshing_all_signs

#Temporarily block usage of Gamemode sign
data modify block -69 192 74 front_text.messages[0] set value {"text":"Gamemode:","color":"#6b006b","click_event":{"action":"run_command","command":"function arenaclear:modification_room_signs/interact_with_gamemode_sign"}}

#Special gamemode sign for no modes installed/enabled
execute unless entity @s[tag=!NoModesInstalled,tag=!NoModesEnabled] run data modify block -69 192 74 front_text.messages[1] set value {"text":"Missingno","color":"light_purple"}

#Refresh repeat sign
execute unless predicate game:repeat_settings/forever run scoreboard players operation $extra_match_repetitions config %= $4 constant
execute unless predicate game:repeat_settings/forever run scoreboard players add $extra_match_repetitions config 1
execute unless predicate game:repeat_settings/forever run data modify block -69 190 76 front_text.messages set value [{color:"black",text:"Repeat Settings:",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_repeat_sign"}},[{bold:true,color:"black",score:{name:"$extra_match_repetitions",objective:"config"}},{bold:false,text:"x"}],"",{color:"gray",italic:true,text:"(Click to adjust)"}]
execute unless predicate game:repeat_settings/forever run scoreboard players remove $extra_match_repetitions config 1
execute if score $extra_match_repetitions config matches ..0 run scoreboard players reset $extra_match_repetitions config
execute if predicate game:repeat_settings/forever run data modify block -69 190 76 front_text.messages set value [{color:"black",text:"Repeat Settings:",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_repeat_sign"}},{color:"black",text:"∞"},"",{color:"gray",italic:true,text:"(Click to adjust)"}]
