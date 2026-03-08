#general
function rr_crusade:game/cancel_utility

#Set banners/light blocks (wait 1 tick before restoring banner due to MC-302559)
#Yellow A
execute if score $restore_yellow_crystal_a_top_banner global matches 1 unless predicate game:match_components/green_for_yellow run setblock -14 53 38 minecraft:yellow_banner[rotation=8]{patterns:[{pattern:"minecraft:stripe_middle",color:"orange"},{pattern:"minecraft:stripe_left",color:"orange"},{pattern:"minecraft:stripe_right",color:"orange"},{pattern:"minecraft:stripe_top",color:"orange"},{pattern:"minecraft:border",color:"yellow"}]}
execute if score $restore_yellow_crystal_a_top_banner global matches 1 if predicate game:match_components/green_for_yellow run setblock -14 53 38 minecraft:green_banner[rotation=8]{patterns:[{pattern:"minecraft:stripe_middle",color:"lime"},{pattern:"minecraft:stripe_left",color:"lime"},{pattern:"minecraft:stripe_right",color:"lime"},{pattern:"minecraft:stripe_top",color:"lime"},{pattern:"minecraft:border",color:"green"}]}
execute if score $restore_yellow_crystal_a_top_banner global matches 1 run scoreboard players reset $restore_yellow_crystal_a_top_banner global
execute unless block -14 53 38 #minecraft:banners run scoreboard players set $restore_yellow_crystal_a_top_banner global 1
execute if score $restore_yellow_crystal_a_side_banner global matches 1 unless predicate game:match_components/green_for_yellow run setblock -14 52 40 minecraft:yellow_wall_banner[facing=south]{patterns:[{pattern:"minecraft:stripe_middle",color:"orange"},{pattern:"minecraft:stripe_left",color:"orange"},{pattern:"minecraft:stripe_right",color:"orange"},{pattern:"minecraft:stripe_top",color:"orange"},{pattern:"minecraft:border",color:"yellow"}]}
execute if score $restore_yellow_crystal_a_side_banner global matches 1 if predicate game:match_components/green_for_yellow run setblock -14 52 40 minecraft:green_wall_banner[facing=south]{patterns:[{pattern:"minecraft:stripe_middle",color:"lime"},{pattern:"minecraft:stripe_left",color:"lime"},{pattern:"minecraft:stripe_right",color:"lime"},{pattern:"minecraft:stripe_top",color:"lime"},{pattern:"minecraft:border",color:"green"}]}
execute if score $restore_yellow_crystal_a_side_banner global matches 1 run scoreboard players reset $restore_yellow_crystal_a_side_banner global
execute unless block -14 52 40 #minecraft:banners run scoreboard players set $restore_yellow_crystal_a_side_banner global 1
fill -16 51 40 -12 47 40 light[level=1]
#Yellow B
execute if score $restore_yellow_crystal_b_top_banner global matches 1 unless predicate game:match_components/green_for_yellow run setblock 38 53 38 minecraft:yellow_banner[rotation=8]{patterns:[{pattern:"minecraft:stripe_right",color:"orange"},{pattern:"minecraft:stripe_bottom",color:"orange"},{pattern:"minecraft:stripe_top",color:"orange"},{pattern:"minecraft:curly_border",color:"yellow"},{pattern:"minecraft:stripe_left",color:"orange"},{pattern:"minecraft:stripe_middle",color:"orange"},{pattern:"minecraft:border",color:"yellow"}]}
execute if score $restore_yellow_crystal_b_top_banner global matches 1 if predicate game:match_components/green_for_yellow run setblock 38 53 38 minecraft:green_banner[rotation=8]{patterns:[{pattern:"minecraft:stripe_right",color:"lime"},{pattern:"minecraft:stripe_bottom",color:"lime"},{pattern:"minecraft:stripe_top",color:"lime"},{pattern:"minecraft:curly_border",color:"green"},{pattern:"minecraft:stripe_left",color:"lime"},{pattern:"minecraft:stripe_middle",color:"lime"},{pattern:"minecraft:border",color:"green"}]}
execute if score $restore_yellow_crystal_b_top_banner global matches 1 run scoreboard players reset $restore_yellow_crystal_b_top_banner global
execute unless block 38 53 38 #minecraft:banners run scoreboard players set $restore_yellow_crystal_b_top_banner global 1
execute if score $restore_yellow_crystal_b_side_banner global matches 1 unless predicate game:match_components/green_for_yellow run setblock 38 52 40 minecraft:yellow_wall_banner[facing=south]{patterns:[{pattern:"minecraft:stripe_right",color:"orange"},{pattern:"minecraft:stripe_bottom",color:"orange"},{pattern:"minecraft:stripe_top",color:"orange"},{pattern:"minecraft:curly_border",color:"yellow"},{pattern:"minecraft:stripe_left",color:"orange"},{pattern:"minecraft:stripe_middle",color:"orange"},{pattern:"minecraft:border",color:"yellow"}]}
execute if score $restore_yellow_crystal_b_side_banner global matches 1 if predicate game:match_components/green_for_yellow run setblock 38 52 40 minecraft:green_wall_banner[facing=south]{patterns:[{pattern:"minecraft:stripe_right",color:"lime"},{pattern:"minecraft:stripe_bottom",color:"lime"},{pattern:"minecraft:stripe_top",color:"lime"},{pattern:"minecraft:curly_border",color:"green"},{pattern:"minecraft:stripe_left",color:"lime"},{pattern:"minecraft:stripe_middle",color:"lime"},{pattern:"minecraft:border",color:"green"}]}
execute if score $restore_yellow_crystal_b_side_banner global matches 1 run scoreboard players reset $restore_yellow_crystal_b_side_banner global
execute unless block 38 52 40 #minecraft:banners run scoreboard players set $restore_yellow_crystal_b_side_banner global 1
fill 36 51 40 40 47 40 light[level=1]
#Blue A
execute if score $restore_blue_crystal_a_top_banner global matches 1 unless predicate game:match_components/red_for_blue run setblock 38 53 -38 minecraft:blue_banner[rotation=0]{patterns:[{pattern:"minecraft:stripe_middle",color:"cyan"},{pattern:"minecraft:stripe_left",color:"cyan"},{pattern:"minecraft:stripe_right",color:"cyan"},{pattern:"minecraft:stripe_top",color:"cyan"},{pattern:"minecraft:border",color:"blue"}]}
execute if score $restore_blue_crystal_a_top_banner global matches 1 if predicate game:match_components/red_for_blue run setblock 38 53 -38 minecraft:red_banner[rotation=0]{patterns:[{pattern:"minecraft:stripe_middle",color:"pink"},{pattern:"minecraft:stripe_left",color:"pink"},{pattern:"minecraft:stripe_right",color:"pink"},{pattern:"minecraft:stripe_top",color:"pink"},{pattern:"minecraft:border",color:"red"}]}
execute if score $restore_blue_crystal_a_top_banner global matches 1 run scoreboard players reset $restore_blue_crystal_a_top_banner global
execute unless block 38 53 -38 #minecraft:banners run scoreboard players set $restore_blue_crystal_a_top_banner global 1

