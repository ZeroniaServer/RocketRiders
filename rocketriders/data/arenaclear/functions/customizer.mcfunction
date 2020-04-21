#GAMEMODE SELECTION
execute as @e[tag=Selection] if score @s SetGamemode > maxID gamemodeID run scoreboard players set @s SetGamemode 1

#ACTIVATE AND DEACTIVATE MISSILES WITH CATEGORIES
tag @e[tag=Selection,tag=!rngToma,tag=!rngBlade,tag=!rngAnt,tag=!rngCata,tag=!rngSlash,tag=!rngRift,tag=!rngNull,tag=!rngEguard,tag=!rngCitadel,tag=!rngGemi] remove rngNormal
tag @e[tag=Selection,tag=!rngHur,tag=!rngThun] remove rngLightning
tag @e[tag=Selection,tag=!rngWar,tag=!rngJbuster,tag=!rngBull,tag=!rngAux] remove rngHeavy
tag @e[tag=Selection,tag=!rngNormal,tag=!rngLightning,tag=!rngHeavy] remove rngMissile
tag @e[tag=Selection,tag=!rngShield,tag=!rngArrows,tag=!rngVortex,tag=!rngObshield,tag=!rngSplash,tag=!rngCanopy,tag=!rngFireball,tag=!rngNova] remove rngUtil

#All of these would reenable categories automatically if any item from a category is selected while the category is disabled.
#However, the problem is that this means players cannot disable categories while still keeping any items in the category selected.
#At that point category signs would not be an option, more just a status indicator. Kinda goes against the point of the selection area.
##execute as @e[tag=Selection,!rngNormal] unless entity @s[tag=!rngToma,tag=!rngBlade,tag=!rngAnt,tag=!rngCata,tag=!rngSlash,tag=!rngRift,tag=!rngNull,tag=!rngEguard,tag=!rngCitadel,tag=!rngGemi] run tag @s add rngNormal
##execute as @e[tag=Selection,!rngLightning] unless entity @s[tag=!rngHur,tag=!rngThun] run tag @s add rngLightning
##execute as @e[tag=Selection,!rngHeavy] unless entity @s[tag=!rngWar,tag=!rngJbuster,tag=!rngBull,tag=!rngAux] run tag @s add rngHeavy
##execute as @e[tag=Selection,!rngMissile] unless entity @s[tag=!rngNormal,tag=!rngLightning,tag=!rngHeavy] run tag @s add rngMissile
##execute as @e[tag=Selection,!rngUtil] unless entity @s[tag=!rngShield,tag=!rngArrows,tag=!rngVortex,tag=!rngObshield,tag=!rngSplash,tag=!rngCanopy,tag=!rngFireball,tag=!rngNova] run tag @s add rngUtil


execute as @e[tag=RNGheavy] unless entity @s[tag=RNGmissile] run scoreboard players set @e[tag=RNGrocket2] RNGselect 1
execute as @e[tag=RNGlightning] unless entity @s[tag=RNGmissile] run scoreboard players set @e[tag=RNGrocket3] RNGselect 1
execute as @e[tag=RNGnormal] unless entity @s[tag=RNGmissile] run scoreboard players set @e[tag=RNGrocket] RNGselect 1
execute as @e[tag=RNGutilstart] unless entity @s[tag=RNG] run scoreboard players set @e[tag=RNGutil] RNGselect 1


#TOP DECORATION -- TODO (update display commands)
execute as @e[scores={TopDeco=1}] run data merge block -57 195 78 {Text1: "{\"text\":\"Top Decoration:\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] TopDeco 1\"}}",Text2: "{\"text\":\"Arch\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}"}
#execute as @e[scores={TopDeco=1}] run data merge block -45 190 74 {mode:"LOAD",name:"minecraft:archpreview",showboundingbox:0b}
#execute as @e[scores={TopDeco=1}] run setblock -45 190 73 redstone_block
#execute as @e[scores={TopDeco=1}] run setblock -45 190 73 air

execute as @e[scores={TopDeco=2}] run data merge block -57 195 78 {Text1: "{\"text\":\"Top Decoration:\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] TopDeco 1\"}}",Text2: "{\"text\":\"Towers\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}"}
#execute as @e[scores={TopDeco=2}] run data merge block -45 190 74 {mode:"LOAD",name:"minecraft:towerpreview",showboundingbox:0b}
#execute as @e[scores={TopDeco=2}] run setblock -45 190 73 redstone_block
#execute as @e[scores={TopDeco=2}] run setblock -45 190 73 air

