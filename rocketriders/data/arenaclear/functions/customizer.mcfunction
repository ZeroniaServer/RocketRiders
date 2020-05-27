#GAMEMODE SELECTION
execute if score @s SetGamemode > maxID gamemodeID run scoreboard players set @s SetGamemode 1

#ACTIVATE AND DEACTIVATE MISSILES WITH CATEGORIES
tag @s[tag=!rngToma,tag=!rngBlade,tag=!rngAnt,tag=!rngCata,tag=!rngLift,tag=!rngSlash,tag=!rngNull,tag=!rngEguard,tag=!rngCitadel,tag=!rngGemi] remove rngNormal
tag @s[tag=!rngHur,tag=!rngThun] remove rngLightning
tag @s[tag=!rngWar,tag=!rngJbuster,tag=!rngAux,tag=!rngRift] remove rngHeavy
tag @s[tag=!rngNormal,tag=!rngLightning,tag=!rngHeavy] remove rngMissile
tag @s[tag=!rngShield,tag=!rngArrows,tag=!rngVortex,tag=!rngObshield,tag=!rngSplash,tag=!rngCanopy,tag=!rngFireball,tag=!rngNova] remove rngUtil

#All of these would reenable categories automatically if any item from a category is selected while the category is disabled.
#However, the problem is that this means players cannot disable categories while still keeping any items in the category selected.
#At that point category signs would not be an option, more just a status indicator. Kinda goes against the point of the selection area.
#execute as @s[!rngNormal] unless entity @s[tag=!rngToma,tag=!rngBlade,tag=!rngAnt,tag=!rngCata,tag=!rngSlash,tag=!rngRift,tag=!rngNull,tag=!rngEguard,tag=!rngCitadel,tag=!rngGemi] run tag @s add rngNormal
#execute as @s[!rngLightning] unless entity @s[tag=!rngHur,tag=!rngThun] run tag @s add rngLightning
#execute as @s[!rngHeavy] unless entity @s[tag=!rngWar,tag=!rngJbuster,tag=!rngBull,tag=!rngAux] run tag @s add rngHeavy
#execute as @s[!rngMissile] unless entity @s[tag=!rngNormal,tag=!rngLightning,tag=!rngHeavy] run tag @s add rngMissile
#execute as @s[!rngUtil] unless entity @s[tag=!rngShield,tag=!rngArrows,tag=!rngVortex,tag=!rngObshield,tag=!rngSplash,tag=!rngCanopy,tag=!rngFireball,tag=!rngNova] run tag @s add rngUtil

