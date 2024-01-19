#management
data modify block -69 192 74 front_text.messages[0] set value '{"text":"Gamemode:","color":"#6b006b","clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection,scores={refreshsigns=..0}] SetGamemode 1"}}'
data modify block -69 192 74 front_text.messages[1] set value '{"text":"Capture the Flag","color":"light_purple","clickEvent":{"action":"run_command","value":"execute if entity @e[type=armor_stand,tag=Selection,scores={refreshsigns=..0}] run playsound ui.button.click master @a ~ ~ ~ 1 1"}}'
data modify block -69 192 74 front_text.messages[3] set value '{"text":"(Click for next)","color":"gray","italic":true,"clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection] refreshsigns 1"}}'
execute if entity @s[scores={refreshsigns=1..}] run data modify block -69 192 74 front_text.messages[0] set value '{"text":"Gamemode:","color":"#6b006b"}'
data modify block -69 191 74 front_text.messages[0] set value '{"text":""}'
data modify block -69 191 74 front_text.messages[1] set value '{"color":"light_purple","clickEvent":{"action":"run_command","value":"function rr_ctf:info"},"text":"Gamemode Info"}'
data modify block -69 191 74 front_text.messages[2] set value '{"clickEvent":{"action":"run_command","value":"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a ~ ~ ~ 1 1"},"text":" "}'
data modify block -69 191 74 front_text.messages[3] set value '{"text":""}'

#lock arrows, canopies, and fireballs
data modify block -64 193 82 front_text.messages[0] set value "{\"text\":\"Arrows\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Arrows are not compatible with this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":true}\"}}"
data modify block -64 193 82 front_text.messages[1] set value "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"
data modify block -64 193 82 front_text.messages[2] set value "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"

data modify block -66 192 82 front_text.messages[0] set value "{\"text\":\"Canopy\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Canopy is required in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":true}\"}}"
data modify block -66 192 82 front_text.messages[1] set value "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"
data modify block -66 192 82 front_text.messages[2] set value "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"

data modify block -66 193 82 front_text.messages[0] set value "{\"text\":\"Fireball\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Fireballs are required in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":true}\"}}"
data modify block -66 193 82 front_text.messages[1] set value "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"
data modify block -66 193 82 front_text.messages[2] set value "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"

#lock utilities
data modify block -69 193 81 front_text.messages[0] set value "{\"text\":\"Utility Items\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Utility Item category is not adjustable in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":true}\"}}"
data modify block -69 193 81 front_text.messages[1] set value "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"
data modify block -69 193 81 front_text.messages[2] set value "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"
data modify block -69 193 81 front_text.messages[3] set value "{\"text\":\"\"}"

#overtime instead of sudden death
execute if entity @s[tag=doTying] run data modify block -70 193 77 front_text.messages[0] set value "{\"text\":\"Overtime\",\"color\":\"white\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed,scores={refreshsigns=0}] remove doTying\"}}"
execute if entity @s[tag=doTying] run data modify block -70 193 77 front_text.messages[1] set value "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"
execute if entity @s[tag=doTying] run data modify block -70 193 77 front_text.messages[2] set value "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed] run tellraw @s [\\\"\\\",{\\\"text\\\":\\\"Overtime\\\",\\\"color\\\":\\\"white\\\",\\\"bold\\\":true},{\\\"text\\\":\\\" Disabled:\\\",\\\"color\\\":\\\"red\\\",\\\"bold\\\":true},{\\\"text\\\":\\\" There is no Overtime period in long games of Capture the Flag Mode.\\\",\\\"color\\\":\\\"gray\\\",\\\"italic\\\":true}]\"}}"
execute if entity @s[tag=doTying] run data modify block -70 193 77 front_text.messages[3] set value "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns\"}}"
execute if entity @s[tag=!doTying] run data modify block -70 193 77 front_text.messages[0] set value "{\"text\":\"Overtime\",\"color\":\"white\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed,scores={refreshsigns=0}] add doTying\"}}"
execute if entity @s[tag=!doTying] run data modify block -70 193 77 front_text.messages[1] set value "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"
execute if entity @s[tag=!doTying] run data modify block -70 193 77 front_text.messages[2] set value "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed] run tellraw @s [\\\"\\\",{\\\"text\\\":\\\"Overtime\\\",\\\"color\\\":\\\"white\\\",\\\"bold\\\":true},{\\\"text\\\":\\\" Enabled:\\\",\\\"color\\\":\\\"green\\\",\\\"bold\\\":true},{\\\"text\\\":\\\" If a Capture the Flag Mode game lasts for 30 minutes, it runs into an Overtime period where items are given twice as fast and Canopies stack to 3.\\\",\\\"color\\\":\\\"gray\\\",\\\"italic\\\":true}]\"}}"
execute if entity @s[tag=!doTying] run data modify block -70 193 77 front_text.messages[3] set value "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns\"}}"

tag @s add GamemodeRefreshed