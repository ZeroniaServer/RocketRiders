# always place
fill 12 63 -67 12 63 -69 netherite_block
fill 11 63 -69 11 63 -71 netherite_block
fill 13 63 -69 13 63 -71 netherite_block
setblock 12 63 -71 netherite_block
execute unless block 12 63 -70 end_portal_frame run setblock 12 63 -70 end_portal_frame[facing=south]
setblock 14 63 -67 obsidian
setblock 10 63 -67 obsidian
fill 14 63 -68 14 65 -68 obsidian
fill 10 63 -68 10 65 -68 obsidian
fill 14 65 -69 14 65 -71 obsidian
fill 10 65 -69 10 65 -71 obsidian
fill 14 63 -72 14 65 -72 obsidian
fill 10 63 -72 10 65 -72 obsidian
fill 11 65 -72 11 66 -72 obsidian
fill 13 65 -72 13 66 -72 obsidian
setblock 12 66 -72 obsidian
fill 10 64 -71 10 64 -69 magenta_stained_glass_pane[north=true,south=true]
fill 14 64 -71 14 64 -69 magenta_stained_glass_pane[north=true,south=true]
fill 13 64 -72 11 64 -72 magenta_stained_glass_pane[east=true,west=true]
setblock 12 65 -72 magenta_stained_glass_pane[east=true,west=true]
fill 11 64 -67 13 66 -67 air

# place if crystal is present
execute if entity @e[tag=PUCrystal,type=end_crystal,limit=1] run fill 11 63 -67 11 63 -68 obsidian
execute if entity @e[tag=PUCrystal,type=end_crystal,limit=1] run fill 13 63 -67 13 63 -68 obsidian
execute if entity @e[tag=PUCrystal,type=end_crystal,limit=1] run fill 14 63 -69 14 63 -71 obsidian
execute if entity @e[tag=PUCrystal,type=end_crystal,limit=1] run fill 10 63 -69 10 63 -71 obsidian
execute if entity @e[tag=PUCrystal,type=end_crystal,limit=1] run fill 13 63 -72 11 63 -72 obsidian

# place unless crystal is present
execute unless entity @e[tag=PUCrystal,type=end_crystal,limit=1] run fill 11 63 -67 11 63 -68 crying_obsidian
execute unless entity @e[tag=PUCrystal,type=end_crystal,limit=1] run fill 13 63 -67 13 63 -68 crying_obsidian
execute unless entity @e[tag=PUCrystal,type=end_crystal,limit=1] run fill 14 63 -69 14 63 -71 crying_obsidian
execute unless entity @e[tag=PUCrystal,type=end_crystal,limit=1] run fill 10 63 -69 10 63 -71 crying_obsidian
execute unless entity @e[tag=PUCrystal,type=end_crystal,limit=1] run fill 13 63 -72 11 63 -72 crying_obsidian