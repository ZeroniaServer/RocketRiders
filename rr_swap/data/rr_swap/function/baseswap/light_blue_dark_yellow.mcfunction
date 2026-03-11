tag @s remove SwappingSides
scoreboard players set $swap_side global 0
scoreboard players set SwapPlatform swapside 0
scoreboard players set BossbarA swapside 0

data modify storage rocketriders:main baseswap set value {}
data modify storage rocketriders:main baseswap.blue_front_old set from storage rocketriders:teams blue.block_palette.front
data modify storage rocketriders:main baseswap.blue_middle_old set from storage rocketriders:teams blue.block_palette.middle
data modify storage rocketriders:main baseswap.blue_back_old set from storage rocketriders:teams blue.block_palette.back
data modify storage rocketriders:main baseswap.blue_detail_old set from storage rocketriders:teams blue.block_palette.detail
data modify storage rocketriders:main baseswap.yellow_front_old set from storage rocketriders:teams yellow.block_palette.front
data modify storage rocketriders:main baseswap.yellow_middle_old set from storage rocketriders:teams yellow.block_palette.middle
data modify storage rocketriders:main baseswap.yellow_back_old set from storage rocketriders:teams yellow.block_palette.back
data modify storage rocketriders:main baseswap.yellow_detail_old set from storage rocketriders:teams yellow.block_palette.detail
data modify storage rocketriders:match components."arena/base_colors" set value {blue:{front:"light",middle:"light_accent",back:"white",detail:"white"},yellow:{front:"dark",middle:"dark_accent",back:"black",detail:"black"}}
function game:team_attributes/update_block_palette
function game:assets/load_all
data modify storage rocketriders:main baseswap.blue_front_new set from storage rocketriders:teams blue.block_palette.front
data modify storage rocketriders:main baseswap.blue_middle_new set from storage rocketriders:teams blue.block_palette.middle
data modify storage rocketriders:main baseswap.blue_back_new set from storage rocketriders:teams blue.block_palette.back
data modify storage rocketriders:main baseswap.blue_detail_new set from storage rocketriders:teams blue.block_palette.detail
data modify storage rocketriders:main baseswap.yellow_front_new set from storage rocketriders:teams yellow.block_palette.front
data modify storage rocketriders:main baseswap.yellow_middle_new set from storage rocketriders:teams yellow.block_palette.middle
data modify storage rocketriders:main baseswap.yellow_back_new set from storage rocketriders:teams yellow.block_palette.back
data modify storage rocketriders:main baseswap.yellow_detail_new set from storage rocketriders:teams yellow.block_palette.detail
function rr_swap:baseswap/swap/layers with storage rocketriders:main baseswap

#Visual titles and subtitles.
schedule function rr_swap:baseswap/visuals_indimension 60t

#tetris resets
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function rr_swap:items/tetrisreset

#armor
execute as @a[x=0,predicate=custom:team/any_playing_team] run function custom:update_armor