#TOP DECORATION
execute as @s[scores={TopDeco=1}] run data merge block -57 195 78 {Text1: "{\"text\":\"Top Detail:\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] TopDeco 1\"}}",Text2: "{\"text\":\"Arch\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text4:"{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\"}"}
execute as @s[scores={TopDeco=1}] run fill -40 197 64 -44 206 92 air
execute as @s[scores={TopDeco=1}] run setblock -48 197 74 minecraft:structure_block{mode:"LOAD",name:"minecraft:archpreview",showboundingbox:0b}
execute as @s[scores={TopDeco=1}] run setblock -48 198 74 minecraft:redstone_block
execute as @s[scores={TopDeco=1}] run setblock -48 197 74 minecraft:air

execute as @s[scores={TopDeco=2}] run data merge block -57 195 78 {Text1: "{\"text\":\"Top Detail:\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] TopDeco 1\"}}",Text2: "{\"text\":\"Towers\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text4:"{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\"}"}
execute as @s[scores={TopDeco=2}] run fill -40 197 64 -44 206 92 air
execute as @s[scores={TopDeco=2}] run setblock -44 197 65 structure_block{mode:"LOAD",name:"minecraft:towerpreview",showboundingbox:0b}
execute as @s[scores={TopDeco=2}] run setblock -44 198 65 redstone_block
execute as @s[scores={TopDeco=2}] run setblock -44 197 65 air
execute as @s[scores={TopDeco=2}] run setblock -44 197 87 structure_block{mode:"LOAD",name:"minecraft:towerpreview",showboundingbox:0b}
execute as @s[scores={TopDeco=2}] run setblock -44 198 87 redstone_block
execute as @s[scores={TopDeco=2}] run setblock -44 197 87 air

execute as @s[scores={TopDeco=0}] run data merge block -57 195 78 {Text1: "{\"text\":\"Top Detail:\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] TopDeco 1\"}}",Text2: "{\"text\":\"None\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text4:"{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\"}"}
execute as @s[scores={TopDeco=0}] run fill -40 197 64 -44 206 92 air


#TOP SIDES
execute as @s[scores={TopCorner=1}] run data merge block -58 194 72 {Text1: "{\"text\":\"Top Sides Detail:\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] TopCorner 1\"}}",Text2: "{\"text\":\"Platform\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text4:"{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\"}"}
execute as @s[scores={TopCorner=1}] run setblock -50 194 71 structure_block{mode:"LOAD",name:"minecraft:topplatform_preview",showboundingbox:0b}
execute as @s[scores={TopCorner=1}] run setblock -50 195 71 redstone_block
execute as @s[scores={TopCorner=1}] run setblock -50 194 71 air
execute as @s[scores={TopCorner=1}] run setblock -50 194 81 structure_block{mode:"LOAD",name:"minecraft:topplatform_preview",showboundingbox:0b}
execute as @s[scores={TopCorner=1}] run setblock -50 195 81 redstone_block
execute as @s[scores={TopCorner=1}] run setblock -50 194 81 air

execute as @s[scores={TopCorner=0}] run data merge block -58 194 72 {Text1: "{\"text\":\"Top Sides Detail:\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] TopCorner 1\"}}",Text2: "{\"text\":\"None\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text4:"{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\"}"}
execute as @s[scores={TopCorner=0}] run fill -55 194 92 -45 196 64 air

#MIDDLE DECORATION
execute as @s[scores={MiddleDeco=1}] run data merge block -58 193 85 {Text1: "{\"text\":\"Middle Detail:\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] MiddleDeco 1\"}}",Text2: "{\"text\":\"Slime Pads\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text4:"{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\"}"}
execute as @s[scores={MiddleDeco=1}] run setblock -49 190 65 structure_block{mode:"LOAD",name:"minecraft:midslimepad_preview",showboundingbox:0b}
execute as @s[scores={MiddleDeco=1}] run setblock -49 191 65 redstone_block
execute as @s[scores={MiddleDeco=1}] run setblock -49 190 65 air
execute as @s[scores={MiddleDeco=1}] run setblock -49 190 85 structure_block{mode:"LOAD",name:"minecraft:midslimepad_preview",showboundingbox:0b}
execute as @s[scores={MiddleDeco=1}] run setblock -49 191 85 redstone_block
execute as @s[scores={MiddleDeco=1}] run setblock -49 190 85 air

execute as @s[scores={MiddleDeco=0}] run data merge block -58 193 85 {Text1: "{\"text\":\"Middle Detail:\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] MiddleDeco 1\"}}",Text2: "{\"text\":\"None\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text4:"{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\"}"}
execute as @s[scores={MiddleDeco=0}] run fill -51 190 92 -45 191 64 air


#BOTTOM DECORATION
execute as @s[scores={BottomDeco=1}] run data merge block -57 191 78 {Text1: "{\"text\":\"Bottom Detail:\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] BottomDeco 1\"}}",Text2: "{\"text\":\"Slime Pad\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text4:"{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\"}"}
execute as @s[scores={BottomDeco=1}] run setblock -49 186 75 structure_block{mode:"LOAD",name:"minecraft:bottomslimepad_preview",showboundingbox:0b}
execute as @s[scores={BottomDeco=1}] run setblock -49 187 75 redstone_block
execute as @s[scores={BottomDeco=1}] run setblock -49 186 75 air

execute as @s[scores={BottomDeco=0}] run data merge block -57 191 78 {Text1: "{\"text\":\"Bottom Detail:\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] BottomDeco 1\"}}",Text2: "{\"text\":\"None\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text4:"{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\"}"}
execute as @s[scores={BottomDeco=0}] run fill -45 189 82 -51 185 74 air


#PORTAL DECORATION
execute as @s[scores={PortalDeco=1}] run data merge block -58 192 72 {Text1: "{\"text\":\"Portal Detail:\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] PortalDeco 1\"}}",Text2: "{\"text\":\"Glass Rim\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text4:"{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\"}"}
execute as @s[scores={PortalDeco=0}] run data merge block -58 192 72 {Text1: "{\"text\":\"Portal Detail:\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] PortalDeco 1\"}}",Text2: "{\"text\":\"None\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text4:"{\"text\":\"(Click for next)\",\"color\":\"gray\",\"italic\":\"true\"}"}


#RESTORE DEFAULTS
data merge block -57 193 78 {Text2:"{\"text\":\"Restore Defaults\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add RestoreDefault\"}}",Text3:"{\"text\":\" \",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}"}


#CONFIRM CURRENT
data merge block -70 192 78 {Text2:"{\"text\":\"Confirm\",\"color\":\"light_purple\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[tag=CancelJoin,limit=1] unless entity @e[tag=Selection,tag=!rngMissile,tag=!rngUtil] as @e[tag=Selection] run function arenaclear:areaclear\"}}",Text3:"{\"text\":\"Changes\",\"color\":\"light_purple\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[tag=CancelJoin,limit=1] if entity @e[tag=Selection,tag=!rngMissile,tag=!rngUtil] run tellraw @p {\\\"text\\\":\\\"You must have at least one item category enabled to start the game.\\\",\\\"color\\\":\\\"red\\\",\\\"bold\\\":\\\"true\\\"}\"}}",Text4:"{\"text\":\" \",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @e[tag=CancelJoin,limit=1] unless entity @e[tag=Selection,tag=!rngMissile,tag=!rngUtil] as @a[team=Lobby] at @s run function arenaclear:notifystart\"}}"}


#RESET SCORES
scoreboard players set @s[scores={TopDeco=3..}] TopDeco 0
scoreboard players set @s[scores={TopCorner=2..}] TopCorner 0
scoreboard players set @s[scores={MiddleDeco=2..}] MiddleDeco 0
scoreboard players set @s[scores={BottomDeco=2..}] BottomDeco 0
scoreboard players set @s[scores={PortalDeco=2..}] PortalDeco 0

#RESTORE DEFAULTS
scoreboard players set @s[tag=RestoreDefault] TopDeco 1
scoreboard players set @s[tag=RestoreDefault] TopCorner 1
scoreboard players set @s[tag=RestoreDefault] MiddleDeco 1
scoreboard players set @s[tag=RestoreDefault] BottomDeco 1
scoreboard players set @s[tag=RestoreDefault] PortalDeco 1
tag @s[tag=RestoreDefault] remove RestoreDefault

##GAME OPTIONS
#missile pierce prevention
execute as @s[tag=doPrevention] run data merge block -70 193 79 {Text1:"{\"text\":\"Pierce Prevention\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove doPrevention\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!doPrevention] run data merge block -70 193 79 {Text1:"{\"text\":\"Pierce Prevention\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add doPrevention\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#hotbar limit
execute as @s[tag=doHotbarLimit] run data merge block -70 193 77 {Text1:"{\"text\":\"Hotbar Limit\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove doHotbarLimit\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!doHotbarLimit] run data merge block -70 193 77 {Text1:"{\"text\":\"Hotbar Limit\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add doHotbarLimit\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#item stacking (0=disabled, 1=arrows only, 2=enabled)
execute as @s[scores={doStacking=0}] run data merge block -70 191 77 {Text1:"{\"text\":\"Item Stacking\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] doStacking 1\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[scores={doStacking=1}] run data merge block -70 191 77 {Text1:"{\"text\":\"Item Stacking\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] doStacking 1\"}}",Text2:"{\"text\":\"Arrows Only\",\"color\":\"gold\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[scores={doStacking=2}] run data merge block -70 191 77 {Text1:"{\"text\":\"Item Stacking\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @e[tag=Selection] doStacking 1\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
scoreboard players set @s[scores={doStacking=3..}] doStacking 0

#item delay
scoreboard players enable @a[team=Lobby] MaxItemSec
scoreboard players add @a[team=Lobby] MaxItemSec 0
data merge block -70 191 79 {Text1:"{\"text\":\"Item Delay\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @s[team=!Yellow,team=!Blue,team=!Spectator] add ItemDelayChange\"}}",Text2:"[{\"score\":{\"name\":\"@e[tag=Selection,limit=1]\",\"objective\":\"MaxItemSec\"},\"color\":\"black\",\"bold\":true},{\"text\":\" seconds\",\"color\":\"black\",\"bold\":\"false\"}]",Text4: "{\"text\":\"(Click to adjust)\",\"color\":\"gray\",\"italic\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}"}
tellraw @a[team=!Yellow,team=!Blue,team=!Spectator,tag=ItemDelayChange] [{"text":"Item Delay: ","bold":true,"color":"white"},{"text":"[+5] ","color":"green","bold":"false","clickEvent":{"action":"run_command","value":"/trigger MaxItemSec set 5"}},{"text":"[+4] ","color":"green","bold":"false","clickEvent":{"action":"run_command","value":"/trigger MaxItemSec set 4"}},{"text":"[+3] ","color":"green","bold":"false","clickEvent":{"action":"run_command","value":"/trigger MaxItemSec set 3"}},{"text":"[+2] ","color":"green","bold":"false","clickEvent":{"action":"run_command","value":"/trigger MaxItemSec set 2"}},{"text":"[+1] ","color":"green","bold":"false","clickEvent":{"action":"run_command","value":"/trigger MaxItemSec set 1"}},{"text":"[-1] ","color":"red","bold":"false","clickEvent":{"action":"run_command","value":"/trigger MaxItemSec set -1"}},{"text":"[-2] ","color":"red","bold":"false","clickEvent":{"action":"run_command","value":"/trigger MaxItemSec set -2"}},{"text":"[-3] ","color":"red","bold":"false","clickEvent":{"action":"run_command","value":"/trigger MaxItemSec set -3"}},{"text":"[-4] ","color":"red","bold":"false","clickEvent":{"action":"run_command","value":"/trigger MaxItemSec set -4"}},{"text":"[-5] ","color":"red","bold":"false","clickEvent":{"action":"run_command","value":"/trigger MaxItemSec set -5"}}]
tag @a[tag=ItemDelayChange] remove ItemDelayChange
execute as @a[team=!Yellow,team=!Blue,team=!Spectator] unless score @s MaxItemSec matches 0 run function arenaclear:itemdelay
scoreboard players set @a MaxItemSec 0

##GAME MODIFIERS
function arenaclear:modifierselect

##ENABLE DISABLE ENTIRE CATEGORIES
#all missiles
execute as @s[tag=rngMissile] run data merge block -69 192 82 {Text1:"{\"text\":\"Any Missiles\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngMissile\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngMissile] run data merge block -69 192 82 {Text1:"{\"text\":\"Any Missiles\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngMissile\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#normal damage
execute as @s[tag=rngNormal] run data merge block -69 193 83 {Text1:"{\"text\":\"Normal Damage\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngNormal\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngNormal] run data merge block -69 193 83 {Text1:"{\"text\":\"Normal Damage\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngNormal\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#lightningspeed
execute as @s[tag=rngLightning] run data merge block -69 191 83 {Text1:"{\"text\":\"Lightning Speed\",\"color\":\"gold\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngLightning\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngLightning] run data merge block -69 191 83 {Text1:"{\"text\":\"Lighting Speed\",\"color\":\"gold\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngLightning\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#heavy damage
execute as @s[tag=rngHeavy] run data merge block -69 191 81 {Text1:"{\"text\":\"Heavy Damage\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngHeavy\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngHeavy] run data merge block -69 191 81 {Text1:"{\"text\":\"Heavy Damage\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngHeavy\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#utility items
execute as @s[tag=rngUtil] run data merge block -69 193 81 {Text1:"{\"text\":\"Utility Items\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngUtil\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngUtil] run data merge block -69 193 81 {Text1:"{\"text\":\"Utility Items\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngUtil\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#ROCKET RNG
#tomatwo
execute as @s[tag=rngToma] run data merge block -67 193 74 {Text1:"{\"text\":\"Tomatwo\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngToma\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngToma] run data merge block -67 193 74 {Text1:"{\"text\":\"Tomatwo\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngToma\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#blade
execute as @s[tag=rngBlade] run data merge block -67 192 74 {Text1:"{\"text\":\"Blade\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngBlade\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngBlade] run data merge block -67 192 74 {Text1:"{\"text\":\"Blade\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngBlade\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#ant
execute as @s[tag=rngAnt] run data merge block -66 193 74 {Text1:"{\"text\":\"A.N.T.\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngAnt\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngAnt] run data merge block -66 193 74 {Text1:"{\"text\":\"A.N.T.\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngAnt\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#catapult
execute as @s[tag=rngCata] run data merge block -66 192 74 {Text1:"{\"text\":\"Catapult\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngCata\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngCata] run data merge block -66 192 74 {Text1:"{\"text\":\"Catapult\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngCata\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#slasher
execute as @s[tag=rngSlash] run data merge block -65 193 74 {Text1:"{\"text\":\"Slasher\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngSlash\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngSlash] run data merge block -65 193 74 {Text1:"{\"text\":\"Slasher\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngSlash\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#lifter
execute as @s[tag=rngLift] run data merge block -65 192 74 {Text1:"{\"text\":\"Lifter\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngLift\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngLift] run data merge block -65 192 74 {Text1:"{\"text\":\"Lifter\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngLift\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#chronullifier
execute as @s[tag=rngNull] run data merge block -64 193 74 {Text1:"{\"text\":\"Chronullifier\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngNull\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngNull] run data merge block -64 193 74 {Text1:"{\"text\":\"Chronullifier\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngNull\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#elder guardian
execute as @s[tag=rngEguard] run data merge block -64 192 74 {Text1:"{\"text\":\"Elder Guardian\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngEguard\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngEguard] run data merge block -64 192 74 {Text1:"{\"text\":\"Elder Guardian\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngEguard\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#citadel
execute as @s[tag=rngCitadel] run data merge block -63 193 74 {Text1:"{\"text\":\"Citadel\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngCitadel\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngCitadel] run data merge block -63 193 74 {Text1:"{\"text\":\"Citadel\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngCitadel\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#gemini
execute as @s[tag=rngGemi] run data merge block -63 192 74 {Text1:"{\"text\":\"Gemini\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngGemi\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngGemi] run data merge block -63 192 74 {Text1:"{\"text\":\"Gemini\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngGemi\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#thunderbolt
execute as @s[tag=rngThun] run data merge block -62 193 74 {Text1:"{\"text\":\"Thunderbolt\",\"color\":\"gold\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngThun\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngThun] run data merge block -62 193 74 {Text1:"{\"text\":\"Thunderbolt\",\"color\":\"gold\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngThun\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#hurricane
execute as @s[tag=rngHur] run data merge block -62 192 74 {Text1:"{\"text\":\"Hurricane\",\"color\":\"gold\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngHur\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngHur] run data merge block -62 192 74 {Text1:"{\"text\":\"Hurricane\",\"color\":\"gold\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngHur\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#warhead
execute as @s[tag=rngWar] run data merge block -62 193 82 {Text1:"{\"text\":\"Warhead\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngWar\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngWar] run data merge block -62 193 82 {Text1:"{\"text\":\"Warhead\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngWar\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#juggerbuster
execute as @s[tag=rngJbuster] run data merge block -62 192 82 {Text1:"{\"text\":\"Juggerbuster\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngJbuster\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngJbuster] run data merge block -62 192 82 {Text1:"{\"text\":\"Juggerbuster\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngJbuster\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#rifter
execute as @s[tag=rngRift] run data merge block -63 193 82 {Text1:"{\"text\":\"Rifter\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngRift\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngRift] run data merge block -63 193 82 {Text1:"{\"text\":\"Rifter\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngRift\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#auxiliary
execute as @s[tag=rngAux] run data merge block -63 192 82 {Text1:"{\"text\":\"Auxiliary\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngAux\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngAux] run data merge block -63 192 82 {Text1:"{\"text\":\"Auxiliary\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngAux\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#arrows
execute as @s[tag=rngArrows] run data merge block -64 193 82 {Text1:"{\"text\":\"Arrows\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngArrows\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngArrows] run data merge block -64 193 82 {Text1:"{\"text\":\"Arrows\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngArrows\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#vortex
execute as @s[tag=rngVortex] run data merge block -64 192 82 {Text1:"{\"text\":\"Vortex\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngVortex\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngVortex] run data merge block -64 192 82 {Text1:"{\"text\":\"Vortex\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngVortex\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#obsidian shields
execute as @s[tag=rngObshield] run data merge block -65 193 82 {Text1:"{\"text\":\"Obsidian Shield\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngObshield\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngObshield] run data merge block -65 193 82 {Text1:"{\"text\":\"Obsidian Shield\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngObshield\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#splash
execute as @s[tag=rngSplash] run data merge block -65 192 82 {Text1:"{\"text\":\"Splash\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngSplash\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngSplash] run data merge block -65 192 82 {Text1:"{\"text\":\"Splash\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngSplash\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#fireball
execute as @s[tag=rngFireball] run data merge block -66 193 82 {Text1:"{\"text\":\"Fireball\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngFireball\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngFireball] run data merge block -66 193 82 {Text1:"{\"text\":\"Fireball\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngFireball\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#canopy
execute as @s[tag=rngCanopy] run data merge block -66 192 82 {Text1:"{\"text\":\"Canopy\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngCanopy\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngCanopy] run data merge block -66 192 82 {Text1:"{\"text\":\"Canopy\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngCanopy\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#novarocket
execute as @s[tag=rngNova] run data merge block -67 193 82 {Text1:"{\"text\":\"Nova Propellant\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngNova\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngNova] run data merge block -67 193 82 {Text1:"{\"text\":\"Nova Propellant\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngNova\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}

#shield
execute as @s[tag=rngShield] run data merge block -67 192 82 {Text1:"{\"text\":\"Shield\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] remove rngShield\"}}",Text2:"{\"text\":\"Enabled\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}
execute as @s[tag=!rngShield] run data merge block -67 192 82 {Text1:"{\"text\":\"Shield\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[tag=Selection] add rngShield\"}}",Text2:"{\"text\":\"Disabled\",\"color\":\"red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}",Text3: "{\"text\":\"\"}"}