#lock canopy, splash, nova rocket
data merge block -65 192 82 {Text1:"{\"text\":\"Splash\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Splash is not compatible with this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\" \",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshitemsigns\"}}"}

data merge block -66 192 82 {Text1:"{\"text\":\"Canopy\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Canopy is not compatible with this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\" \",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshitemsigns\"}}"}

data merge block -67 193 82 {Text1:"{\"text\":\"Nova Rocket\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Nova Rocket is not compatible with this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\" \",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshitemsigns\"}}"}

#lock rifter, juggerbuster
data merge block -63 193 82 {Text1:"{\"text\":\"Rifter\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Rifter is not compatible with this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\" \",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshitemsigns\"}}"}

data merge block -62 192 82 {Text1:"{\"text\":\"Juggerbuster\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Juggerbuster is not compatible with this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2:"{\"text\":\"Locked\",\"color\":\"white\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click master @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\" \",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshitemsigns\"}}"}

#ICBM
execute as @s[tag=rngUtil,tag=rngVortex,tag=!settingsLocked] run data merge block -64 192 82 {Text1:"{\"text\":\"ICBM\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] remove rngVortex\"}}"}
execute as @s[tag=rngUtil,tag=!rngVortex,tag=!settingsLocked] run data merge block -64 192 82 {Text1:"{\"text\":\"ICBM\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] add rngVortex\"}}"}
execute as @s[tag=!rngUtil,tag=!settingsLocked] run data merge block -64 192 82 {Text1:"{\"text\":\"ICBM\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"This item is locked because Utility Items are disabled.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}"}

#Cluster Fireball
execute as @s[tag=rngUtil,tag=rngFireball,tag=!settingsLocked] run data merge block -66 193 82 {Text1:"{\"text\":\"Cluster Fireball\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] remove rngFireball\"}}"}
execute as @s[tag=rngUtil,tag=!rngFireball,tag=!settingsLocked] run data merge block -66 193 82 {Text1:"{\"text\":\"Cluster Fireball\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] add rngFireball\"}}"}
execute as @s[tag=!rngUtil,tag=!settingsLocked] run data merge block -66 193 82 {Text1:"{\"text\":\"Cluster Fireball\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"This item is locked because Utility Items are disabled.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}"}