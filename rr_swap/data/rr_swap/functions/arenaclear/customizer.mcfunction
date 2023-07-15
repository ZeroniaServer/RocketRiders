#management
data modify block -69 192 74 front_text.messages[0] set value '{"text":"Gamemode:","color":"#6b006b","clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection,scores={refreshsigns=..0}] SetGamemode 1"}}'
data modify block -69 192 74 front_text.messages[1] set value '{"text":"Swap","color":"light_purple","clickEvent":{"action":"run_command","value":"execute if entity @e[type=armor_stand,tag=Selection,scores={refreshsigns=..0}] run playsound ui.button.click master @a ~ ~ ~ 1 1"}}'
data modify block -69 192 74 front_text.messages[3] set value '{"text":"(Click for next)","color":"gray","italic":true,"clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection] refreshsigns 1"}}'
execute if entity @s[scores={refreshsigns=1..}] run data modify block -69 192 74 front_text.messages[0] set value '{"text":"Gamemode:","color":"#6b006b"}'
data modify block -69 191 74 front_text.messages[0] set value '{"text":""}'
data modify block -69 191 74 front_text.messages[1] set value '{"color":"light_purple","clickEvent":{"action":"run_command","value":"function rr_swap:info"},"text":"Gamemode Info"}'
data modify block -69 191 74 front_text.messages[2] set value '{"clickEvent":{"action":"run_command","value":"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a ~ ~ ~ 1 1"},"text":" "}'
data modify block -69 191 74 front_text.messages[3] set value '{"text":""}'

#lock canopy, splash, nova rocket
data modify block -65 192 82 front_text.messages[0] set value "{\"text\":\"Splash\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Splash is not compatible with this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}"
data modify block -65 192 82 front_text.messages[1] set value "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"
data modify block -65 192 82 front_text.messages[2] set value "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"

data modify block -66 192 82 front_text.messages[0] set value "{\"text\":\"Canopy\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Canopy is not compatible with this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}"
data modify block -66 192 82 front_text.messages[1] set value "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"
data modify block -66 192 82 front_text.messages[2] set value "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"

data modify block -67 193 82 front_text.messages[0] set value "{\"text\":\"Nova Rocket\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Nova Rocket is not compatible with this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}"
data modify block -67 193 82 front_text.messages[1] set value "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"
data modify block -67 193 82 front_text.messages[2] set value "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"

#lock rifter, juggerbuster
data modify block -63 193 82 front_text.messages[0] set value "{\"text\":\"Rifter\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Rifter is not compatible with this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}"
data modify block -63 193 82 front_text.messages[1] set value "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"
data modify block -63 193 82 front_text.messages[2] set value "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"

data modify block -62 192 82 front_text.messages[0] set value "{\"text\":\"Juggerbuster\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Juggerbuster is not compatible with this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}"
data modify block -62 192 82 front_text.messages[1] set value "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"
data modify block -62 192 82 front_text.messages[2] set value "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"

#ICBM
data modify block -64 192 82 front_text.messages[0] set value "{\"text\":\"ICBM\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"ICBMs are required in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}"
data modify block -64 192 82 front_text.messages[1] set value "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"
data modify block -64 192 82 front_text.messages[2] set value "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"

#Cluster Fireball
data modify block -66 193 82 front_text.messages[0] set value "{\"text\":\"Cluster Fireball\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Cluster Fireballs are required in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}"
data modify block -66 193 82 front_text.messages[1] set value "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"
data modify block -66 193 82 front_text.messages[2] set value "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"

#Obsidian Shield
data modify block -65 193 82 front_text.messages[0] set value "{\"text\":\"Obsidian Shield\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Obsidian Shields are required in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}"
data modify block -65 193 82 front_text.messages[1] set value "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"
data modify block -65 193 82 front_text.messages[2] set value "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"

#Arrows
data modify block -64 193 82 front_text.messages[0] set value "{\"text\":\"Arrows\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Arrows are required in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}"
data modify block -64 193 82 front_text.messages[1] set value "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"
data modify block -64 193 82 front_text.messages[2] set value "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"

#Shield
data modify block -67 192 82 front_text.messages[0] set value "{\"text\":\"Shield\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Shields are required in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}"
data modify block -67 192 82 front_text.messages[1] set value "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"
data modify block -67 192 82 front_text.messages[2] set value "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"

#lock utilities
data modify block -69 193 81 front_text.messages[0] set value "{\"text\":\"Utility Items\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Utility Items are required in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}"
data modify block -69 193 81 front_text.messages[1] set value "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"
data modify block -69 193 81 front_text.messages[2] set value "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"
data modify block -69 193 81 front_text.messages[3] set value "{\"text\":\"\"}"

#Auxiliary
data modify block -63 192 82 front_text.messages[0] set value "{\"text\":\"Auxiliary\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Auxiliary is required in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}"
data modify block -63 192 82 front_text.messages[1] set value "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"
data modify block -63 192 82 front_text.messages[2] set value "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"

#Warhead
data modify block -62 193 82 front_text.messages[0] set value "{\"text\":\"Warhead\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Warhead is required in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}"
data modify block -62 193 82 front_text.messages[1] set value "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"
data modify block -62 193 82 front_text.messages[2] set value "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"

#lock heavies
data modify block -69 191 81 front_text.messages[0] set value "{\"text\":\"Heavy Damage\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Heavy Damage Missiles are required in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}"
data modify block -69 191 81 front_text.messages[1] set value "{\"text\":\"Missiles\",\"color\":\"red\"}"
data modify block -69 191 81 front_text.messages[2] set value "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"
data modify block -69 191 81 front_text.messages[3] set value "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"

#Hurricane
data modify block -62 192 74 front_text.messages[0] set value "{\"text\":\"Hurricane\",\"color\":\"gold\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Hurricane is required in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}"
data modify block -62 192 74 front_text.messages[1] set value "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"
data modify block -62 192 74 front_text.messages[2] set value "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"

#Thunderbolt
data modify block -62 193 74 front_text.messages[0] set value "{\"text\":\"Thunderbolt\",\"color\":\"gold\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Thunderbolt is required in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}"
data modify block -62 193 74 front_text.messages[1] set value "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"
data modify block -62 193 74 front_text.messages[2] set value "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"

#lock lightnings
data modify block -69 191 83 front_text.messages[0] set value "{\"text\":\"Lightning Speed\",\"color\":\"gold\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Lightning Speed Missiles are required in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}"
data modify block -69 191 83 front_text.messages[1] set value "{\"text\":\"Missiles\",\"color\":\"gold\"}"
data modify block -69 191 83 front_text.messages[2] set value "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a ~ ~ ~ 1 1\"}}"
data modify block -69 191 83 front_text.messages[3] set value "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"

tag @s add GamemodeRefreshed