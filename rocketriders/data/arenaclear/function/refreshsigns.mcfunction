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
scoreboard players set @s[tag=!Repeat,scores={RepeatSettings=0}] RepeatSettings 1
execute unless entity @s[tag=Repeat] run data modify block -69 190 76 front_text.messages[0] set value {"text":"Repeat Settings:","color":"black","click_event":{"action":"run_command","command":"/execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:repeatincrement"}}
execute unless entity @s[tag=Repeat] run data modify block -69 190 76 front_text.messages[1] set value [{"score":{"name":"@e[x=0,type=armor_stand,tag=Selection,limit=1]","objective":"RepeatSettings"},"color":"black","bold":true},{"text":"x","color":"black","bold":false}]
execute unless entity @s[tag=Repeat] run data modify block -69 190 76 front_text.messages[3] set value {"text":"(Click to adjust)","color":"gray","italic":true,"click_event":{"action":"run_command","command":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"}}
