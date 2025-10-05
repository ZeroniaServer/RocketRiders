#general
function rr_crusade:game/cancel_utility

#Set banners/light blocks (wait 1 tick before restoring banner due to MC-302559)
#Yellow A
execute if score $restore_yellow_crystal_a_top_banner global matches 1 run setblock -14 53 38 minecraft:yellow_banner[rotation=8]{patterns:[{pattern:"minecraft:stripe_middle",color:"orange"},{pattern:"minecraft:stripe_left",color:"orange"},{pattern:"minecraft:stripe_right",color:"orange"},{pattern:"minecraft:stripe_top",color:"orange"},{pattern:"minecraft:border",color:"yellow"}]}
execute if score $restore_yellow_crystal_a_top_banner global matches 1 run scoreboard players reset $restore_yellow_crystal_a_top_banner global
execute unless block -14 53 38 #minecraft:banners run scoreboard players set $restore_yellow_crystal_a_top_banner global 1
execute if score $restore_yellow_crystal_a_side_banner global matches 1 run setblock -14 52 40 minecraft:yellow_wall_banner[facing=south]{patterns:[{pattern:"minecraft:stripe_middle",color:"orange"},{pattern:"minecraft:stripe_left",color:"orange"},{pattern:"minecraft:stripe_right",color:"orange"},{pattern:"minecraft:stripe_top",color:"orange"},{pattern:"minecraft:border",color:"yellow"}]}
execute if score $restore_yellow_crystal_a_side_banner global matches 1 run scoreboard players reset $restore_yellow_crystal_a_side_banner global
execute unless block -14 52 40 #minecraft:banners run scoreboard players set $restore_yellow_crystal_a_side_banner global 1
fill -16 51 40 -12 47 40 light[level=1]
#Yellow B
execute if score $restore_yellow_crystal_b_top_banner global matches 1 run setblock 38 53 38 minecraft:yellow_banner[rotation=8]{patterns:[{pattern:"minecraft:stripe_right",color:"orange"},{pattern:"minecraft:stripe_bottom",color:"orange"},{pattern:"minecraft:stripe_top",color:"orange"},{pattern:"minecraft:curly_border",color:"yellow"},{pattern:"minecraft:stripe_left",color:"orange"},{pattern:"minecraft:stripe_middle",color:"orange"},{pattern:"minecraft:border",color:"yellow"}]}
execute if score $restore_yellow_crystal_b_top_banner global matches 1 run scoreboard players reset $restore_yellow_crystal_b_top_banner global
execute unless block 38 53 38 #minecraft:banners run scoreboard players set $restore_yellow_crystal_b_top_banner global 1
execute if score $restore_yellow_crystal_b_side_banner global matches 1 run setblock 38 52 40 minecraft:yellow_wall_banner[facing=south]{patterns:[{pattern:"minecraft:stripe_right",color:"orange"},{pattern:"minecraft:stripe_bottom",color:"orange"},{pattern:"minecraft:stripe_top",color:"orange"},{pattern:"minecraft:curly_border",color:"yellow"},{pattern:"minecraft:stripe_left",color:"orange"},{pattern:"minecraft:stripe_middle",color:"orange"},{pattern:"minecraft:border",color:"yellow"}]}
execute if score $restore_yellow_crystal_b_side_banner global matches 1 run scoreboard players reset $restore_yellow_crystal_b_side_banner global
execute unless block 38 52 40 #minecraft:banners run scoreboard players set $restore_yellow_crystal_b_side_banner global 1
fill 36 51 40 40 47 40 light[level=1]
#Blue A
execute if score $restore_blue_crystal_a_top_banner global matches 1 unless predicate game:gamemode_components/red_for_blue run setblock 38 53 -38 minecraft:blue_banner[rotation=0]{patterns:[{pattern:"minecraft:stripe_middle",color:"cyan"},{pattern:"minecraft:stripe_left",color:"cyan"},{pattern:"minecraft:stripe_right",color:"cyan"},{pattern:"minecraft:stripe_top",color:"cyan"},{pattern:"minecraft:border",color:"blue"}]}
execute if score $restore_blue_crystal_a_top_banner global matches 1 if predicate game:gamemode_components/red_for_blue run setblock 38 53 -38 minecraft:red_banner[rotation=0]{patterns:[{pattern:"minecraft:stripe_middle",color:"pink"},{pattern:"minecraft:stripe_left",color:"pink"},{pattern:"minecraft:stripe_right",color:"pink"},{pattern:"minecraft:stripe_top",color:"pink"},{pattern:"minecraft:border",color:"red"}]}
execute if score $restore_blue_crystal_a_top_banner global matches 1 run scoreboard players reset $restore_blue_crystal_a_top_banner global
execute unless block 38 53 -38 #minecraft:banners run scoreboard players set $restore_blue_crystal_a_top_banner global 1