execute if score $restore_blue_crystal_a_side_banner global matches 1 unless predicate game:match_components/red_for_blue run setblock 38 52 -40 minecraft:blue_wall_banner[facing=north]{patterns:[{pattern:"minecraft:stripe_middle",color:"cyan"},{pattern:"minecraft:stripe_left",color:"cyan"},{pattern:"minecraft:stripe_right",color:"cyan"},{pattern:"minecraft:stripe_top",color:"cyan"},{pattern:"minecraft:border",color:"blue"}]}
execute if score $restore_blue_crystal_a_side_banner global matches 1 if predicate game:match_components/red_for_blue run setblock 38 52 -40 minecraft:red_wall_banner[facing=north]{patterns:[{pattern:"minecraft:stripe_middle",color:"pink"},{pattern:"minecraft:stripe_left",color:"pink"},{pattern:"minecraft:stripe_right",color:"pink"},{pattern:"minecraft:stripe_top",color:"pink"},{pattern:"minecraft:border",color:"red"}]}
execute if score $restore_blue_crystal_a_side_banner global matches 1 run scoreboard players reset $restore_blue_crystal_a_side_banner global
execute unless block 38 52 -40 #minecraft:banners run scoreboard players set $restore_blue_crystal_a_side_banner global 1
fill 36 51 -40 40 47 -40 light[level=1]
#Blue B
execute if score $restore_blue_crystal_b_top_banner global matches 1 unless predicate game:match_components/red_for_blue run setblock -14 53 -38 minecraft:blue_banner[rotation=0]{patterns:[{pattern:"minecraft:stripe_right",color:"cyan"},{pattern:"minecraft:stripe_bottom",color:"cyan"},{pattern:"minecraft:stripe_top",color:"cyan"},{pattern:"minecraft:curly_border",color:"blue"},{pattern:"minecraft:stripe_left",color:"cyan"},{pattern:"minecraft:stripe_middle",color:"cyan"},{pattern:"minecraft:border",color:"blue"}]}
execute if score $restore_blue_crystal_b_top_banner global matches 1 if predicate game:match_components/red_for_blue run setblock -14 53 -38 minecraft:red_banner[rotation=0]{patterns:[{pattern:"minecraft:stripe_right",color:"cyan"},{pattern:"minecraft:stripe_bottom",color:"cyan"},{pattern:"minecraft:stripe_top",color:"cyan"},{pattern:"minecraft:curly_border",color:"blue"},{pattern:"minecraft:stripe_left",color:"cyan"},{pattern:"minecraft:stripe_middle",color:"cyan"},{pattern:"minecraft:border",color:"blue"}]}
execute if score $restore_blue_crystal_b_top_banner global matches 1 run scoreboard players reset $restore_blue_crystal_b_top_banner global
execute unless block -14 53 -38 #minecraft:banners run scoreboard players set $restore_blue_crystal_b_top_banner global 1

