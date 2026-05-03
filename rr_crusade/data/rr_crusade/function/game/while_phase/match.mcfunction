#general
function rr_crusade:game/cancel_utility

#Set banners/light blocks (wait 1 tick before restoring banner due to MC-302559)
function rr_crusade:game/place_nexus_labels_blue with storage rocketriders:teams blue.team_banner
function rr_crusade:game/place_nexus_labels_yellow with storage rocketriders:teams yellow.team_banner

#> Kit signs
#blue
execute if score $restore_blue_kit_sign_knight global matches 1 run setblock 14 64 -64 minecraft:oak_wall_sign[facing=north]{front_text:{color:"gray",has_glowing_text:true,messages:["",{color:"#09FF00",text:"Select Kit:",click_event:{action:"run_command",command:"trigger crusadechange set 1"}},{bold:true,color:"#008805",text:"Knight"},""]}} strict
execute if score $restore_blue_kit_sign_knight global matches 1 run scoreboard players reset $restore_blue_kit_sign_knight global
execute unless block 14 64 -64 minecraft:oak_wall_sign run scoreboard players set $restore_blue_kit_sign_knight global 1
execute if score $restore_blue_kit_sign_archer global matches 1 run setblock 12 64 -63 minecraft:oak_wall_sign[facing=north]{front_text:{color:"gray",has_glowing_text:true,messages:["",{color:"#09FF00",text:"Select Kit:",click_event:{action:"run_command",command:"trigger crusadechange set 2"}},{bold:true,color:"#008805",text:"Archer"},""]}} strict
execute if score $restore_blue_kit_sign_archer global matches 1 run scoreboard players reset $restore_blue_kit_sign_archer global
execute unless block 12 64 -63 minecraft:oak_wall_sign run scoreboard players set $restore_blue_kit_sign_archer global 1
execute if score $restore_blue_kit_sign_mage global matches 1 run setblock 10 64 -64 minecraft:oak_wall_sign[facing=north]{front_text:{color:"gray",has_glowing_text:true,messages:["",{color:"#09FF00",text:"Select Kit:",click_event:{action:"run_command",command:"trigger crusadechange set 3"}},{bold:true,color:"#008805",text:"Mage"},""]}} strict
execute if score $restore_blue_kit_sign_mage global matches 1 run scoreboard players reset $restore_blue_kit_sign_mage global
execute unless block 10 64 -64 minecraft:oak_wall_sign run scoreboard players set $restore_blue_kit_sign_mage global 1

#yellow
execute if score $restore_yellow_kit_sign_knight global matches 1 run setblock 10 64 64 minecraft:oak_wall_sign[facing=south]{front_text:{color:"gray",has_glowing_text:true,messages:["",{color:"#09FF00",text:"Select Kit:",click_event:{action:"run_command",command:"trigger crusadechange set 1"}},{bold:true,color:"#008805",text:"Knight"},""]}} strict
execute if score $restore_yellow_kit_sign_knight global matches 1 run scoreboard players reset $restore_yellow_kit_sign_knight global
execute unless block 10 64 64 minecraft:oak_wall_sign run scoreboard players set $restore_yellow_kit_sign_knight global 1
execute if score $restore_yellow_kit_sign_archer global matches 1 run setblock 12 64 63 minecraft:oak_wall_sign[facing=south]{front_text:{color:"gray",has_glowing_text:true,messages:["",{color:"#09FF00",text:"Select Kit:",click_event:{action:"run_command",command:"trigger crusadechange set 2"}},{bold:true,color:"#008805",text:"Archer"},""]}} strict
execute if score $restore_yellow_kit_sign_archer global matches 1 run scoreboard players reset $restore_yellow_kit_sign_archer global
execute unless block 12 64 63 minecraft:oak_wall_sign run scoreboard players set $restore_yellow_kit_sign_archer global 1
execute if score $restore_yellow_kit_sign_mage global matches 1 run setblock 14 64 64 minecraft:oak_wall_sign[facing=south]{front_text:{color:"gray",has_glowing_text:true,messages:["",{color:"#09FF00",text:"Select Kit:",click_event:{action:"run_command",command:"trigger crusadechange set 3"}},{bold:true,color:"#008805",text:"Mage"},""]}} strict
execute if score $restore_yellow_kit_sign_mage global matches 1 run scoreboard players reset $restore_yellow_kit_sign_mage global
execute unless block 14 64 64 minecraft:oak_wall_sign run scoreboard players set $restore_yellow_kit_sign_mage global 1

#> Kit obsidian
#blue
execute unless block 10 64 -63 obsidian run setblock 10 64 -63 obsidian strict
execute unless block 12 64 -62 obsidian run setblock 12 64 -62 obsidian strict
execute unless block 14 64 -63 obsidian run setblock 14 64 -63 obsidian strict
execute unless block 10 63 -63 obsidian run setblock 10 63 -63 obsidian strict
execute unless block 12 63 -62 obsidian run setblock 12 63 -62 obsidian strict
execute unless block 14 63 -63 obsidian run setblock 14 63 -63 obsidian strict
#yellow
execute unless block 10 64 63 obsidian run setblock 10 64 63 obsidian strict
execute unless block 12 64 62 obsidian run setblock 12 64 62 obsidian strict
execute unless block 14 64 63 obsidian run setblock 14 64 63 obsidian strict
execute unless block 10 63 63 obsidian run setblock 10 63 63 obsidian strict
execute unless block 12 63 62 obsidian run setblock 12 63 62 obsidian strict
execute unless block 14 63 63 obsidian run setblock 14 63 63 obsidian strict

# Prevent nexus bedrock being overwritten by utilities & missiles
execute if score $CBA crusadehp matches 1.. run fill 41 52 -39 35 52 -37 bedrock strict
execute if score $CBB crusadehp matches 1.. run fill -11 52 -39 -17 52 -37 bedrock strict
execute if score $CYA crusadehp matches 1.. run fill -17 52 39 -11 52 37 bedrock strict
execute if score $CYB crusadehp matches 1.. run fill 35 52 39 41 52 37 bedrock strict

## Regenerating main features
#middle wall
execute as @e[x=0,type=marker,tag=crusadeWall] at @s run function rr_crusade:game/wallplacement

#regenerate glass every 30 seconds
scoreboard players add @e[x=0,type=marker,tag=crusadeWall] CmdData 1
execute as @e[x=0,type=marker,tag=crusadeWall,scores={CmdData=2400..}] run function rr_crusade:game/glassplacement
execute as @e[x=0,type=marker,tag=crusadeWall,scores={CmdData=2400..}] run scoreboard players set @s CmdData 0
