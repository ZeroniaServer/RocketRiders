#############################################
## MODIFIERSELECT: The selection interface ##
## for Modifiers in the Modification Room  ##
#############################################

#Instamine
execute if entity @s[scores={modifierID=0}] run data merge block -69 192 75 {Text1:'{"text":"Modifier:","color":"dark_aqua","clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection] modifierID 1"}}',Text2:'{"text":"Instamine","color":"aqua","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}',Text3:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":"true","clickEvent":{"action":"run_command","value":"tag @s add modifierInfo"}}'}
execute if entity @s[scores={modifierID=0}] run data merge block -69 191 75 {Text1:'{"text":"Instamine","color":"aqua"}'}
execute if entity @s[scores={modifierID=0},tag=Instamine,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Instamine","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] remove Instamine"}}',Text2:'{"text":"Enabled","color":"green","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":""}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
execute if entity @s[scores={modifierID=0},tag=!Instamine,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Instamine","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] add Instamine"}}',Text2:'{"text":"Disabled","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":""}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}

#No Fall
execute if entity @s[scores={modifierID=1}] run data merge block -69 192 75 {Text1:'{"text":"Modifier:","color":"dark_aqua","clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection] modifierID 1"}}',Text2:'{"text":"No Fall","color":"aqua","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":"true","clickEvent":{"action":"run_command","value":"tag @s add modifierInfo"}}'}
execute if entity @s[scores={modifierID=1}] run data merge block -69 191 75 {Text1:'{"text":"No Fall","color":"aqua"}'}
execute if entity @s[scores={modifierID=1},tag=NoFall,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"No Fall","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] remove NoFall"}}',Text2:'{"text":"Enabled","color":"green","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":""}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
execute if entity @s[scores={modifierID=1},tag=!NoFall,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"No Fall","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] add NoFall"}}',Text2:'{"text":"Disabled","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":""}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}

#Explosive
execute if entity @s[scores={modifierID=2}] run data merge block -69 192 75 {Text1:'{"text":"Modifier:","color":"dark_aqua","clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection] modifierID 1"}}',Text2:'{"text":"Explosive","color":"aqua","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":"true","clickEvent":{"action":"run_command","value":"tag @s add modifierInfo"}}'}
execute if entity @s[scores={modifierID=2}] run data merge block -69 191 75 {Text1:'{"text":"Explosive","color":"aqua"}'}
execute if entity @s[scores={modifierID=2},tag=Explosive,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Explosive","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] remove Explosive"}}',Text2:'{"text":"Enabled","color":"green","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":""}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
execute if entity @s[scores={modifierID=2},tag=!Explosive,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Explosive","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] add Explosive"}}',Text2:'{"text":"Disabled","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":""}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}

