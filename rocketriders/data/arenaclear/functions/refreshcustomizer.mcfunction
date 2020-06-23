fill -45 196 92 -55 185 64 air
fill -45 196 92 -55 185 64 air
fill -55 185 92 -40 206 64 air replace minecraft:orange_stained_glass
fill -55 185 92 -40 206 64 air replace minecraft:lime_stained_glass
fill -55 185 92 -40 206 64 air replace minecraft:pink_stained_glass
fill -40 196 92 -44 185 64 minecraft:white_stained_glass


####Top Decorations####
##New Dawn Arch
execute as @s[scores={TopDeco=1}] run setblock -48 197 74 minecraft:structure_block{mode:"LOAD",name:"minecraft:archpreview",showboundingbox:0b}
execute as @s[scores={TopDeco=1}] run setblock -48 198 74 minecraft:redstone_block
execute as @s[scores={TopDeco=1}] run setblock -48 197 74 minecraft:air
##Towers
execute as @s[scores={TopDeco=2}] run setblock -44 197 65 structure_block{mode:"LOAD",name:"minecraft:towerpreview",showboundingbox:0b}
execute as @s[scores={TopDeco=2}] run setblock -44 198 65 redstone_block
execute as @s[scores={TopDeco=2}] run setblock -44 197 65 air
execute as @s[scores={TopDeco=2}] run setblock -44 197 87 structure_block{mode:"LOAD",name:"minecraft:towerpreview",showboundingbox:0b}
execute as @s[scores={TopDeco=2}] run setblock -44 198 87 redstone_block
execute as @s[scores={TopDeco=2}] run setblock -44 197 87 air
##Spikes
execute as @s[scores={TopDeco=3}] run setblock -45 197 71 structure_block{mode:"LOAD",name:"minecraft:spike_top_preview",showboundingbox:0b}
execute as @s[scores={TopDeco=3}] run setblock -45 198 71 redstone_block
execute as @s[scores={TopDeco=3}] run setblock -45 197 71 air



####Top Sides Decorations####
##New Dawn Platforms
execute as @s[scores={TopCorner=1}] run setblock -50 194 71 structure_block{mode:"LOAD",name:"minecraft:topplatform_preview",showboundingbox:0b}
execute as @s[scores={TopCorner=1}] run setblock -50 195 71 redstone_block
execute as @s[scores={TopCorner=1}] run setblock -50 194 71 air
execute as @s[scores={TopCorner=1}] run setblock -50 194 81 structure_block{mode:"LOAD",name:"minecraft:topplatform_preview",showboundingbox:0b}
execute as @s[scores={TopCorner=1}] run setblock -50 195 81 redstone_block
execute as @s[scores={TopCorner=1}] run setblock -50 194 81 air
execute as @s[tag=settingsLocked] run data merge block -58 194 72 {Text1: "{\"text\":\"Top Sides Detail:\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"text\\\":\\\"This setting is not adjustable in this gamemode.\\\",\\\"color\\\":\\\"dark_gray\\\",\\\"italic\\\":\\\"true\\\"}\"}}",Text2: "{\"text\":\"Locked\",\"color\":\"black\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"playsound ui.button.click player @a ~ ~ ~ 1 1\"}}"}



####Middle Decorations####
##New Dawn Slimepads
execute as @s[scores={MiddleDeco=1}] run setblock -49 190 65 structure_block{mode:"LOAD",name:"minecraft:midslimepad_preview",showboundingbox:0b}
execute as @s[scores={MiddleDeco=1}] run setblock -49 191 65 redstone_block
execute as @s[scores={MiddleDeco=1}] run setblock -49 190 65 air
execute as @s[scores={MiddleDeco=1}] run setblock -49 190 85 structure_block{mode:"LOAD",name:"minecraft:midslimepad_preview",showboundingbox:0b}
execute as @s[scores={MiddleDeco=1}] run setblock -49 191 85 redstone_block
execute as @s[scores={MiddleDeco=1}] run setblock -49 190 85 air
##Spikes
execute as @s[scores={MiddleDeco=2}] run setblock -54 191 67 structure_block{mode:"LOAD",name:"minecraft:spike_mid_preview",showboundingbox:0b}
execute as @s[scores={MiddleDeco=2}] run setblock -54 192 67 redstone_block
execute as @s[scores={MiddleDeco=2}] run setblock -54 191 67 air
##Layered
execute as @s[scores={MiddleDeco=3}] run scoreboard players set @s BottomDeco 0
execute as @s[scores={MiddleDeco=3}] run fill -44 196 64 -43 196 92 minecraft:black_stained_glass
execute as @s[scores={MiddleDeco=3}] run fill -45 185 92 -45 192 64 minecraft:white_stained_glass
execute as @s[scores={MiddleDeco=3}] run fill -46 185 92 -46 189 64 minecraft:white_stained_glass
execute as @s[scores={MiddleDeco=3}] run fill -47 185 92 -47 186 64 minecraft:white_stained_glass
execute as @s[scores={MiddleDeco=3}] run fill -45 193 92 -45 193 64 minecraft:black_stained_glass
execute as @s[scores={MiddleDeco=3}] run fill -46 190 92 -46 190 64 minecraft:black_stained_glass
execute as @s[scores={MiddleDeco=3}] run fill -47 187 92 -47 187 64 minecraft:black_stained_glass


####Bottom Decorations####
##New Dawn Slimepads
execute as @s[scores={BottomDeco=1}] run setblock -49 186 75 structure_block{mode:"LOAD",name:"minecraft:bottomslimepad_preview",showboundingbox:0b}
execute as @s[scores={BottomDeco=1}] run setblock -49 187 75 redstone_block
execute as @s[scores={BottomDeco=1}] run setblock -49 186 75 air
##Spikes
execute as @s[scores={BottomDeco=2}] run setblock -53 185 76 structure_block{mode:"LOAD",name:"minecraft:spike_bottom_preview",showboundingbox:0b}
execute as @s[scores={BottomDeco=2}] run setblock -53 186 76 redstone_block
execute as @s[scores={BottomDeco=2}] run setblock -53 185 76 air