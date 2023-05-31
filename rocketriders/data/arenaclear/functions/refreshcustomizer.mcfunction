##########################################
## REFRESHCUSTOMIZER: Displays selected ##
## Base Details in the Base Customizer  ##
##########################################

##RESET DECORATION SCORES
scoreboard players set @s[scores={TopDeco=4..}] TopDeco 0
scoreboard players set @s[scores={TopCorner=4..}] TopCorner 0
scoreboard players set @s[scores={MiddleDeco=4..}] MiddleDeco 0
scoreboard players set @s[scores={BottomDeco=4..}] BottomDeco 0
scoreboard players set @s[scores={PortalDeco=5..}] PortalDeco 0

####DECORATIONS####
##TOP DECORATION
#New Dawn arch
execute if entity @s[scores={TopDeco=1},tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 76 front_text.messages[0] set value "{\"text\":\"Top Detail:\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection] TopDeco 1\"}}"
execute if entity @s[scores={TopDeco=1},tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 76 front_text.messages[1] set value "{\"text\":\"Arch\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"
execute if entity @s[scores={TopDeco=1},tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 76 front_text.messages[3] set value "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function arenaclear:refreshcustomizer\"}}"
#Towers
execute if entity @s[scores={TopDeco=2},tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 76 front_text.messages[0] set value "{\"text\":\"Top Detail:\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection] TopDeco 1\"}}"
execute if entity @s[scores={TopDeco=2},tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 76 front_text.messages[1] set value "{\"text\":\"Towers\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"
execute if entity @s[scores={TopDeco=2},tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 76 front_text.messages[3] set value "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function arenaclear:refreshcustomizer\"}}"
#Spikes
execute if entity @s[scores={TopDeco=3},tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 76 front_text.messages[0] set value "{\"text\":\"Top Detail:\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection] TopDeco 1\"}}"
execute if entity @s[scores={TopDeco=3},tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 76 front_text.messages[1] set value "{\"text\":\"Spikes\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"
execute if entity @s[scores={TopDeco=3},tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 76 front_text.messages[3] set value "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function arenaclear:refreshcustomizer\"}}"
#None
execute if entity @s[scores={TopDeco=0},tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 76 front_text.messages[0] set value "{\"text\":\"Top Detail:\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection] TopDeco 1\"}}"
execute if entity @s[scores={TopDeco=0},tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 76 front_text.messages[1] set value "{\"text\":\"None\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"
execute if entity @s[scores={TopDeco=0},tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 76 front_text.messages[3] set value "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function arenaclear:refreshcustomizer\"}}"
#Locked
execute unless entity @s[tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 76 front_text.messages[0] set value "{\"text\":\"Top Detail:\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Base Details are not adjustable in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}"
execute unless entity @s[tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 76 front_text.messages[1] set value "{\"text\":\"Locked\",\"color\":\"black\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"
execute unless entity @s[tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 76 front_text.messages[3] set value "{\"text\":\"\"}"

##TOP SIDES
#New Dawn Platforms
execute if entity @s[scores={TopCorner=1},tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 71 front_text.messages[0] set value "{\"text\":\"Top Sides Detail:\",\"color\":\"#0090B8\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection] TopCorner 1\"}}"
execute if entity @s[scores={TopCorner=1},tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 71 front_text.messages[1] set value "{\"text\":\"Platform\",\"color\":\"#00C8FF\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"
execute if entity @s[scores={TopCorner=1},tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 71 front_text.messages[3] set value "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function arenaclear:refreshcustomizer\"}}"
#Spikes
execute if entity @s[scores={TopCorner=2},tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 71 front_text.messages[0] set value "{\"text\":\"Top Sides Detail:\",\"color\":\"#0090B8\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection] TopCorner 1\"}}"
execute if entity @s[scores={TopCorner=2},tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 71 front_text.messages[1] set value "{\"text\":\"Spikes\",\"color\":\"#00C8FF\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"
execute if entity @s[scores={TopCorner=2},tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 71 front_text.messages[3] set value "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function arenaclear:refreshcustomizer\"}}"
#Cannons
execute if entity @s[scores={TopCorner=3},tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 71 front_text.messages[0] set value "{\"text\":\"Top Sides Detail:\",\"color\":\"#0090B8\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection] TopCorner 1\"}}"
execute if entity @s[scores={TopCorner=3},tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 71 front_text.messages[1] set value "{\"text\":\"Cannons\",\"color\":\"#00C8FF\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"
execute if entity @s[scores={TopCorner=3},tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 71 front_text.messages[3] set value "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function arenaclear:refreshcustomizer\"}}"
#None
execute if entity @s[scores={TopCorner=0},tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 71 front_text.messages[0] set value "{\"text\":\"Top Sides Detail:\",\"color\":\"#0090B8\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection] TopCorner 1\"}}"
execute if entity @s[scores={TopCorner=0},tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 71 front_text.messages[1] set value "{\"text\":\"None\",\"color\":\"#00C8FF\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"
execute if entity @s[scores={TopCorner=0},tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 71 front_text.messages[3] set value "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function arenaclear:refreshcustomizer\"}}"
#Locked
execute unless entity @s[tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 71 front_text.messages[0] set value "{\"text\":\"Top Sides Detail:\",\"color\":\"#0090B8\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Base Details are not adjustable in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}"
execute unless entity @s[tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 71 front_text.messages[1] set value "{\"text\":\"Locked\",\"color\":\"black\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"
execute unless entity @s[tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 71 front_text.messages[3] set value "{\"text\":\"\"}"

##MIDDLE DECORATION
#New Dawn Slimepads
execute if entity @s[scores={MiddleDeco=1},tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 84 front_text.messages[0] set value "{\"text\":\"Middle Detail:\",\"color\":\"#C55F00\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection] MiddleDeco 1\"}}"
execute if entity @s[scores={MiddleDeco=1},tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 84 front_text.messages[1] set value "{\"text\":\"Slime Pads\",\"color\":\"#FF7B00\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"
execute if entity @s[scores={MiddleDeco=1},tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 84 front_text.messages[3] set value "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function arenaclear:refreshcustomizer\"}}"
#Spikes
execute if entity @s[scores={MiddleDeco=2},tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 84 front_text.messages[0] set value "{\"text\":\"Middle Detail:\",\"color\":\"#C55F00\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection] MiddleDeco 1\"}}"
execute if entity @s[scores={MiddleDeco=2},tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 84 front_text.messages[1] set value "{\"text\":\"Spikes\",\"color\":\"#FF7B00\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"
execute if entity @s[scores={MiddleDeco=2},tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 84 front_text.messages[3] set value "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function arenaclear:refreshcustomizer\"}}"
#Layered
execute if entity @s[scores={MiddleDeco=3},tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 84 front_text.messages[0] set value "{\"text\":\"Middle Detail:\",\"color\":\"#C55F00\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection] MiddleDeco 1\"}}"
execute if entity @s[scores={MiddleDeco=3},tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 84 front_text.messages[1] set value "{\"text\":\"Layered\",\"color\":\"#FF7B00\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"
execute if entity @s[scores={MiddleDeco=3},tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 84 front_text.messages[3] set value "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function arenaclear:refreshcustomizer\"}}"
#None
execute if entity @s[scores={MiddleDeco=0},tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 84 front_text.messages[0] set value "{\"text\":\"Middle Detail:\",\"color\":\"#C55F00\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection] MiddleDeco 1\"}}"
execute if entity @s[scores={MiddleDeco=0},tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 84 front_text.messages[1] set value "{\"text\":\"None\",\"color\":\"#FF7B00\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"
execute if entity @s[scores={MiddleDeco=0},tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 84 front_text.messages[3] set value "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function arenaclear:refreshcustomizer\"}}"
#Locked
execute unless entity @s[tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 84 front_text.messages[0] set value "{\"text\":\"Middle Detail:\",\"color\":\"#C55F00\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Base Details are not adjustable in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}"
execute unless entity @s[tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 84 front_text.messages[1] set value "{\"text\":\"Locked\",\"color\":\"black\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"
execute unless entity @s[tag=!settingsLocked,tag=!decosLocked] run data modify block -58 192 84 front_text.messages[3] set value "{\"text\":\"\"}"

##BOTTOM DECORATION
#New Dawn Slimepads
execute if entity @s[scores={BottomDeco=1},tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 80 front_text.messages[0] set value "{\"text\":\"Bottom Detail:\",\"color\":\"#BF4DB8\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection] BottomDeco 1\"}}"
execute if entity @s[scores={BottomDeco=1},tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 80 front_text.messages[1] set value "{\"text\":\"Slime Pad\",\"color\":\"#FF6AF6\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"
execute if entity @s[scores={BottomDeco=1},tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 80 front_text.messages[3] set value "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function arenaclear:refreshcustomizer\"}}"
#Spikes
execute if entity @s[scores={BottomDeco=2},tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 80 front_text.messages[0] set value "{\"text\":\"Bottom Detail:\",\"color\":\"#BF4DB8\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection] BottomDeco 1\"}}"
execute if entity @s[scores={BottomDeco=2},tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 80 front_text.messages[1] set value "{\"text\":\"Spikes\",\"color\":\"#FF6AF6\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"
execute if entity @s[scores={BottomDeco=2},tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 80 front_text.messages[3] set value "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function arenaclear:refreshcustomizer\"}}"
#Cannon
execute if entity @s[scores={BottomDeco=3},tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 80 front_text.messages[0] set value "{\"text\":\"Bottom Detail:\",\"color\":\"#BF4DB8\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection] BottomDeco 1\"}}"
execute if entity @s[scores={BottomDeco=3},tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 80 front_text.messages[1] set value "{\"text\":\"Cannon\",\"color\":\"#FF6AF6\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"
execute if entity @s[scores={BottomDeco=3},tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 80 front_text.messages[3] set value "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function arenaclear:refreshcustomizer\"}}"
#None
execute if entity @s[scores={BottomDeco=0},tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 80 front_text.messages[0] set value "{\"text\":\"Bottom Detail:\",\"color\":\"#BF4DB8\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection] BottomDeco 1\"}}"
execute if entity @s[scores={BottomDeco=0},tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 80 front_text.messages[1] set value "{\"text\":\"None\",\"color\":\"#FF6AF6\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"
execute if entity @s[scores={BottomDeco=0},tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 80 front_text.messages[3] set value "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function arenaclear:refreshcustomizer\"}}"
#Lock on Layered
execute if entity @s[scores={MiddleDeco=3},tag=!decosLocked] run data modify block -57 192 80 front_text.messages[0] set value "{\"text\":\"Bottom Detail:\",\"color\":\"#BF4DB8\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"This setting is not compatible with the Layered Middle Detail.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}"
execute if entity @s[scores={MiddleDeco=3},tag=!decosLocked] run data modify block -57 192 80 front_text.messages[1] set value "{\"text\":\"Locked\",\"color\":\"black\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"

#Locked
execute unless entity @s[tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 80 front_text.messages[0] set value "{\"text\":\"Bottom Detail:\",\"color\":\"#BF4DB8\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Base Details are not adjustable in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}"
execute unless entity @s[tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 80 front_text.messages[1] set value "{\"text\":\"Locked\",\"color\":\"black\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"
execute unless entity @s[tag=!settingsLocked,tag=!decosLocked] run data modify block -57 192 80 front_text.messages[3] set value "{\"text\":\"\"}"

##PORTAL DECORATION
#Hole in One
execute if entity @s[scores={PortalDeco=4},tag=!settingsLocked,tag=!portalDecosOff] run data modify block -58 192 73 front_text.messages[0] set value "{\"text\":\"Portal Detail:\",\"color\":\"#5A0079\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection] PortalDeco 1\"}}"
execute if entity @s[scores={PortalDeco=4},tag=!settingsLocked,tag=!portalDecosOff] run data modify block -58 192 73 front_text.messages[1] set value "{\"text\":\"Hole in One\",\"color\":\"#7900A4\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"
execute if entity @s[scores={PortalDeco=4},tag=!settingsLocked,tag=!portalDecosOff] run data modify block -58 192 73 front_text.messages[3] set value "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function arenaclear:refreshcustomizer\"}}"
#End Stone Cover
execute if entity @s[scores={PortalDeco=3},tag=!settingsLocked,tag=!portalDecosOff] run data modify block -58 192 73 front_text.messages[0] set value "{\"text\":\"Portal Detail:\",\"color\":\"#5A0079\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection] PortalDeco 1\"}}"
execute if entity @s[scores={PortalDeco=3},tag=!settingsLocked,tag=!portalDecosOff] run data modify block -58 192 73 front_text.messages[1] set value "{\"text\":\"End Stone Cover\",\"color\":\"#7900A4\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"
execute if entity @s[scores={PortalDeco=3},tag=!settingsLocked,tag=!portalDecosOff] run data modify block -58 192 73 front_text.messages[3] set value "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function arenaclear:refreshcustomizer\"}}"
#Glass Cover
execute if entity @s[scores={PortalDeco=2},tag=!settingsLocked,tag=!portalDecosOff] run data modify block -58 192 73 front_text.messages[0] set value "{\"text\":\"Portal Detail:\",\"color\":\"#5A0079\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection] PortalDeco 1\"}}"
execute if entity @s[scores={PortalDeco=2},tag=!settingsLocked,tag=!portalDecosOff] run data modify block -58 192 73 front_text.messages[1] set value "{\"text\":\"Glass Cover\",\"color\":\"#7900A4\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"
execute if entity @s[scores={PortalDeco=2},tag=!settingsLocked,tag=!portalDecosOff] run data modify block -58 192 73 front_text.messages[3] set value "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function arenaclear:refreshcustomizer\"}}"
#Glass Rim
execute if entity @s[scores={PortalDeco=1},tag=!settingsLocked,tag=!portalDecosOff] run data modify block -58 192 73 front_text.messages[0] set value "{\"text\":\"Portal Detail:\",\"color\":\"#5A0079\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection] PortalDeco 1\"}}"
execute if entity @s[scores={PortalDeco=1},tag=!settingsLocked,tag=!portalDecosOff] run data modify block -58 192 73 front_text.messages[1] set value "{\"text\":\"Glass Rim\",\"color\":\"#7900A4\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"
execute if entity @s[scores={PortalDeco=1},tag=!settingsLocked,tag=!portalDecosOff] run data modify block -58 192 73 front_text.messages[3] set value "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function arenaclear:refreshcustomizer\"}}"
#None
execute if entity @s[scores={PortalDeco=0},tag=!settingsLocked,tag=!portalDecosOff] run data modify block -58 192 73 front_text.messages[0] set value "{\"text\":\"Portal Detail:\",\"color\":\"#5A0079\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection] PortalDeco 1\"}}"
execute if entity @s[scores={PortalDeco=0},tag=!settingsLocked,tag=!portalDecosOff] run data modify block -58 192 73 front_text.messages[1] set value "{\"text\":\"None\",\"color\":\"#7900A4\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"
execute if entity @s[scores={PortalDeco=0},tag=!settingsLocked,tag=!portalDecosOff] run data modify block -58 192 73 front_text.messages[3] set value "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function arenaclear:refreshcustomizer\"}}"
#Locked
execute unless entity @s[tag=!settingsLocked,tag=!portalDecosOff] run data modify block -58 192 73 front_text.messages[0] set value "{\"text\":\"Portal Detail:\",\"color\":\"#5A0079\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Portal Details are not adjustable in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}"
execute unless entity @s[tag=!settingsLocked,tag=!portalDecosOff] run data modify block -58 192 73 front_text.messages[1] set value "{\"text\":\"Locked\",\"color\":\"black\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1\"}}"
execute unless entity @s[tag=!settingsLocked,tag=!portalDecosOff] run data modify block -58 192 73 front_text.messages[3] set value "{\"text\":\"\"}"

##Removes existing displays
fill -45 196 92 -55 185 64 air
fill -45 196 92 -55 185 64 air
fill -55 185 92 -40 206 64 air replace minecraft:orange_stained_glass
fill -55 185 92 -40 206 64 air replace minecraft:lime_stained_glass
fill -55 185 92 -40 206 64 air replace minecraft:pink_stained_glass
fill -40 196 92 -44 185 64 minecraft:white_stained_glass
fill -42 197 71 -45 199 75 air
fill -42 197 81 -45 199 85 air

##Top Decorations
#New Dawn Arch
execute if entity @s[scores={TopDeco=1},tag=!decosLocked] run place template archpreview -48 197 74
#Towers
execute if entity @s[scores={TopDeco=2},tag=!decosLocked] run place template towerpreview -44 197 65
execute if entity @s[scores={TopDeco=2},tag=!decosLocked] run place template towerpreview -44 197 87
#Spikes
execute if entity @s[scores={TopDeco=3},tag=!decosLocked] run place template spike_top_preview -45 197 71

##Top Sides Decorations
#New Dawn Platforms
execute if entity @s[scores={TopCorner=1},tag=!decosLocked] run place template topplatform_preview -50 194 71
execute if entity @s[scores={TopCorner=1},tag=!decosLocked] run place template topplatform_preview -50 194 81
#Spikes
execute if entity @s[scores={TopCorner=2},tag=!decosLocked] run place template spike_side_preview -51 193 68
execute if entity @s[scores={TopCorner=2},tag=!decosLocked] run place template spike_side_preview -51 193 88 none left_right
#Cannons
execute if entity @s[scores={TopCorner=3},tag=!decosLocked] run place template cannon_preview -45 196 72
execute if entity @s[scores={TopCorner=3},tag=!decosLocked] run place template cannon_preview -45 196 82

##Middle Decorations
#New Dawn Slimepads
execute if entity @s[scores={MiddleDeco=1},tag=!decosLocked] run place template midslimepad_preview -49 190 65
execute if entity @s[scores={MiddleDeco=1},tag=!decosLocked] run place template midslimepad_preview -49 190 85
#Spikes
execute if entity @s[scores={MiddleDeco=2},tag=!decosLocked] run place template spike_mid_preview -54 191 67
#Layered
execute if entity @s[scores={MiddleDeco=3},tag=!decosLocked] run scoreboard players set @s BottomDeco 0
execute if entity @s[scores={MiddleDeco=3},tag=!decosLocked] run fill -44 196 64 -43 196 92 minecraft:black_stained_glass replace air
execute if entity @s[scores={MiddleDeco=3},tag=!decosLocked] run fill -45 185 92 -45 192 64 minecraft:white_stained_glass
execute if entity @s[scores={MiddleDeco=3},tag=!decosLocked] run fill -46 185 92 -46 189 64 minecraft:white_stained_glass
execute if entity @s[scores={MiddleDeco=3},tag=!decosLocked] run fill -47 185 92 -47 186 64 minecraft:white_stained_glass
execute if entity @s[scores={MiddleDeco=3},tag=!decosLocked] run fill -45 193 92 -45 193 64 minecraft:black_stained_glass replace air
execute if entity @s[scores={MiddleDeco=3},tag=!decosLocked] run fill -46 190 92 -46 190 64 minecraft:black_stained_glass replace air
execute if entity @s[scores={MiddleDeco=3},tag=!decosLocked] run fill -47 187 92 -47 187 64 minecraft:black_stained_glass replace air

##Bottom Decorations
#New Dawn Slimepads
execute if entity @s[scores={BottomDeco=1},tag=!decosLocked] run place template bottomslimepad_preview -49 186 75
#Spikes
execute if entity @s[scores={BottomDeco=2},tag=!decosLocked] run place template spike_bottom_preview -53 185 76
#Cannon
execute if entity @s[scores={BottomDeco=3},tag=!decosLocked] run place template bottomcannon_preview -49 187 75