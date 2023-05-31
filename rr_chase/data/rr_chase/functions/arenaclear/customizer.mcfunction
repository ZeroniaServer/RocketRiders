#management
data modify block -69 192 74 front_text.messages[0] set value '{"text":"Gamemode:","color":"#6b006b","clickEvent":{"action":"run_command","value":"scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection,scores={refreshsigns=..0}] SetGamemode 1"}}'
data modify block -69 192 74 front_text.messages[1] set value '{"text":"Chase","color":"light_purple","clickEvent":{"action":"run_command","value":"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,scores={refreshsigns=..0}] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1"}}'
data modify block -69 192 74 front_text.messages[3] set value '{"text":"(Click for next)","color":"gray","italic":true,"clickEvent":{"action":"run_command","value":"scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection] refreshsigns 1"}}'
execute if entity @s[scores={refreshsigns=1..}] run data modify block -69 192 74 front_text.messages[0] set value '{"text":"Gamemode:","color":"#6b006b"}'
data modify block -69 191 74 front_text.messages[0] set value '{"text":""}'
data modify block -69 191 74 front_text.messages[1] set value '{"color":"light_purple","clickEvent":{"action":"run_command","value":"function rr_chase:info"},"text":"Gamemode Info"}'
data modify block -69 191 74 front_text.messages[2] set value '{"clickEvent":{"action":"run_command","value":"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1"},"text":" "}'
data modify block -69 191 74 front_text.messages[3] set value '{"text":""}'

#lock arrows
data modify block -64 193 82 front_text.messages[0] set value "{\"text\":\"Arrows\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Arrows are required in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}"
data modify block -64 193 82 front_text.messages[1] set value "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"
data modify block -64 193 82 front_text.messages[2] set value "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"

#lock utilities
data modify block -69 193 81 front_text.messages[0] set value "{\"text\":\"Utility Items\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Utility Item category is not adjustable in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}"
data modify block -69 193 81 front_text.messages[1] set value "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"
data modify block -69 193 81 front_text.messages[2] set value "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"
data modify block -69 193 81 front_text.messages[3] set value "{\"text\":\"\"}"

tag @s add GamemodeRefreshed