#Rocket Residers
execute if entity @s[scores={modifierID=3}] run data merge block -69 192 75 {Text1:'{"text":"Modifier:","color":"dark_aqua","clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection] modifierID 1"}}',Text2:'{"text":"Rocket Residers","color":"aqua","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":"true","clickEvent":{"action":"run_command","value":"tag @s add modifierInfo"}}'}
execute if entity @s[scores={modifierID=3}] run data merge block -69 191 75 {Text1:'{"text":"Rocket Residers","color":"aqua"}'}
execute if entity @s[scores={modifierID=3},tag=Residers,tag=!ResidersOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Rocket Residers","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] remove Residers"}}',Text2:'{"text":"Enabled","color":"green","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":""}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
execute if entity @s[scores={modifierID=3},tag=!Residers,tag=!ResidersOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Rocket Residers","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] add Residers"}}',Text2:'{"text":"Disabled","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":""}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
execute if entity @s[scores={modifierID=3},tag=ResidersOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Rocket Residers","color":"aqua"}',Text2:'{"text":"Disabled","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":"Locked","color":"white","bold":"true","clickEvent":{"action":"run_command","value":"tellraw @s {\\"text\\":\\"The Rocket Residers Modifier is incompatible with this gamemode.\\",\\"color\\":\\"dark_gray\\",\\"italic\\":\\"true\\"}"}}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
tag @s[tag=ResidersOff] remove Residers

#Sonar
execute if entity @s[scores={modifierID=4}] run data merge block -69 192 75 {Text1:'{"text":"Modifier:","color":"dark_aqua","clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection] modifierID 1"}}',Text2:'{"text":"Sonar","color":"aqua","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":"true","clickEvent":{"action":"run_command","value":"tag @s add modifierInfo"}}'}
execute if entity @s[scores={modifierID=4}] run data merge block -69 191 75 {Text1:'{"text":"Sonar","color":"aqua"}'}
execute if entity @s[scores={modifierID=4},tag=Sonar,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Sonar","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] remove Sonar"}}',Text2:'{"text":"Enabled","color":"green","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":""}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
execute if entity @s[scores={modifierID=4},tag=!Sonar,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Sonar","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] add Sonar"}}',Text2:'{"text":"Disabled","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":""}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}

#Molerat
execute if entity @s[scores={modifierID=5}] run data merge block -69 192 75 {Text1:'{"text":"Modifier:","color":"dark_aqua","clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection] modifierID 1"}}',Text2:'{"text":"Molerat","color":"aqua","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":"true","clickEvent":{"action":"run_command","value":"tag @s add modifierInfo"}}'}
execute if entity @s[scores={modifierID=5}] run data merge block -69 191 75 {Text1:'{"text":"Molerat","color":"aqua"}'}
execute if entity @s[scores={modifierID=5},tag=Molerat,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Molerat","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] remove Molerat"}}',Text2:'{"text":"Enabled","color":"green","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":""}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
execute if entity @s[scores={modifierID=5},tag=!Molerat,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Molerat","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] add Molerat"}}',Text2:'{"text":"Disabled","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":""}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
execute if entity @s[scores={modifierID=5},tag=MoleratOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Molerat","color":"aqua"}',Text2:'{"text":"Disabled","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":"Locked","color":"white","bold":"true","clickEvent":{"action":"run_command","value":"tellraw @s {\\"text\\":\\"The Molerat Modifier is incompatible with this gamemode.\\",\\"color\\":\\"dark_gray\\",\\"italic\\":\\"true\\"}"}}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
execute if entity @s[scores={modifierID=5},tag=Molerat,tag=!settingsLocked,tag=!WasMolerat] run data merge block -69 191 75 {Text4:'{"text":"(Causes lag)","color":"gray","italic":"true","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
execute if entity @s[scores={modifierID=5},tag=!Molerat,tag=!settingsLocked,tag=WasMolerat] run data merge block -69 191 75 {Text4:'{"text":"(Causes lag)","color":"gray","italic":"true","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}

#Minute Mix
execute if entity @s[scores={modifierID=6}] run data merge block -69 192 75 {Text1:'{"text":"Modifier:","color":"dark_aqua","clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection] modifierID 1"}}',Text2:'{"text":"Minute Mix","color":"aqua","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":"true","clickEvent":{"action":"run_command","value":"tag @s add modifierInfo"}}'}
execute if entity @s[scores={modifierID=6}] run data merge block -69 191 75 {Text1:'{"text":"Minute Mix","color":"aqua"}'}
execute if entity @s[scores={modifierID=6},tag=Minute,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Minute Mix","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] remove Minute"}}',Text2:'{"text":"Enabled","color":"green","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":""}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
execute if entity @s[scores={modifierID=6},tag=!Minute,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Minute Mix","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] add Minute"}}',Text2:'{"text":"Disabled","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":""}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
execute if entity @s[scores={modifierID=6},tag=WindDown,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Minute Mix","color":"aqua"}',Text2:'{"text":"Disabled","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":"Locked","color":"white","bold":"true","clickEvent":{"action":"run_command","value":"tellraw @s {\\"text\\":\\"The Minute Mix Modifier is incompatible with the Wind Down Modifier.\\",\\"color\\":\\"dark_gray\\",\\"italic\\":\\"true\\"}"}}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
tag @s[tag=Minute] remove WindDown

#Surprise Eggs
execute if entity @s[scores={modifierID=7}] run data merge block -69 192 75 {Text1:'{"text":"Modifier:","color":"dark_aqua","clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection] modifierID 1"}}',Text2:'{"text":"Surprise Eggs","color":"aqua","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":"true","clickEvent":{"action":"run_command","value":"tag @s add modifierInfo"}}'}
execute if entity @s[scores={modifierID=7}] run data merge block -69 191 75 {Text1:'{"text":"Surprise Eggs","color":"aqua"}'}
execute if entity @s[scores={modifierID=7},tag=SurpriseEgg,tag=!SurpriseEggOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Surprise Eggs","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] remove SurpriseEgg"}}',Text2:'{"text":"Enabled","color":"green","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":""}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
execute if entity @s[scores={modifierID=7},tag=!SurpriseEgg,tag=!SurpriseEggOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Surprise Eggs","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] add SurpriseEgg"}}',Text2:'{"text":"Disabled","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":""}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
execute if entity @s[scores={modifierID=7},tag=SurpriseEggOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Surprise Eggs","color":"aqua"}',Text2:'{"text":"Disabled","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":"Locked","color":"white","bold":"true","clickEvent":{"action":"run_command","value":"tellraw @s {\\"text\\":\\"The Surprise Eggs Modifier is incompatible with this gamemode.\\",\\"color\\":\\"dark_gray\\",\\"italic\\":\\"true\\"}"}}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
tag @s[tag=SurpriseEggOff] remove SurpriseEgg

#Wind Down
execute if entity @s[scores={modifierID=8}] run data merge block -69 192 75 {Text1:'{"text":"Modifier:","color":"dark_aqua","clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection] modifierID 1"}}',Text2:'{"text":"Wind Down","color":"aqua","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":"true","clickEvent":{"action":"run_command","value":"tag @s add modifierInfo"}}'}
execute if entity @s[scores={modifierID=8}] run data merge block -69 191 75 {Text1:'{"text":"Wind Down","color":"aqua"}'}
execute if entity @s[scores={modifierID=8},tag=WindDown,tag=!Minute,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Wind Down","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] remove WindDown"}}',Text2:'{"text":"Enabled","color":"green","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":""}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
execute if entity @s[scores={modifierID=8},tag=WindDownForce] run data merge block -69 191 75 {Text1:'{"text":"Wind Down","color":"aqua"}',Text2:'{"text":"Enabled","color":"green","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":"Locked","color":"white","bold":"true","clickEvent":{"action":"run_command","value":"tellraw @s {\\"text\\":\\"The Wind Down Modifier is required in this gamemode.\\",\\"color\\":\\"dark_gray\\",\\"italic\\":\\"true\\"}"}}'}
execute if entity @s[scores={modifierID=8},tag=!WindDown,tag=!Minute,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Wind Down","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] add WindDown"}}',Text2:'{"text":"Disabled","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":""}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
execute if entity @s[scores={modifierID=8},tag=Minute,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Wind Down","color":"aqua"}',Text2:'{"text":"Disabled","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":"Locked","color":"white","bold":"true","clickEvent":{"action":"run_command","value":"tellraw @s {\\"text\\":\\"The Wind Down Modifier is incompatible with the Minute Mix Modifier.\\",\\"color\\":\\"dark_gray\\",\\"italic\\":\\"true\\"}"}}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
tag @s[tag=WindDown] remove Minute

#Splash Streams
execute if entity @s[scores={modifierID=9}] run data merge block -69 192 75 {Text1:'{"text":"Modifier:","color":"dark_aqua","clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection] modifierID 1"}}',Text2:'{"text":"Splash Streams","color":"aqua","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":"true","clickEvent":{"action":"run_command","value":"tag @s add modifierInfo"}}'}
execute if entity @s[scores={modifierID=9}] run data merge block -69 191 75 {Text1:'{"text":"Splash Streams","color":"aqua"}'}
execute if entity @s[scores={modifierID=9},tag=SplashStreams,tag=!SplashStreamsOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Splash Streams","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] remove SplashStreams"}}',Text2:'{"text":"Enabled","color":"green","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":""}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
execute if entity @s[scores={modifierID=9},tag=!SplashStreams,tag=!SplashStreamsOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Splash Streams","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] add SplashStreams"}}',Text2:'{"text":"Disabled","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":""}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
execute if entity @s[scores={modifierID=9},tag=SplashStreamsOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Splash Streams","color":"aqua"}',Text2:'{"text":"Disabled","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":"Locked","color":"white","bold":"true","clickEvent":{"action":"run_command","value":"tellraw @s {\\"text\\":\\"The Splash Streams Modifier is incompatible with this gamemode.\\",\\"color\\":\\"dark_gray\\",\\"italic\\":\\"true\\"}"}}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
tag @s[tag=SplashStreamsOff] remove SplashStreams

#Spam Click
execute if entity @s[scores={modifierID=10}] run data merge block -69 192 75 {Text1:'{"text":"Modifier:","color":"dark_aqua","clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection] modifierID 1"}}',Text2:'{"text":"Spam Click","color":"aqua","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":"true","clickEvent":{"action":"run_command","value":"tag @s add modifierInfo"}}'}
execute if entity @s[scores={modifierID=10}] run data merge block -69 191 75 {Text1:'{"text":"Spam Click","color":"aqua"}'}
execute if entity @s[scores={modifierID=10},tag=SpamClick,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Spam Click","color":"aqua","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] remove SpamClick"}}',Text2:'{"text":"Enabled","color":"green","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":""}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
execute if entity @s[scores={modifierID=10},tag=!SpamClick,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Spam Click","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] add SpamClick"}}',Text2:'{"text":"Disabled","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":""}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}

#Ninja Jump
execute if entity @s[scores={modifierID=11}] run data merge block -69 192 75 {Text1:'{"text":"Modifier:","color":"dark_aqua","clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection] modifierID 1"}}',Text2:'{"text":"Ninja Jump","color":"aqua","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":"true","clickEvent":{"action":"run_command","value":"tag @s add modifierInfo"}}'}
execute if entity @s[scores={modifierID=11}] run data merge block -69 191 75 {Text1:'{"text":"Ninja Jump","color":"aqua"}'}
execute if entity @s[scores={modifierID=11},tag=NinjaJump,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Ninja Jump","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] remove NinjaJump"}}',Text2:'{"text":"Enabled","color":"green","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":""}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
execute if entity @s[scores={modifierID=11},tag=!NinjaJump,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Ninja Jump","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] add NinjaJump"}}',Text2:'{"text":"Disabled","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":""}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}

#Hardcore
execute if entity @s[scores={modifierID=12}] run data merge block -69 192 75 {Text1:'{"text":"Modifier:","color":"dark_aqua","clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection] modifierID 1"}}',Text2:'{"text":"Hardcore","color":"aqua","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":"true","clickEvent":{"action":"run_command","value":"tag @s add modifierInfo"}}'}
execute if entity @s[scores={modifierID=12}] run data merge block -69 191 75 {Text1:'{"text":"Hardcore","color":"aqua"}'}
execute if entity @s[scores={modifierID=12},tag=Hardcore,tag=!HardcoreOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Hardcore","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] remove Hardcore"}}',Text2:'{"text":"Enabled","color":"green","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:unlockdecos"}}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
execute if entity @s[scores={modifierID=12},tag=!Hardcore,tag=!HardcoreOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Hardcore","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] add Hardcore"}}',Text2:'{"text":"Disabled","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:lockdecos"}}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
execute if entity @s[scores={modifierID=12},tag=HardcoreOff,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Hardcore","color":"aqua"}',Text2:'{"text":"Disabled","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":"Locked","color":"white","bold":"true","clickEvent":{"action":"run_command","value":"tellraw @s {\\"text\\":\\"The Hardcore Modifier is incompatible with this gamemode.\\",\\"color\\":\\"dark_gray\\",\\"italic\\":\\"true\\"}"}}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
tag @s[tag=HardcoreOff] remove Hardcore

#Double Portal
execute if entity @s[scores={modifierID=13}] run data merge block -69 192 75 {Text1:'{"text":"Modifier:","color":"dark_aqua","clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection] modifierID 1"}}',Text2:'{"text":"Double Portal","color":"aqua","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":"true","clickEvent":{"action":"run_command","value":"tag @s add modifierInfo"}}'}
execute if entity @s[scores={modifierID=13}] run data merge block -69 191 75 {Text1:'{"text":"Double Portal","color":"aqua"}'}
execute if entity @s[scores={modifierID=13},tag=DoublePortal,tag=!noPortal,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Double Portal","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] remove DoublePortal"}}',Text2:'{"text":"Enabled","color":"green","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":""}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
execute if entity @s[scores={modifierID=13},tag=!DoublePortal,tag=!noPortal,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Double Portal","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] add DoublePortal"}}',Text2:'{"text":"Disabled","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":""}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
execute if entity @s[scores={modifierID=13},tag=noPortal,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Double Portal","color":"aqua"}',Text2:'{"text":"Disabled","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":"Locked","color":"white","bold":"true","clickEvent":{"action":"run_command","value":"tellraw @s {\\"text\\":\\"The Double Portal Modifier is incompatible with this gamemode.\\",\\"color\\":\\"dark_gray\\",\\"italic\\":\\"true\\"}"}}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
tag @s[tag=noPortal] remove DoublePortal

#Clutter Collector
execute if entity @s[scores={modifierID=14}] run data merge block -69 192 75 {Text1:'{"text":"Modifier:","color":"dark_aqua","clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection] modifierID 1"}}',Text2:'{"text":"Clutter Collector","color":"aqua","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":"true","clickEvent":{"action":"run_command","value":"tag @s add modifierInfo"}}'}
execute if entity @s[scores={modifierID=14}] run data merge block -69 191 75 {Text1:'{"text":"Clutter Collector","color":"aqua"}'}
execute if entity @s[scores={modifierID=14},tag=ClutterCollector,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Clutter Collector","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] remove ClutterCollector"}}',Text2:'{"text":"Enabled","color":"green","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":""}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}
execute if entity @s[scores={modifierID=14},tag=!ClutterCollector,tag=!settingsLocked] run data merge block -69 191 75 {Text1:'{"text":"Clutter Collector","color":"aqua","clickEvent":{"action":"run_command","value":"tag @e[type=armor_stand,tag=Selection] add ClutterCollector"}}',Text2:'{"text":"Disabled","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":""}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshmodifiersign"}}'}

#All locked
execute if entity @s[tag=settingsLocked] unless entity @s[scores={modifierID=8},tag=WindDownForce] run data merge block -69 191 75 {Text2:'{"text":"Locked","color":"white","bold":"true","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}",Text3:"{"text":"","clickEvent":{"action":"run_command","value":"tellraw @s {\\"text\\":\\"Modifiers are not adjustable in this gamemode.\\",\\"color\\":\\"dark_gray\\",\\"italic\\":\\"true\\"}"}}',Text4:'{"text":""}'}

#Reset/Info
execute as @a[tag=modifierInfo] run function modifiers:modifierinfo