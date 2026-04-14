##########################################
## REFRESHCUSTOMIZER: Displays selected ##
## Base Details in the Base Customizer  ##
##########################################

## WRAP AROUND OPTIONS
scoreboard players operation $arena_details/top config %= $4 constant
execute if score $arena_details/top config matches 0 run scoreboard players reset $arena_details/top config
scoreboard players operation $arena_details/top_sides config %= $4 constant
execute if score $arena_details/top_sides config matches 0 run scoreboard players reset $arena_details/top_sides config
scoreboard players operation $arena_details/middle config %= $4 constant
execute if score $arena_details/middle config matches 0 run scoreboard players reset $arena_details/middle config
scoreboard players operation $arena_details/bottom config %= $4 constant
execute if score $arena_details/bottom config matches 0 run scoreboard players reset $arena_details/bottom config
scoreboard players operation $arena_details/portal config %= $5 constant
execute if score $arena_details/portal config matches 0 run scoreboard players reset $arena_details/portal config

## DECORATIONS
# TOP DECORATION
data modify block -57 192 76 front_text.messages set value [{color:"dark_green",text:"Top Detail:",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_customizer_sign/top"}},{color:"green",text:"None"},"",""]
execute if predicate game:arena_details/top/none run data modify block -57 192 76 front_text.messages[1].text set value "None"
execute if predicate game:arena_details/top/arch run data modify block -57 192 76 front_text.messages[1].text set value "Arch"
execute if predicate game:arena_details/top/towers run data modify block -57 192 76 front_text.messages[1].text set value "Towers"
execute if predicate game:arena_details/top/spikes run data modify block -57 192 76 front_text.messages[1].text set value "Spikes"
execute unless predicate game:match_components/duel_settings_locked if entity @s[predicate=!game:match_components/arena/no_base_details,predicate=!game:arena_details/castle,predicate=!game:modifiers/hardcore/on] run data modify block -57 192 76 front_text.messages[3] set value {color:"gray",italic:true,text:"(Click for next)"}
execute unless predicate game:match_components/duel_settings_locked unless entity @s[predicate=!game:match_components/arena/no_base_details,predicate=!game:arena_details/castle,predicate=!game:modifiers/hardcore/on] run data modify block -57 192 76 front_text.messages[3] set value {color:"white",bold:true,text:"Locked"}
execute if predicate game:match_components/duel_settings_locked run data modify block -57 192 76 front_text.messages[1] set value {bold:true,color:"white",text:"Locked"}

# TOP SIDES
data modify block -58 192 71 front_text.messages set value [{color:"#0090B8",text:"Top Sides Detail:",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_customizer_sign/top_sides"}},{color:"#00C8FF",text:""},"",""]
execute if predicate game:arena_details/top_sides/none run data modify block -58 192 71 front_text.messages[1].text set value "None"
execute if predicate game:arena_details/top_sides/platform run data modify block -58 192 71 front_text.messages[1].text set value "Platform"
execute if predicate game:arena_details/top_sides/spikes run data modify block -58 192 71 front_text.messages[1].text set value "Spikes"
execute if predicate game:arena_details/top_sides/cannons run data modify block -58 192 71 front_text.messages[1].text set value "Cannons"
execute unless predicate game:match_components/duel_settings_locked if entity @s[predicate=!game:match_components/arena/no_base_details,predicate=!game:arena_details/castle,predicate=!game:modifiers/hardcore/on] run data modify block -58 192 71 front_text.messages[3] set value {color:"gray",italic:true,text:"(Click for next)"}
execute unless predicate game:match_components/duel_settings_locked unless entity @s[predicate=!game:match_components/arena/no_base_details,predicate=!game:arena_details/castle,predicate=!game:modifiers/hardcore/on] run data modify block -58 192 71 front_text.messages[3] set value {color:"white",bold:true,text:"Locked"}
execute if predicate game:match_components/duel_settings_locked run data modify block -58 192 71 front_text.messages[1] set value {bold:true,color:"white",text:"Locked"}

# MIDDLE DECORATION
data modify block -58 192 84 front_text.messages set value [{color:"#C55F00",text:"Top Sides Detail:",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_customizer_sign/middle"}},{color:"#FF7B00",text:""},"",""]
execute if predicate game:arena_details/middle/none run data modify block -58 192 84 front_text.messages[1].text set value "None"
execute if predicate game:arena_details/middle/slime_pads run data modify block -58 192 84 front_text.messages[1].text set value "Slime Pads"
execute if predicate game:arena_details/middle/spikes run data modify block -58 192 84 front_text.messages[1].text set value "Spikes"
execute if predicate game:arena_details/middle/layered run data modify block -58 192 84 front_text.messages[1].text set value "Layered"
execute unless predicate game:match_components/duel_settings_locked if entity @s[predicate=!game:match_components/arena/no_base_details,predicate=!game:arena_details/castle,predicate=!game:modifiers/hardcore/on] run data modify block -58 192 84 front_text.messages[3] set value {color:"gray",italic:true,text:"(Click for next)"}
execute unless predicate game:match_components/duel_settings_locked unless entity @s[predicate=!game:match_components/arena/no_base_details,predicate=!game:arena_details/castle,predicate=!game:modifiers/hardcore/on] run data modify block -58 192 84 front_text.messages[3] set value {color:"white",bold:true,text:"Locked"}
execute if predicate game:match_components/duel_settings_locked run data modify block -58 192 84 front_text.messages[1] set value {bold:true,color:"white",text:"Locked"}

# BOTTOM DECORATION
data modify block -57 192 80 front_text.messages set value [{color:"#BF4DB8",text:"Bottom Detail:",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_customizer_sign/bottom"}},{color:"#FF6AF6",text:""},"",""]
execute if predicate game:arena_details/bottom/none run data modify block -57 192 80 front_text.messages[1].text set value "None"
execute if predicate game:arena_details/bottom/slime_pad run data modify block -57 192 80 front_text.messages[1].text set value "Slime Pad"
execute if predicate game:arena_details/bottom/spikes run data modify block -57 192 80 front_text.messages[1].text set value "Spikes"
execute if predicate game:arena_details/bottom/cannon run data modify block -57 192 80 front_text.messages[1].text set value "Cannon"
execute unless predicate game:match_components/duel_settings_locked if entity @s[predicate=!game:match_components/arena/no_base_details,predicate=!game:arena_details/castle,predicate=!game:modifiers/hardcore/on,predicate=!game:arena_details/middle/layered] run data modify block -57 192 80 front_text.messages[3] set value {color:"gray",italic:true,text:"(Click for next)"}
execute unless predicate game:match_components/duel_settings_locked unless entity @s[predicate=!game:match_components/arena/no_base_details,predicate=!game:arena_details/castle,predicate=!game:modifiers/hardcore/on,predicate=!game:arena_details/middle/layered] run data modify block -57 192 80 front_text.messages[3] set value {color:"white",bold:true,text:"Locked"}
execute if predicate game:match_components/duel_settings_locked run data modify block -57 192 80 front_text.messages[1] set value {bold:true,color:"white",text:"Locked"}

# PORTAL DECORATION
data modify block -58 192 73 front_text.messages set value [{color:"#5A0079",text:"Portal Detail:",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_customizer_sign/portal"}},{color:"#7900A4",text:""},"",""]
execute if predicate game:arena_details/portal/none run data modify block -58 192 73 front_text.messages[1].text set value "None"
execute if predicate game:arena_details/portal/glass_rim run data modify block -58 192 73 front_text.messages[1].text set value "Glass Rim"
execute if predicate game:arena_details/portal/glass_cover run data modify block -58 192 73 front_text.messages[1].text set value "Glass Cover"
execute if predicate game:arena_details/portal/end_stone_cover run data modify block -58 192 73 front_text.messages[1].text set value "End Stone Cover"
execute if predicate game:arena_details/portal/hole_in_one run data modify block -58 192 73 front_text.messages[1].text set value "Hole in One"
execute unless predicate game:match_components/duel_settings_locked if entity @s[predicate=!game:match_components/arena/no_portal_details,predicate=!game:match_components/no_portals] run data modify block -58 192 73 front_text.messages[3] set value {color:"gray",italic:true,text:"(Click for next)"}
execute unless predicate game:match_components/duel_settings_locked unless entity @s[predicate=!game:match_components/arena/no_portal_details,predicate=!game:match_components/no_portals] run data modify block -58 192 73 front_text.messages[3] set value {color:"white",bold:true,text:"Locked"}
execute if predicate game:match_components/duel_settings_locked run data modify block -58 192 73 front_text.messages[1] set value {bold:true,color:"white",text:"Locked"}

## Removes existing displays
fill -45 196 92 -55 185 64 minecraft:light[level=15] strict
fill -45 196 92 -55 185 64 minecraft:light[level=15] strict
fill -55 185 92 -40 206 64 minecraft:light[level=15] replace minecraft:orange_stained_glass strict
fill -55 185 92 -40 206 64 minecraft:light[level=15] replace minecraft:lime_stained_glass strict
fill -55 185 92 -40 206 64 minecraft:light[level=15] replace minecraft:pink_stained_glass strict
fill -40 196 92 -44 185 64 minecraft:white_stained_glass strict
fill -44 197 64 -40 202 92 minecraft:light[level=15] strict
fill -45 197 73 -45 198 83 minecraft:light[level=15] strict

## Top Decorations
#New Dawn Arch
execute if predicate game:arena_details/top/arch run place template game:base_detail_previews/arch -48 197 74 none none 1 0 strict
#Towers
execute if predicate game:arena_details/top/towers run place template game:base_detail_previews/tower -44 197 65 none none 1 0 strict
execute if predicate game:arena_details/top/towers run place template game:base_detail_previews/tower -44 197 87 none none 1 0 strict
#Spikes
execute if predicate game:arena_details/top/spikes run place template game:base_detail_previews/spike_top -45 197 71 none none 1 0 strict

## Top Sides Decorations
#New Dawn Platforms
execute if predicate game:arena_details/top_sides/platform run place template game:base_detail_previews/top_platform -50 194 71 none none 1 0 strict
execute if predicate game:arena_details/top_sides/platform run place template game:base_detail_previews/top_platform -50 194 81 none none 1 0 strict
#Spikes
execute if predicate game:arena_details/top_sides/spikes run place template game:base_detail_previews/spike_side -51 193 68 none none 1 0 strict
execute if predicate game:arena_details/top_sides/spikes run place template game:base_detail_previews/spike_side -51 193 88 none left_right 1 0 strict
#Cannons
execute if predicate game:arena_details/top_sides/cannons run place template game:base_detail_previews/cannon -45 196 72 none none 1 0 strict
execute if predicate game:arena_details/top_sides/cannons run place template game:base_detail_previews/cannon -45 196 82 none none 1 0 strict

##Middle Decorations
#New Dawn Slimepads
execute if predicate game:arena_details/middle/slime_pads run place template game:base_detail_previews/slime_pad_middle -49 190 65 none none 1 0 strict
execute if predicate game:arena_details/middle/slime_pads run place template game:base_detail_previews/slime_pad_middle -49 190 85 none none 1 0 strict
#Spikes
execute if predicate game:arena_details/middle/spikes run place template game:base_detail_previews/spike_middle -54 191 67 none none 1 0 strict
#Layered
execute if predicate game:arena_details/middle/layered run fill -44 196 64 -43 196 92 minecraft:black_stained_glass replace light strict
execute if predicate game:arena_details/middle/layered run fill -45 185 92 -45 192 64 minecraft:white_stained_glass strict
execute if predicate game:arena_details/middle/layered run fill -46 185 92 -46 189 64 minecraft:white_stained_glass strict
execute if predicate game:arena_details/middle/layered run fill -47 185 92 -47 186 64 minecraft:white_stained_glass strict
execute if predicate game:arena_details/middle/layered run fill -45 193 92 -45 193 64 minecraft:black_stained_glass replace light strict
execute if predicate game:arena_details/middle/layered run fill -46 190 92 -46 190 64 minecraft:black_stained_glass replace light strict
execute if predicate game:arena_details/middle/layered run fill -47 187 92 -47 187 64 minecraft:black_stained_glass replace light strict

##Bottom Decorations
#New Dawn Slimepads
execute if predicate game:arena_details/bottom/slime_pad run place template game:base_detail_previews/slime_pad_bottom -49 186 75 none none 1 0 strict
#Spikes
execute if predicate game:arena_details/bottom/spikes run place template game:base_detail_previews/spike_bottom -53 185 76 none none 1 0 strict
#Cannon
execute if predicate game:arena_details/bottom/cannon run place template game:base_detail_previews/cannon_bottom -49 187 75 none none 1 0 strict

##Castle
execute if predicate game:match_components/arena/castle if predicate game:castle_type/normal run place template game:base_detail_previews/castle/normal -44 185 64 none none 1 0 strict
execute if predicate game:match_components/arena/castle if predicate game:castle_type/deepslate run place template game:base_detail_previews/castle/deepslate -44 185 64 none none 1 0 strict