execute as @e[scores={TopDeco=0}] run data merge block -57 195 78 {Text1: "{\"text\":\"Top Decoration:\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] TopDeco 1\"}}",Text2: "{\"text\":\"None\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}"}
#execute as @e[scores={TopDeco=0}] run fill -45 191 74 -37 202 82 air


#TOP SIDES -- TODO (add display commands)
execute as @e[scores={TopCorner=1}] run data merge block -58 194 72 {Text1: "{\"text\":\"Top Sides:\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] TopCorner 1\"}}",Text2: "{\"text\":\"Platform\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}"}

execute as @e[scores={TopCorner=0}] run data merge block -58 194 72 {Text1: "{\"text\":\"Top Sides:\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] TopCorner 1\"}}",Text2: "{\"text\":\"None\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}"}


#MIDDLE DECORATION -- TODO (update display commands)
execute as @e[scores={MiddleDeco=1}] run data merge block -58 193 85 {Text1: "{\"text\":\"Middle Decoration:\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] MiddleDeco 1\"}}",Text2: "{\"text\":\"Slime Pads\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}"}
#execute as @e[scores={MiddleDeco=1}] run data merge block -45 189 84 {mode:"LOAD",name:"minecraft:slimepadpreview",showboundingbox:0b}
#execute as @e[scores={MiddleDeco=1}] run setblock -45 189 83 redstone_block
#execute as @e[scores={MiddleDeco=1}] run setblock -45 189 83 air

execute as @e[scores={MiddleDeco=0}] run data merge block -58 193 85 {Text1: "{\"text\":\"Middle Decoration:\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] MiddleDeco 1\"}}",Text2: "{\"text\":\"None\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}"}
#execute as @e[scores={MiddleDeco=0}] run fill -45 190 84 -41 194 92 air


#BOTTOM DECORATION -- TODO (update display commands)
execute as @e[scores={BottomDeco=1}] run data merge block -57 191 78 {Text1: "{\"text\":\"Bottom Decoration:\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] BottomDeco 1\"}}",Text2: "{\"text\":\"Slime Pad\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}"}
#execute as @e[scores={BottomDeco=1}] run data merge block -45 189 64 {mode:"LOAD",name:"minecraft:slimepadpreview",showboundingbox:0b}
#execute as @e[scores={BottomDeco=1}] run setblock -45 189 63 redstone_block
#execute as @e[scores={BottomDeco=1}] run setblock -45 189 63 air

execute as @e[scores={BottomDeco=0}] run data merge block -57 191 78 {Text1: "{\"text\":\"Bottom Decoration:\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] BottomDeco 1\"}}",Text2: "{\"text\":\"None\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}"}
#execute as @e[scores={BottomDeco=0}] run fill -45 190 64 -41 194 72 air


#RESTORE DEFAULTS
data merge block -57 193 78 {Text2:"{\"text\":\"Restore Defaults\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add RestoreDefault\"}}",Text3:"{\"text\":\" \",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}"}

#CONFIRM CURRENT
data merge block -70 192 78 {Text2:"{\"text\":\"Confirm\",\"color\":\"light_purple\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[tag=CancelJoin,limit=1] unless entity @e[tag=Selection,tag=!rngMissile,tag=!rngUtil] run function arenaclear:areaclear\"}}",Text3:"{\"text\":\"Changes\",\"color\":\"light_purple\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[tag=CancelJoin,limit=1] if entity @e[tag=Selection,tag=!rngMissile,tag=!rngUtil] run tellraw @p {\\\"text\\\":\\\"You must have at least one item category enabled to start the game.\\\",\\\"color\\\":\\\"red\\\",\\\"bold\\\":\\\"true\\\"}\"}}",Text4:"{\"text\":\" \",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}"}


#RESET SCORES
execute as @e[scores={TopDeco=3..}] run scoreboard players set @s TopDeco 0
execute as @e[scores={TopCorner=2..}] run scoreboard players set @s TopCorner 0
execute as @e[scores={MiddleDeco=2..}] run scoreboard players set @s MiddleDeco 0
execute as @e[scores={BottomDeco=2..}] run scoreboard players set @s BottomDeco 0

#RESTORE DEFAULTS -- TODO (update display commands)
scoreboard players set @e[tag=RestoreDefault] TopDeco 1
scoreboard players set @e[tag=RestoreDefault] TopCorner 1
scoreboard players set @e[tag=RestoreDefault] MiddleDeco 1
scoreboard players set @e[tag=RestoreDefault] BottomDeco 1
#execute as @e[tag=RestoreDefault] run fill -45 190 64 -41 194 72 air
#execute as @e[tag=RestoreDefault] run fill -45 191 74 -37 199 82 air
#execute as @e[tag=RestoreDefault] run fill -45 190 84 -41 194 92 air
tag @e[tag=RestoreDefault] remove RestoreDefault

