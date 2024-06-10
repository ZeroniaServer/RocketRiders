##Adds 1 to Repeat Settings score and cycles back after 4
##Necessary so accurate score is displayed within same tick
scoreboard players add @s RepeatSettings 1
scoreboard players set @s[scores={RepeatSettings=5..}] RepeatSettings 1

scoreboard players set @s[scores={RepeatSettings=0}] RepeatSettings 1
execute if entity @s[scores={RepeatSettings=2..}] run data modify block -70 192 79 front_text.messages[0] set value "{\"text\":\"Repeat Settings:\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[x=0,type=armor_stand,tag=Selection] run function arenaclear:repeatincrement\"}}"
execute if entity @s[scores={RepeatSettings=2..}] run data modify block -70 192 79 front_text.messages[1] set value "[{\"score\":{\"name\":\"@e[x=0,type=armor_stand,tag=Selection,limit=1]\",\"objective\":\"RepeatSettings\"},\"color\":\"black\",\"bold\":true},{\"text\":\"x\",\"color\":\"black\",\"bold\":false}]"
execute unless entity @s[scores={RepeatSettings=4}] run data modify block -70 192 79 front_text.messages[2] set value "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s [\\\"\\\",{\\\"text\\\":\\\"These settings will apply for \\\",\\\"color\\\":\\\"gray\\\",\\\"italic\\\":true},{\\\"score\\\":{\\\"name\\\":\\\"@e[x=0,type=armor_stand,tag=Selection,limit=1]\\\",\\\"objective\\\":\\\"RepeatSettings\\\"},\\\"color\\\":\\\"white\\\",\\\"bold\\\":true},{\\\"text\\\":\\\" games.\\\",\\\"color\\\":\\\"gray\\\",\\\"italic\\\":true}]\"}}"
execute if entity @s[scores={RepeatSettings=2..}] run data modify block -70 192 79 front_text.messages[3] set value "{\"text\":\"(Click to adjust)\",\"color\":\"gray\",\"italic\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1\"}}"
execute if entity @s[scores={RepeatSettings=1}] run data modify block -70 192 79 front_text.messages[0] set value "{\"text\":\"Repeat Settings:\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[x=0,type=armor_stand,tag=Selection] run function arenaclear:repeatincrement\"}}"
execute if entity @s[scores={RepeatSettings=1}] run data modify block -70 192 79 front_text.messages[1] set value "[{\"score\":{\"name\":\"@e[x=0,type=armor_stand,tag=Selection,limit=1]\",\"objective\":\"RepeatSettings\"},\"color\":\"black\",\"bold\":true},{\"text\":\"x\",\"color\":\"black\",\"bold\":false}]"
execute if entity @s[scores={RepeatSettings=4}] run data modify block -70 192 79 front_text.messages[2] set value "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s [\\\"\\\",{\\\"text\\\":\\\"These settings will apply for \\\",\\\"color\\\":\\\"gray\\\",\\\"italic\\\":true},{\\\"score\\\":{\\\"name\\\":\\\"@e[x=0,type=armor_stand,tag=Selection,limit=1]\\\",\\\"objective\\\":\\\"RepeatSettings\\\"},\\\"color\\\":\\\"white\\\",\\\"bold\\\":true},{\\\"text\\\":\\\" game.\\\",\\\"color\\\":\\\"gray\\\",\\\"italic\\\":true}]\"}}"
execute if entity @s[scores={RepeatSettings=1}] run data modify block -70 192 79 front_text.messages[3] set value "{\"text\":\"(Click to adjust)\",\"color\":\"gray\",\"italic\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1\"}}"