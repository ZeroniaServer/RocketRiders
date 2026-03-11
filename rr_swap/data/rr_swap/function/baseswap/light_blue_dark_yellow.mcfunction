tag @s remove SwappingSides
scoreboard players set $swap_side global 0
scoreboard players set SwapPlatform swapside 0
scoreboard players set BossbarA swapside 0

data modify storage rocketriders:main baseswap set value {}
data modify storage rocketriders:main baseswap.blue_front_old set from storage rocketriders:teams blue.block_palette.front
data modify storage rocketriders:main baseswap.blue_middle_old set from storage rocketriders:teams blue.block_palette.middle
data modify storage rocketriders:main baseswap.blue_back_old set from storage rocketriders:teams blue.block_palette.back
data modify storage rocketriders:main baseswap.blue_back_stained_glass_pane_old set from storage rocketriders:teams blue.block_palette.back_stained_glass_pane
data modify storage rocketriders:main baseswap.blue_detail_old set from storage rocketriders:teams blue.block_palette.detail
data modify storage rocketriders:main baseswap.yellow_front_old set from storage rocketriders:teams yellow.block_palette.front
data modify storage rocketriders:main baseswap.yellow_middle_old set from storage rocketriders:teams yellow.block_palette.middle
data modify storage rocketriders:main baseswap.yellow_back_old set from storage rocketriders:teams yellow.block_palette.back
data modify storage rocketriders:main baseswap.yellow_back_stained_glass_pane_old set from storage rocketriders:teams yellow.block_palette.back_stained_glass_pane
data modify storage rocketriders:main baseswap.yellow_detail_old set from storage rocketriders:teams yellow.block_palette.detail
function rr_swap:baseswap/set_palettes
data modify storage rocketriders:main baseswap.blue_front_new set from storage rocketriders:teams blue.block_palette.front
data modify storage rocketriders:main baseswap.blue_middle_new set from storage rocketriders:teams blue.block_palette.middle
data modify storage rocketriders:main baseswap.blue_back_new set from storage rocketriders:teams blue.block_palette.back
data modify storage rocketriders:main baseswap.blue_back_stained_glass_pane_new set from storage rocketriders:teams blue.block_palette.back_stained_glass_pane
data modify storage rocketriders:main baseswap.blue_detail_new set from storage rocketriders:teams blue.block_palette.detail
data modify storage rocketriders:main baseswap.yellow_front_new set from storage rocketriders:teams yellow.block_palette.front
data modify storage rocketriders:main baseswap.yellow_middle_new set from storage rocketriders:teams yellow.block_palette.middle
data modify storage rocketriders:main baseswap.yellow_back_new set from storage rocketriders:teams yellow.block_palette.back
data modify storage rocketriders:main baseswap.yellow_back_stained_glass_pane_new set from storage rocketriders:teams yellow.block_palette.back_stained_glass_pane
data modify storage rocketriders:main baseswap.yellow_detail_new set from storage rocketriders:teams yellow.block_palette.detail

function rr_swap:baseswap/swap/bases with storage rocketriders:main baseswap
execute if predicate game:arena_details/middle/layered run function rr_swap:baseswap/swap/details/layered with storage rocketriders:main baseswap
execute if predicate game:arena_details/top_sides/platform run function rr_swap:baseswap/swap/details/platforms with storage rocketriders:main baseswap
execute if predicate game:arena_details/top_sides/spikes run function rr_swap:baseswap/swap/details/spikes_top_sides with storage rocketriders:main baseswap
execute if predicate game:arena_details/middle/slime_pads run function rr_swap:baseswap/swap/details/slime_pads_middle with storage rocketriders:main baseswap
execute if predicate game:arena_details/bottom/slime_pad run function rr_swap:baseswap/swap/details/slime_pad_bottom with storage rocketriders:main baseswap
execute if predicate game:arena_details/bottom/cannon run function rr_swap:baseswap/swap/details/cannon_bottom with storage rocketriders:main baseswap
execute if predicate game:arena_details/top/arch run function rr_swap:baseswap/swap/details/arch with storage rocketriders:main baseswap
execute if predicate game:arena_details/top_sides/cannons run function rr_swap:baseswap/swap/details/cannons_top with storage rocketriders:main baseswap
execute if predicate game:arena_details/top/towers run function rr_swap:baseswap/swap/details/towers with storage rocketriders:main baseswap
execute if predicate game:arena_details/middle/spikes run function rr_swap:baseswap/swap/details/spikes_middle with storage rocketriders:main baseswap
execute if predicate game:arena_details/bottom/spikes run function rr_swap:baseswap/swap/details/spikes_bottom with storage rocketriders:main baseswap
execute if predicate game:arena_details/top/spikes run function rr_swap:baseswap/swap/details/spikes_top with storage rocketriders:main baseswap

#Visual titles and subtitles.
schedule function rr_swap:baseswap/visuals_indimension 60t

#tetris resets
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function rr_swap:items/tetrisreset

#armor
execute as @a[x=0,predicate=custom:team/any_playing_team] run function custom:update_armor