#GAME OPTIONS
#missile pierce prevention
execute as @e[tag=Selection,tag=doPrevention] run data merge block -70 193 79 {Text1:"{\"text\":\"Pierce Prevention\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove doPrevention\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!doPrevention] run data merge block -70 193 79 {Text1:"{\"text\":\"Pierce Prevention\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add doPrevention\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#ENABLE DISABLE ENTIRE CATEGORIES
#all missiles
execute as @e[tag=Selection,tag=rngMissile] run data merge block -69 192 82 {Text1:"{\"text\":\"Any Missiles\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngMissile\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!rngMissile] run data merge block -69 192 82 {Text1:"{\"text\":\"Any Missiles\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngMissile\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#normal damage
execute as @e[tag=Selection,tag=rngNormal] run data merge block -69 193 83 {Text1:"{\"text\":\"Normal Damage\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngNormal\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!rngNormal] run data merge block -69 193 83 {Text1:"{\"text\":\"Normal Damage\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngNormal\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#lightningspeed
execute as @e[tag=Selection,tag=rngLightning] run data merge block -69 191 83 {Text1:"{\"text\":\"Lightning Speed\",\"color\":\"gold\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngLightning\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!rngLightning] run data merge block -69 191 83 {Text1:"{\"text\":\"Lighting Speed\",\"color\":\"gold\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngLightning\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#heavy damage
execute as @e[tag=Selection,tag=rngHeavy] run data merge block -69 191 81 {Text1:"{\"text\":\"Heavy Damage\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngHeavy\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!rngHeavy] run data merge block -69 191 81 {Text1:"{\"text\":\"Heavy Damage\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngHeavy\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#utility items
execute as @e[tag=Selection,tag=rngUtil] run data merge block -69 193 81 {Text1:"{\"text\":\"Utility Items\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngUtil\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!rngUtil] run data merge block -69 193 81 {Text1:"{\"text\":\"Utility Items\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngUtil\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#ROCKET RNG
#tomatwo
execute as @e[tag=Selection,tag=rngToma] run data merge block -67 193 74 {Text1:"{\"text\":\"Tomatwo\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngToma\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!rngToma] run data merge block -67 193 74 {Text1:"{\"text\":\"Tomatwo\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngToma\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#blade
execute as @e[tag=Selection,tag=rngBlade] run data merge block -67 192 74 {Text1:"{\"text\":\"Blade\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngBlade\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!rngBlade] run data merge block -67 192 74 {Text1:"{\"text\":\"Blade\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngBlade\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#ant
execute as @e[tag=Selection,tag=rngAnt] run data merge block -66 193 74 {Text1:"{\"text\":\"A.N.T.\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngAnt\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!rngAnt] run data merge block -66 193 74 {Text1:"{\"text\":\"A.N.T.\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngAnt\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#catapult
execute as @e[tag=Selection,tag=rngCata] run data merge block -66 192 74 {Text1:"{\"text\":\"Catapult\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngCata\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!rngCata] run data merge block -66 192 74 {Text1:"{\"text\":\"Catapult\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngCata\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#slasher
execute as @e[tag=Selection,tag=rngSlash] run data merge block -65 193 74 {Text1:"{\"text\":\"Slasher\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngSlash\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!rngSlash] run data merge block -65 193 74 {Text1:"{\"text\":\"Slasher\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngSlash\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#TODO replace with new normal missile
# #rifter
# execute as @e[tag=Selection,tag=rngRift] run data merge block -65 192 74 {Text1:"{\"text\":\"Rifter\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngRift\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
# execute as @e[tag=Selection,tag=!rngRift] run data merge block -65 192 74 {Text1:"{\"text\":\"Rifter\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngRift\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#chronullifier
execute as @e[tag=Selection,tag=rngNull] run data merge block -64 193 74 {Text1:"{\"text\":\"Chronullifier\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngNull\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!rngNull] run data merge block -64 193 74 {Text1:"{\"text\":\"Chronullifier\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngNull\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#elder guardian
execute as @e[tag=Selection,tag=rngEguard] run data merge block -64 192 74 {Text1:"{\"text\":\"Elder Guardian\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngEguard\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!rngEguard] run data merge block -64 192 74 {Text1:"{\"text\":\"Elder Guardian\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngEguard\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#citadel
execute as @e[tag=Selection,tag=rngCitadel] run data merge block -63 193 74 {Text1:"{\"text\":\"Citadel\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngCitadel\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!rngCitadel] run data merge block -63 193 74 {Text1:"{\"text\":\"Citadel\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngCitadel\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#gemini
execute as @e[tag=Selection,tag=rngGemi] run data merge block -63 192 74 {Text1:"{\"text\":\"Gemini\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngGemi\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!rngGemi] run data merge block -63 192 74 {Text1:"{\"text\":\"Gemini\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngGemi\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#thunderbolt
execute as @e[tag=Selection,tag=rngThun] run data merge block -62 193 74 {Text1:"{\"text\":\"Thunderbolt\",\"color\":\"gold\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngThun\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!rngThun] run data merge block -62 193 74 {Text1:"{\"text\":\"Thunderbolt\",\"color\":\"gold\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngThun\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#hurricane
execute as @e[tag=Selection,tag=rngHur] run data merge block -62 192 74 {Text1:"{\"text\":\"Hurricane\",\"color\":\"gold\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngHur\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!rngHur] run data merge block -62 192 74 {Text1:"{\"text\":\"Hurricane\",\"color\":\"gold\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngHur\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#warhead
execute as @e[tag=Selection,tag=rngWar] run data merge block -62 193 82 {Text1:"{\"text\":\"Warhead\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngWar\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!rngWar] run data merge block -62 193 82 {Text1:"{\"text\":\"Warhead\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngWar\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#juggerbuster
execute as @e[tag=Selection,tag=rngJbuster] run data merge block -62 192 82 {Text1:"{\"text\":\"Juggerbuster\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngJbuster\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!rngJbuster] run data merge block -62 192 82 {Text1:"{\"text\":\"Juggerbuster\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngJbuster\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#rifter
execute as @e[tag=Selection,tag=rngRift] run data merge block -63 193 82 {Text1:"{\"text\":\"Rifter\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngRift\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!rngRift] run data merge block -63 193 82 {Text1:"{\"text\":\"Rifter\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngRift\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#auxiliary
execute as @e[tag=Selection,tag=rngAux] run data merge block -63 192 82 {Text1:"{\"text\":\"Auxiliary\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngAux\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!rngAux] run data merge block -63 192 82 {Text1:"{\"text\":\"Auxiliary\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngAux\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#arrows
execute as @e[tag=Selection,tag=rngArrows] run data merge block -64 193 82 {Text1:"{\"text\":\"Arrows\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngArrows\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!rngArrows] run data merge block -64 193 82 {Text1:"{\"text\":\"Arrows\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngArrows\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#vortex
execute as @e[tag=Selection,tag=rngVortex] run data merge block -64 192 82 {Text1:"{\"text\":\"Vortex\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngVortex\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!rngVortex] run data merge block -64 192 82 {Text1:"{\"text\":\"Vortex\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngVortex\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#obsidian shields
execute as @e[tag=Selection,tag=rngObshield] run data merge block -65 193 82 {Text1:"{\"text\":\"Obsidian Shield\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngObshield\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!rngObshield] run data merge block -65 193 82 {Text1:"{\"text\":\"Obsidian Shield\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngObshield\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#splash
execute as @e[tag=Selection,tag=rngSplash] run data merge block -65 192 82 {Text1:"{\"text\":\"Splash\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngSplash\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!rngSplash] run data merge block -65 192 82 {Text1:"{\"text\":\"Splash\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngSplash\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#fireball
execute as @e[tag=Selection,tag=rngFireball] run data merge block -66 193 82 {Text1:"{\"text\":\"Fireball\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngFireball\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!rngFireball] run data merge block -66 193 82 {Text1:"{\"text\":\"Fireball\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngFireball\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#canopy
execute as @e[tag=Selection,tag=rngCanopy] run data merge block -66 192 82 {Text1:"{\"text\":\"Canopy\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngCanopy\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!rngCanopy] run data merge block -66 192 82 {Text1:"{\"text\":\"Canopy\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngCanopy\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#novarocket
execute as @e[tag=Selection,tag=rngNova] run data merge block -67 193 82 {Text1:"{\"text\":\"Nova Rocket\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngNova\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!rngNova] run data merge block -67 193 82 {Text1:"{\"text\":\"Nova Rocket\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngNova\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#shield
execute as @e[tag=Selection,tag=rngShield] run data merge block -67 192 82 {Text1:"{\"text\":\"Shield\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngShield\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @e[tag=Selection,tag=!rngShield] run data merge block -67 192 82 {Text1:"{\"text\":\"Shield\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngShield\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}