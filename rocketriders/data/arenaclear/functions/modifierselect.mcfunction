#Instamine
execute as @s[scores={modifierID=0}] run data merge block -69 192 75 {Text1: "{\"text\":\"Modifier:\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] modifierID 1\"}}",Text2: "{\"text\":\"Instamine\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}",Text4: "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @s add modifierInfo\"}}"}
execute as @s[scores={modifierID=0},tag=Instamine,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove Instamine\"}}",Text2: "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Disabled Instamine Modifier!\\\",\\\"color\\\":\\\"red\\\",\\\"bold\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}"}
execute as @s[scores={modifierID=0},tag=!Instamine,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]
execute as @s[scores={modifierID=0},tag=!Instamine,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add Instamine\"}}",Text2: "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Enabled Instamine Modifier!\\\",\\\"color\\\":\\\"green\\\",\\\"bold\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}"}

#No Fall
execute as @s[scores={modifierID=1}] run data merge block -69 192 75 {Text1: "{\"text\":\"Modifier:\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] modifierID 1\"}}",Text2: "{\"text\":\"No Fall\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}",Text4: "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @s add modifierInfo\"}}"}
execute as @s[scores={modifierID=1},tag=NoFall,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove NoFall\"}}",Text2: "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Disabled No Fall Modifier!\\\",\\\"color\\\":\\\"red\\\",\\\"bold\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}"}
execute as @s[scores={modifierID=1},tag=!NoFall,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add NoFall\"}}",Text2: "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Enabled No Fall Modifier!\\\",\\\"color\\\":\\\"green\\\",\\\"bold\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}"}

#Explosive
execute as @s[scores={modifierID=2}] run data merge block -69 192 75 {Text1: "{\"text\":\"Modifier:\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] modifierID 1\"}}",Text2: "{\"text\":\"Explosive\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text4: "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @s add modifierInfo\"}}"}
execute as @s[scores={modifierID=2},tag=Explosive,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove Explosive\"}}",Text2: "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Disabled Explosive Modifier!\\\",\\\"color\\\":\\\"red\\\",\\\"bold\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}"}
execute as @s[scores={modifierID=2},tag=!Explosive,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add Explosive\"}}",Text2: "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Enabled Explosive Modifier!\\\",\\\"color\\\":\\\"green\\\",\\\"bold\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}"}

#Rocket Residers
execute as @s[scores={modifierID=3}] run data merge block -69 192 75 {Text1: "{\"text\":\"Modifier:\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] modifierID 1\"}}",Text2: "{\"text\":\"Rocket Residers\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}",Text4: "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @s add modifierInfo\"}}"}
execute as @s[scores={modifierID=3},tag=Residers,tag=!ResidersOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove Residers\"}}",Text2: "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Disabled Rocket Residers Modifier!\\\",\\\"color\\\":\\\"red\\\",\\\"bold\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}"}
execute as @s[scores={modifierID=3},tag=!Residers,tag=!ResidersOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add Residers\"}}",Text2: "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Enabled Rocket Residers Modifier!\\\",\\\"color\\\":\\\"green\\\",\\\"bold\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}"}
execute as @s[scores={modifierID=3},tag=ResidersOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"\"}",Text2: "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Rocket Residers Modifier is incompatible with this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}"}
tag @s[tag=ResidersOff] remove Residers

#Sonar
execute as @s[scores={modifierID=4}] run data merge block -69 192 75 {Text1: "{\"text\":\"Modifier:\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] modifierID 1\"}}",Text2: "{\"text\":\"Sonar\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}",Text4: "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @s add modifierInfo\"}}"}
execute as @s[scores={modifierID=4},tag=Sonar,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove Sonar\"}}",Text2: "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Disabled Sonar Modifier!\\\",\\\"color\\\":\\\"red\\\",\\\"bold\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}"}
execute as @s[scores={modifierID=4},tag=!Sonar,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add Sonar\"}}",Text2: "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Enabled Sonar Modifier!\\\",\\\"color\\\":\\\"green\\\",\\\"bold\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}"}

#Molerat
execute as @s[scores={modifierID=5}] run data merge block -69 192 75 {Text1: "{\"text\":\"Modifier:\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] modifierID 1\"}}",Text2: "{\"text\":\"Molerat\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}",Text4: "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @s add modifierInfo\"}}"}
execute as @s[scores={modifierID=5},tag=Molerat,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove Molerat\"}}",Text2: "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Disabled Molerat Modifier!\\\",\\\"color\\\":\\\"red\\\",\\\"bold\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}"}
execute as @s[scores={modifierID=5},tag=!Molerat,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add Molerat\"}}",Text2: "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Enabled Molerat Modifier!\\\",\\\"color\\\":\\\"green\\\",\\\"bold\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}"}
tag @s[tag=Molerat,tag=!WasMolerat] add WasMolerat