execute if score $restore_blue_crystal_b_side_banner global matches 1 unless predicate game:match_components/red_for_blue run setblock -14 52 -40 minecraft:blue_wall_banner[facing=north]{patterns:[{pattern:"minecraft:stripe_right",color:"cyan"},{pattern:"minecraft:stripe_bottom",color:"cyan"},{pattern:"minecraft:stripe_top",color:"cyan"},{pattern:"minecraft:curly_border",color:"blue"},{pattern:"minecraft:stripe_left",color:"cyan"},{pattern:"minecraft:stripe_middle",color:"cyan"},{pattern:"minecraft:border",color:"blue"}]}
execute if score $restore_blue_crystal_b_side_banner global matches 1 if predicate game:match_components/red_for_blue run setblock -14 52 -40 minecraft:red_wall_banner[facing=north]{patterns:[{pattern:"minecraft:stripe_right",color:"cyan"},{pattern:"minecraft:stripe_bottom",color:"cyan"},{pattern:"minecraft:stripe_top",color:"cyan"},{pattern:"minecraft:curly_border",color:"blue"},{pattern:"minecraft:stripe_left",color:"cyan"},{pattern:"minecraft:stripe_middle",color:"cyan"},{pattern:"minecraft:border",color:"blue"}]}
execute if score $restore_blue_crystal_b_side_banner global matches 1 run scoreboard players reset $restore_blue_crystal_b_side_banner global
execute unless block -14 52 -40 #minecraft:banners run scoreboard players set $restore_blue_crystal_b_side_banner global 1
fill -16 51 -40 -12 47 -40 light[level=1]

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

# Prevent crystal bedrock being overwritten by utilities & missiles
fill 41 52 -39 35 52 -37 bedrock strict
fill -11 52 -39 -17 52 -37 bedrock strict
fill -17 52 39 -11 52 37 bedrock strict
fill 35 52 39 41 52 37 bedrock strict