execute if score $restore_blue_crystal_a_side_banner global matches 1 unless predicate game:gamemode_components/red_for_blue run setblock 38 52 -40 minecraft:blue_wall_banner[facing=north]{patterns:[{pattern:"minecraft:stripe_middle",color:"cyan"},{pattern:"minecraft:stripe_left",color:"cyan"},{pattern:"minecraft:stripe_right",color:"cyan"},{pattern:"minecraft:stripe_top",color:"cyan"},{pattern:"minecraft:border",color:"blue"}]}
execute if score $restore_blue_crystal_a_side_banner global matches 1 if predicate game:gamemode_components/red_for_blue run setblock 38 52 -40 minecraft:red_wall_banner[facing=north]{patterns:[{pattern:"minecraft:stripe_middle",color:"pink"},{pattern:"minecraft:stripe_left",color:"pink"},{pattern:"minecraft:stripe_right",color:"pink"},{pattern:"minecraft:stripe_top",color:"pink"},{pattern:"minecraft:border",color:"red"}]}
execute if score $restore_blue_crystal_a_side_banner global matches 1 run scoreboard players reset $restore_blue_crystal_a_side_banner global
execute unless block 38 52 -40 #minecraft:banners run scoreboard players set $restore_blue_crystal_a_side_banner global 1
fill 36 51 -40 40 47 -40 light[level=1]
#Blue B
execute if score $restore_blue_crystal_b_top_banner global matches 1 unless predicate game:gamemode_components/red_for_blue run setblock -14 53 -38 minecraft:blue_banner[rotation=0]{patterns:[{pattern:"minecraft:stripe_right",color:"cyan"},{pattern:"minecraft:stripe_bottom",color:"cyan"},{pattern:"minecraft:stripe_top",color:"cyan"},{pattern:"minecraft:curly_border",color:"blue"},{pattern:"minecraft:stripe_left",color:"cyan"},{pattern:"minecraft:stripe_middle",color:"cyan"},{pattern:"minecraft:border",color:"blue"}]}
execute if score $restore_blue_crystal_b_top_banner global matches 1 if predicate game:gamemode_components/red_for_blue run setblock -14 53 -38 minecraft:red_banner[rotation=0]{patterns:[{pattern:"minecraft:stripe_right",color:"cyan"},{pattern:"minecraft:stripe_bottom",color:"cyan"},{pattern:"minecraft:stripe_top",color:"cyan"},{pattern:"minecraft:curly_border",color:"blue"},{pattern:"minecraft:stripe_left",color:"cyan"},{pattern:"minecraft:stripe_middle",color:"cyan"},{pattern:"minecraft:border",color:"blue"}]}
execute if score $restore_blue_crystal_b_top_banner global matches 1 run scoreboard players reset $restore_blue_crystal_b_top_banner global
execute unless block -14 53 -38 #minecraft:banners run scoreboard players set $restore_blue_crystal_b_top_banner global 1