#Minute Mix
execute as @s[scores={modifierID=6}] run data merge block -69 192 75 {Text1: "{\"text\":\"Modifier:\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] modifierID 1\"}}",Text2: "{\"text\":\"Minute Mix\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}",Text4: "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @s add modifierInfo\"}}"}
execute as @s[scores={modifierID=6},tag=Minute,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove Minute\"}}",Text2: "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Disabled Minute Mix Modifier!\\\",\\\"color\\\":\\\"red\\\",\\\"bold\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}"}
execute as @s[scores={modifierID=6},tag=!Minute,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add Minute\"}}",Text2: "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Enabled Minute Mix Modifier!\\\",\\\"color\\\":\\\"green\\\",\\\"bold\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}"}
tag @s[tag=Minute] remove WindDown

#Surprise Eggs
execute as @s[scores={modifierID=7}] run data merge block -69 192 75 {Text1: "{\"text\":\"Modifier:\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] modifierID 1\"}}",Text2: "{\"text\":\"Surprise Eggs\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}",Text4: "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @s add modifierInfo\"}}"}
execute as @s[scores={modifierID=7},tag=SurpriseEgg,tag=!SurpriseEggOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove SurpriseEgg\"}}",Text2: "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Disabled Surprise Eggs Modifier!\\\",\\\"color\\\":\\\"red\\\",\\\"bold\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}"}
execute as @s[scores={modifierID=7},tag=!SurpriseEgg,tag=!SurpriseEggOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add SurpriseEgg\"}}",Text2: "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Enabled Surprise Eggs Modifier!\\\",\\\"color\\\":\\\"green\\\",\\\"bold\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}"}
execute as @s[scores={modifierID=7},tag=SurpriseEggOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"\"}",Text2: "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Surprise Eggs Modifier is incompatible with this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}"}
tag @s[tag=SurpriseEggOff] remove SurpriseEgg

#Wind Down
execute as @s[scores={modifierID=8}] run data merge block -69 192 75 {Text1: "{\"text\":\"Modifier:\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] modifierID 1\"}}",Text2: "{\"text\":\"Wind Down\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}",Text4: "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @s add modifierInfo\"}}"}
execute as @s[scores={modifierID=8},tag=WindDown,tag=!Minute,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove WindDown\"}}",Text2: "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Disabled Wind Down Modifier!\\\",\\\"color\\\":\\\"red\\\",\\\"bold\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}"}
execute as @s[scores={modifierID=8},tag=!WindDown,tag=!Minute,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add WindDown\"}}",Text2: "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Enabled Wind Down Modifier!\\\",\\\"color\\\":\\\"green\\\",\\\"bold\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}"}
execute as @s[scores={modifierID=8},tag=Minute,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"\"}",Text2: "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Wind Down Modifier is incompatible with Minute Mix modifier.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}"}

#Splash Streams
execute as @s[scores={modifierID=9}] run data merge block -69 192 75 {Text1: "{\"text\":\"Modifier:\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] modifierID 1\"}}",Text2: "{\"text\":\"Splash Streams\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}",Text4: "{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @s add modifierInfo\"}}"}
execute as @s[scores={modifierID=9},tag=SplashStreams,tag=!SplashStreamsOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove SplashStreams\"}}",Text2: "{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Disabled Splash Streams Modifier!\\\",\\\"color\\\":\\\"red\\\",\\\"bold\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}"}
execute as @s[scores={modifierID=9},tag=!SplashStreams,tag=!SplashStreamsOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add SplashStreams\"}}",Text2: "{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Enabled Splash Streams Modifier!\\\",\\\"color\\\":\\\"green\\\",\\\"bold\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}"}
execute as @s[scores={modifierID=9},tag=SplashStreamsOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"\"}",Text2: "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Splash Streams Modifier is incompatible with this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text4: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] refreshsigns 1\"}}"}
tag @s[tag=SplashStreamsOff] remove SplashStreams

#All locked
execute as @s[tag=settingsLocked] run data merge block -69 191 75 {Text1: "{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"Modifiers are not adjustable in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2: "{\"text\":\"Locked\",\"color\":\"white\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3:"{\"text\":\"\"}"}

#Reset/Info
scoreboard players set @s[scores={modifierID=10..}] modifierID 0
execute as @a[tag=modifierInfo] run function arenaclear:modifierinfo