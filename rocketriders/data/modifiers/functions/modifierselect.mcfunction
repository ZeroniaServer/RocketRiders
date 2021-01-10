#############################################
## MODIFIERSELECT: The selection interface ##
## for Modifiers in the Modification Room  ##
#############################################

#Instamine
execute as @s[scores={modifierID=0}] run data merge block -69 192 75 {Text1: "{\"text\":\"Modifier:\",\"color\":\"dark_aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection,type=armor_stand] modifierID 1\"}}",Text2: "{\"text\":\"Instamine\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}",Text4: "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @s add modifierInfo\"}}"}
execute as @s[scores={modifierID=0}] run data merge block -69 191 75 {Text1: "{\"text\":\"Instamine\",\"color\":\"aqua\"}"}
execute as @s[scores={modifierID=0},tag=Instamine,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Instamine\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] remove Instamine\"}}",Text2: "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}
execute as @s[scores={modifierID=0},tag=!Instamine,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Instamine\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] add Instamine\"}}",Text2: "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}

#No Fall
execute as @s[scores={modifierID=1}] run data merge block -69 192 75 {Text1: "{\"text\":\"Modifier:\",\"color\":\"dark_aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection,type=armor_stand] modifierID 1\"}}",Text2: "{\"text\":\"No Fall\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}",Text4: "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @s add modifierInfo\"}}"}
execute as @s[scores={modifierID=1}] run data merge block -69 191 75 {Text1: "{\"text\":\"No Fall\",\"color\":\"aqua\"}"}
execute as @s[scores={modifierID=1},tag=NoFall,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"No Fall\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] remove NoFall\"}}",Text2: "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}
execute as @s[scores={modifierID=1},tag=!NoFall,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"No Fall\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] add NoFall\"}}",Text2: "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}

#Explosive
execute as @s[scores={modifierID=2}] run data merge block -69 192 75 {Text1: "{\"text\":\"Modifier:\",\"color\":\"dark_aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection,type=armor_stand] modifierID 1\"}}",Text2: "{\"text\":\"Explosive\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text4: "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @s add modifierInfo\"}}"}
execute as @s[scores={modifierID=2}] run data merge block -69 191 75 {Text1: "{\"text\":\"Explosive\",\"color\":\"aqua\"}"}
execute as @s[scores={modifierID=2},tag=Explosive,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Explosive\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] remove Explosive\"}}",Text2: "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}
execute as @s[scores={modifierID=2},tag=!Explosive,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Explosive\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] add Explosive\"}}",Text2: "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}

#Rocket Residers
execute as @s[scores={modifierID=3}] run data merge block -69 192 75 {Text1: "{\"text\":\"Modifier:\",\"color\":\"dark_aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection,type=armor_stand] modifierID 1\"}}",Text2: "{\"text\":\"Rocket Residers\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}",Text4: "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @s add modifierInfo\"}}"}
execute as @s[scores={modifierID=3}] run data merge block -69 191 75 {Text1: "{\"text\":\"Rocket Residers\",\"color\":\"aqua\"}"}
execute as @s[scores={modifierID=3},tag=Residers,tag=!ResidersOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Rocket Residers\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] remove Residers\"}}",Text2: "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}
execute as @s[scores={modifierID=3},tag=!Residers,tag=!ResidersOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Rocket Residers\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] add Residers\"}}",Text2: "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}
execute as @s[scores={modifierID=3},tag=ResidersOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Rocket Residers\",\"color\":\"aqua\"}",Text2: "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Rocket Residers Modifier is incompatible with this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}
tag @s[tag=ResidersOff] remove Residers

#Sonar
execute as @s[scores={modifierID=4}] run data merge block -69 192 75 {Text1: "{\"text\":\"Modifier:\",\"color\":\"dark_aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection,type=armor_stand] modifierID 1\"}}",Text2: "{\"text\":\"Sonar\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}",Text4: "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @s add modifierInfo\"}}"}
execute as @s[scores={modifierID=4}] run data merge block -69 191 75 {Text1: "{\"text\":\"Sonar\",\"color\":\"aqua\"}"}
execute as @s[scores={modifierID=4},tag=Sonar,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Sonar\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] remove Sonar\"}}",Text2: "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}
execute as @s[scores={modifierID=4},tag=!Sonar,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Sonar\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] add Sonar\"}}",Text2: "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}

#Molerat
execute as @s[scores={modifierID=5}] run data merge block -69 192 75 {Text1: "{\"text\":\"Modifier:\",\"color\":\"dark_aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection,type=armor_stand] modifierID 1\"}}",Text2: "{\"text\":\"Molerat\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}",Text4: "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @s add modifierInfo\"}}"}
execute as @s[scores={modifierID=5}] run data merge block -69 191 75 {Text1: "{\"text\":\"Molerat\",\"color\":\"aqua\"}"}
execute as @s[scores={modifierID=5},tag=Molerat,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Molerat\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] remove Molerat\"}}",Text2: "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}
execute as @s[scores={modifierID=5},tag=!Molerat,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Molerat\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] add Molerat\"}}",Text2: "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}
execute as @s[scores={modifierID=5},tag=Molerat,tag=!settingsLocked,tag=!WasMolerat] run data merge block -69 191 75 {Text4: "{\"text\":\"(Causes lag)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}
execute as @s[scores={modifierID=5},tag=!Molerat,tag=!settingsLocked,tag=WasMolerat] run data merge block -69 191 75 {Text4: "{\"text\":\"(Causes lag)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}


#Minute Mix
execute as @s[scores={modifierID=6}] run data merge block -69 192 75 {Text1: "{\"text\":\"Modifier:\",\"color\":\"dark_aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection,type=armor_stand] modifierID 1\"}}",Text2: "{\"text\":\"Minute Mix\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}",Text4: "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @s add modifierInfo\"}}"}
execute as @s[scores={modifierID=6}] run data merge block -69 191 75 {Text1: "{\"text\":\"Minute Mix\",\"color\":\"aqua\"}"}
execute as @s[scores={modifierID=6},tag=Minute,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Minute Mix\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] remove Minute\"}}",Text2: "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}
execute as @s[scores={modifierID=6},tag=!Minute,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Minute Mix\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] add Minute\"}}",Text2: "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}
tag @s[tag=Minute] remove WindDown

#Surprise Eggs
execute as @s[scores={modifierID=7}] run data merge block -69 192 75 {Text1: "{\"text\":\"Modifier:\",\"color\":\"dark_aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection,type=armor_stand] modifierID 1\"}}",Text2: "{\"text\":\"Surprise Eggs\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}",Text4: "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @s add modifierInfo\"}}"}
execute as @s[scores={modifierID=7}] run data merge block -69 191 75 {Text1: "{\"text\":\"Surprise Eggs\",\"color\":\"aqua\"}"}
execute as @s[scores={modifierID=7},tag=SurpriseEgg,tag=!SurpriseEggOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Surprise Eggs\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] remove SurpriseEgg\"}}",Text2: "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}
execute as @s[scores={modifierID=7},tag=!SurpriseEgg,tag=!SurpriseEggOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Surprise Eggs\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] add SurpriseEgg\"}}",Text2: "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}
execute as @s[scores={modifierID=7},tag=SurpriseEggOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Surprise Eggs\",\"color\":\"aqua\"}",Text2: "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Surprise Eggs Modifier is incompatible with this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}
tag @s[tag=SurpriseEggOff] remove SurpriseEgg

#Wind Down
execute as @s[scores={modifierID=8}] run data merge block -69 192 75 {Text1: "{\"text\":\"Modifier:\",\"color\":\"dark_aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection,type=armor_stand] modifierID 1\"}}",Text2: "{\"text\":\"Wind Down\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}",Text4: "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @s add modifierInfo\"}}"}
execute as @s[scores={modifierID=8}] run data merge block -69 191 75 {Text1: "{\"text\":\"Wind Down\",\"color\":\"aqua\"}"}
execute as @s[scores={modifierID=8},tag=WindDown,tag=!Minute,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Wind Down\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] remove WindDown\"}}",Text2: "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}
execute as @s[scores={modifierID=8},tag=!WindDown,tag=!Minute,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Wind Down\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] add WindDown\"}}",Text2: "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}
execute as @s[scores={modifierID=8},tag=Minute,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Wind Down\",\"color\":\"aqua\"}",Text2: "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Wind Down Modifier is incompatible with the Minute Mix Modifier.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}

#Splash Streams
execute as @s[scores={modifierID=9}] run data merge block -69 192 75 {Text1: "{\"text\":\"Modifier:\",\"color\":\"dark_aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection,type=armor_stand] modifierID 1\"}}",Text2: "{\"text\":\"Splash Streams\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}",Text4: "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @s add modifierInfo\"}}"}
execute as @s[scores={modifierID=9}] run data merge block -69 191 75 {Text1: "{\"text\":\"Splash Streams\",\"color\":\"aqua\"}"}
execute as @s[scores={modifierID=9},tag=SplashStreams,tag=!SplashStreamsOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Splash Streams\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] remove SplashStreams\"}}",Text2: "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}
execute as @s[scores={modifierID=9},tag=!SplashStreams,tag=!SplashStreamsOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Splash Streams\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] add SplashStreams\"}}",Text2: "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}
execute as @s[scores={modifierID=9},tag=SplashStreamsOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Splash Streams\",\"color\":\"aqua\"}",Text2: "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Splash Streams Modifier is incompatible with this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}
tag @s[tag=SplashStreamsOff] remove SplashStreams

#Spam Click
execute as @s[scores={modifierID=10}] run data merge block -69 192 75 {Text1: "{\"text\":\"Modifier:\",\"color\":\"dark_aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection,type=armor_stand] modifierID 1\"}}",Text2: "{\"text\":\"Spam Click\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}",Text4: "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @s add modifierInfo\"}}"}
execute as @s[scores={modifierID=10}] run data merge block -69 191 75 {Text1: "{\"text\":\"Spam Click\",\"color\":\"aqua\"}"}
execute as @s[scores={modifierID=10},tag=SpamClick,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Spam Click\",\"color\":\"aqua\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] remove SpamClick\"}}",Text2: "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}
execute as @s[scores={modifierID=10},tag=!SpamClick,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Spam Click\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] add SpamClick\"}}",Text2: "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}

#Ninja Jump
execute as @s[scores={modifierID=11}] run data merge block -69 192 75 {Text1: "{\"text\":\"Modifier:\",\"color\":\"dark_aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection,type=armor_stand] modifierID 1\"}}",Text2: "{\"text\":\"Ninja Jump\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}",Text4: "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @s add modifierInfo\"}}"}
execute as @s[scores={modifierID=11}] run data merge block -69 191 75 {Text1: "{\"text\":\"Ninja Jump\",\"color\":\"aqua\"}"}
execute as @s[scores={modifierID=11},tag=NinjaJump,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Ninja Jump\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] remove NinjaJump\"}}",Text2: "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}
execute as @s[scores={modifierID=11},tag=!NinjaJump,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Ninja Jump\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] add NinjaJump\"}}",Text2: "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}

#Hardcore
execute as @s[scores={modifierID=12}] run data merge block -69 192 75 {Text1: "{\"text\":\"Modifier:\",\"color\":\"dark_aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection,type=armor_stand] modifierID 1\"}}",Text2: "{\"text\":\"Hardcore\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}",Text4: "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @s add modifierInfo\"}}"}
execute as @s[scores={modifierID=12}] run data merge block -69 191 75 {Text1: "{\"text\":\"Hardcore\",\"color\":\"aqua\"}"}
execute as @s[scores={modifierID=12},tag=Hardcore,tag=!HardcoreOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Hardcore\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] remove Hardcore\"}}",Text2: "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:unlockdecos\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}
execute as @s[scores={modifierID=12},tag=!Hardcore,tag=!HardcoreOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Hardcore\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] add Hardcore\"}}",Text2: "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:lockdecos\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}
execute as @s[scores={modifierID=12},tag=HardcoreOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Hardcore\",\"color\":\"aqua\"}",Text2: "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Hardcore Modifier is incompatible with this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}
tag @s[tag=HardcoreOff] remove Hardcore

#Double Portal
execute as @s[scores={modifierID=13}] run data merge block -69 192 75 {Text1: "{\"text\":\"Modifier:\",\"color\":\"dark_aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection,type=armor_stand] modifierID 1\"}}",Text2: "{\"text\":\"Double Portal\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}",Text4: "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @s add modifierInfo\"}}"}
execute as @s[scores={modifierID=13}] run data merge block -69 191 75 {Text1: "{\"text\":\"Double Portal\",\"color\":\"aqua\"}"}
execute as @s[scores={modifierID=13},tag=DoublePortal,tag=!noPortal,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Double Portal\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] remove DoublePortal\"}}",Text2: "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}
execute as @s[scores={modifierID=13},tag=!DoublePortal,tag=!noPortal,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Double Portal\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection,type=armor_stand] add DoublePortal\"}}",Text2: "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}
execute as @s[scores={modifierID=13},tag=noPortal,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"Double Portal\",\"color\":\"aqua\"}",Text2: "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"The Double Portal Modifier is incompatible with this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @e[tag=Selection,type=armor_stand] run function arenaclear:refreshmodifiersign\"}}"}
tag @s[tag=noPortal] remove DoublePortal

#All locked
execute as @s[tag=settingsLocked] run data merge block -69 191 75 {Text2: "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Modifiers are not adjustable in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text4:"{\"text\":\"\"}"}

#Reset/Info
execute as @a[tag=modifierInfo] run function modifiers:modifierinfo