execute if score $restore_blue_crystal_b_side_banner global matches 1 unless predicate game:gamemode_components/red_for_blue run setblock -14 52 -40 minecraft:blue_wall_banner[facing=north]{patterns:[{pattern:"minecraft:stripe_right",color:"cyan"},{pattern:"minecraft:stripe_bottom",color:"cyan"},{pattern:"minecraft:stripe_top",color:"cyan"},{pattern:"minecraft:curly_border",color:"blue"},{pattern:"minecraft:stripe_left",color:"cyan"},{pattern:"minecraft:stripe_middle",color:"cyan"},{pattern:"minecraft:border",color:"blue"}]}
execute if score $restore_blue_crystal_b_side_banner global matches 1 if predicate game:gamemode_components/red_for_blue run setblock -14 52 -40 minecraft:red_wall_banner[facing=north]{patterns:[{pattern:"minecraft:stripe_right",color:"cyan"},{pattern:"minecraft:stripe_bottom",color:"cyan"},{pattern:"minecraft:stripe_top",color:"cyan"},{pattern:"minecraft:curly_border",color:"blue"},{pattern:"minecraft:stripe_left",color:"cyan"},{pattern:"minecraft:stripe_middle",color:"cyan"},{pattern:"minecraft:border",color:"blue"}]}
execute if score $restore_blue_crystal_b_side_banner global matches 1 run scoreboard players reset $restore_blue_crystal_b_side_banner global
execute unless block -14 52 -40 #minecraft:banners run scoreboard players set $restore_blue_crystal_b_side_banner global 1
fill -16 51 -40 -12 47 -40 light[level=1]

#> Kit signs + obsidian
execute unless block 14 64 -64 oak_wall_sign run setblock 14 64 -64 minecraft:oak_wall_sign[facing=north]{front_text:{messages:[{"text":"Select Kit:","click_event":{"action":"run_command","command":"/trigger crusadechange set 1"},"color":"#09FF00"},{"text":"Knight","bold":true,"color":"#008805"},{"text":""},{"text":""}]}}
execute unless block 12 64 -63 oak_wall_sign run setblock 12 64 -63 minecraft:oak_wall_sign[facing=north]{front_text:{messages:[{"text":"Select Kit:","click_event":{"action":"run_command","command":"/trigger crusadechange set 2"},"color":"#09FF00"},{"text":"Archer","bold":true,"color":"#008805"},{"text":""},{"text":""}]}}
execute unless block 10 64 -64 oak_wall_sign run setblock 10 64 -64 minecraft:oak_wall_sign[facing=north]{front_text:{messages:[{"text":"Select Kit:","click_event":{"action":"run_command","command":"/trigger crusadechange set 3"},"color":"#09FF00"},{"text":"Mage","bold":true,"color":"#008805"},{"text":""},{"text":""}]}}
execute unless block 10 64 64 oak_wall_sign run setblock 10 64 64 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{"text":"Select Kit:","click_event":{"action":"run_command","command":"/trigger crusadechange set 1"},"color":"#09FF00"},{"text":"Knight","bold":true,"color":"#008805"},{"text":""},{"text":""}]}}
execute unless block 12 64 63 oak_wall_sign run setblock 12 64 63 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{"text":"Select Kit:","click_event":{"action":"run_command","command":"/trigger crusadechange set 2"},"color":"#09FF00"},{"text":"Archer","bold":true,"color":"#008805"},{"text":""},{"text":""}]}}
execute unless block 14 64 64 oak_wall_sign run setblock 14 64 64 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{"text":"Select Kit:","click_event":{"action":"run_command","command":"/trigger crusadechange set 3"},"color":"#09FF00"},{"text":"Mage","bold":true,"color":"#008805"},{"text":""},{"text":""}]}}
execute unless block 10 64 -63 obsidian run setblock 10 64 -63 obsidian
execute unless block 12 64 -62 obsidian run setblock 12 64 -62 obsidian
execute unless block 14 64 -63 obsidian run setblock 14 64 -63 obsidian
execute unless block 10 63 -63 obsidian run setblock 10 63 -63 obsidian
execute unless block 12 63 -62 obsidian run setblock 12 63 -62 obsidian
execute unless block 14 63 -63 obsidian run setblock 14 63 -63 obsidian
execute unless block 10 64 63 obsidian run setblock 10 64 63 obsidian
execute unless block 12 64 62 obsidian run setblock 12 64 62 obsidian
execute unless block 14 64 63 obsidian run setblock 14 64 63 obsidian
execute unless block 10 63 63 obsidian run setblock 10 63 63 obsidian
execute unless block 12 63 62 obsidian run setblock 12 63 62 obsidian
execute unless block 14 63 63 obsidian run setblock 14 63 63 obsidian
