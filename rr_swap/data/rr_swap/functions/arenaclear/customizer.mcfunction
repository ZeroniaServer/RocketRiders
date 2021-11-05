#management
data merge block -69 192 74 {Text1:'{"text":"Gamemode:","color":"#6b006b","clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection,scores={refreshsigns=..0}] SetGamemode 1"}}',Text2:'{"text":"Swap","color":"light_purple","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":true,"clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection] refreshsigns 1"}}'}
execute if entity @s[scores={refreshsigns=1..}] run data merge block -69 192 74 {Text1:'{"text":"Gamemode:","color":"#6b006b"}'}
data merge block -69 191 74 {Text1:'{"text":""}',Text2:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"function rr_swap:info"},"text":"Gamemode Info"}',Text3:'{"clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"},"text":" "}',Text4:'{"text":""}'}

#lock canopy, splash, nova rocket
data merge block -65 192 82 {Text1:"{\"text\":\"Splash\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Splash is not compatible with this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"}

data merge block -66 192 82 {Text1:"{\"text\":\"Canopy\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Canopy is not compatible with this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"}

data merge block -67 193 82 {Text1:"{\"text\":\"Nova Rocket\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Nova Rocket is not compatible with this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"}

#lock rifter, juggerbuster
data merge block -63 193 82 {Text1:"{\"text\":\"Rifter\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Rifter is not compatible with this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"}

data merge block -62 192 82 {Text1:"{\"text\":\"Juggerbuster\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Juggerbuster is not compatible with this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"}

#ICBM
data merge block -64 192 82 {Text1:"{\"text\":\"ICBM\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"ICBMs are required in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"}

#Cluster Fireball
data merge block -66 193 82 {Text1:"{\"text\":\"Cluster Fireball\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Cluster Fireballs are required in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"}

#Obsidian Shield
data merge block -65 193 82 {Text1:"{\"text\":\"Obsidian Shield\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Obsidian Shields are required in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"}

#Arrows
data merge block -64 193 82 {Text1:"{\"text\":\"Arrows\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Arrows are required in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"}

#Shield
data merge block -67 192 82 {Text1:"{\"text\":\"Shield\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Shields are required in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"}

#lock utilities
data merge block -69 193 81 {Text1:"{\"text\":\"Utility Items\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Utility Items are required in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}",Text4:"{\"text\":\"\"}"}

#Auxiliary
data merge block -63 192 82 {Text1:"{\"text\":\"Auxiliary\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Auxiliary is required in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"}

#Warhead
data merge block -62 193 82 {Text1:"{\"text\":\"Warhead\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Warhead is required in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"}

#lock heavies
data merge block -69 191 81 {Text1:"{\"text\":\"Heavy Damage\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Heavy Damage Missiles are required in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Missiles\",\"color\":\"red\"}",Text3:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text4:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"}

#Hurricane
data merge block -62 192 74 {Text1:"{\"text\":\"Hurricane\",\"color\":\"gold\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Hurricane is required in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"}

#Thunderbolt
data merge block -62 193 74 {Text1:"{\"text\":\"Thunderbolt\",\"color\":\"gold\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Thunderbolt is required in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"}

#lock lightnings
data merge block -69 191 83 {Text1:"{\"text\":\"Lightning Speed\",\"color\":\"gold\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Lightning Speed Missiles are required in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Missiles\",\"color\":\"gold\"}",Text3:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text4:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[type=armor_stand,tag=Selection,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns\"}}"}

tag @s add GamemodeRefreshed