################################################
## REFRESHSIGNS: Core function for refreshing ##
## Modification Room sign text and appearance ##
################################################

function arenaclear:refreshmodifiersign
function arenaclear:refreshoptionssigns
function arenaclear:refreshitemsigns
function arenaclear:refreshcustomizer

#Temporarily block usage of Gamemode sign
data merge block -69 192 74 {Text1:'{"text":"Gamemode:","color":"#6b006b","clickEvent":{"action":"run_command","value":"scoreboard players add @e[x=0,type=armor_stand,tag=Selection,scores={refreshsigns=..0}] SetGamemode 1"}}'}

#Special gamemode sign for no modes installed/enabled
execute unless entity @s[tag=!NoModesInstalled,tag=!NoModesEnabled] run data merge block -69 192 74 {Text2:'{"text":"Missingno","color":"light_purple","clickEvent":{"action":"run_command","value":"execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"}}'}

#Refresh repeat sign
scoreboard players set @s[tag=!Repeat,scores={RepeatSettings=0}] RepeatSettings 1
execute unless entity @s[tag=Repeat] run data merge block -70 192 79 {Text1:"{\"text\":\"Repeat Settings:\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[x=0,type=armor_stand,tag=Selection] run function arenaclear:repeatincrement\"}}",Text2:"[{\"score\":{\"name\":\"@e[x=0,type=armor_stand,tag=Selection,limit=1]\",\"objective\":\"RepeatSettings\"},\"color\":\"black\",\"bold\":true},{\"text\":\"x\",\"color\":\"black\",\"bold\":\"false\"}]",Text3:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s [\\\"\\\",{\\\"text\\\":\\\"These settings will repeat for \\\",\\\"color\\\":\\\"gray\\\",\\\"italic\\\":\\\"true\\\"},{\\\"score\\\":{\\\"name\\\":\\\"@e[x=0,type=armor_stand,tag=Selection,limit=1]\\\",\\\"objective\\\":\\\"RepeatSettings\\\"},\\\"color\\\":\\\"white\\\",\\\"bold\\\":\\\"true\\\"},{\\\"text\\\":\\\" game(s).\\\",\\\"color\\\":\\\"gray\\\",\\\"italic\\\":\\\"true\\\"}]\"}}",Text4:"{\"text\":\"(Click to adjust)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1\"}}"}