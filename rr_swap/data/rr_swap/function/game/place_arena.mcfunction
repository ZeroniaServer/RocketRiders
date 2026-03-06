execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=swapEnabled] run return fail

execute unless entity @e[limit=1,x=0,type=marker,tag=swapplatform] run summon marker 12 55 0 {Tags:["swapplatform"]}

#Bases
execute unless score $swap_side global matches 0..1 run scoreboard players set $swap_side global 0

#1 = darkblue
execute if predicate rr_swap:blue_team_is_dark unless predicate game:match_components/red_for_blue run fill 38 34 -61 -14 63 -57 black_stained_glass replace cyan_stained_glass
execute if predicate rr_swap:blue_team_is_dark if predicate game:match_components/red_for_blue run fill 38 34 -61 -14 63 -57 black_stained_glass replace pink_stained_glass
execute if predicate rr_swap:blue_team_is_dark run fill -14 34 -62 38 63 -66 black_concrete replace white_stained_glass
execute if predicate rr_swap:blue_team_is_dark run fill -14 63 57 38 34 61 white_stained_glass replace orange_stained_glass
execute if predicate rr_swap:blue_team_is_dark run fill 38 34 62 -14 63 66 white_concrete replace white_stained_glass

#0 = darkyellow
execute if predicate rr_swap:yellow_team_is_dark unless predicate game:match_components/red_for_blue run fill -14 34 -52 38 63 -56 light_blue_stained_glass replace blue_stained_glass
execute if predicate rr_swap:yellow_team_is_dark if predicate game:match_components/red_for_blue run fill -14 34 -52 38 63 -56 pink_stained_glass replace red_stained_glass
execute if predicate rr_swap:yellow_team_is_dark unless predicate game:match_components/red_for_blue if predicate game:arena_details/middle/layered run fill -14 34 -51 38 63 -49 light_blue_stained_glass replace blue_stained_glass
execute if predicate rr_swap:yellow_team_is_dark if predicate game:match_components/red_for_blue if predicate game:arena_details/middle/layered run fill -14 34 -51 38 63 -49 pink_stained_glass replace red_stained_glass
execute if predicate rr_swap:yellow_team_is_dark unless predicate game:match_components/red_for_blue run fill 38 34 -61 -14 63 -57 white_stained_glass replace cyan_stained_glass
execute if predicate rr_swap:yellow_team_is_dark if predicate game:match_components/red_for_blue run fill 38 34 -61 -14 63 -57 white_stained_glass replace pink_stained_glass
execute if predicate rr_swap:yellow_team_is_dark run fill -14 34 -62 38 63 -66 white_concrete replace white_stained_glass
execute if predicate rr_swap:yellow_team_is_dark run fill 38 34 62 -14 63 66 black_concrete replace white_stained_glass

#Hardcore bases
execute if predicate game:modifiers/hardcore/on if predicate rr_swap:blue_team_is_dark run fill -14 63 66 38 34 66 white_concrete replace white_stained_glass
execute if predicate game:modifiers/hardcore/on if predicate rr_swap:blue_team_is_dark run fill -14 63 65 38 34 65 white_stained_glass replace orange_stained_glass
execute if predicate game:modifiers/hardcore/on if predicate rr_swap:blue_team_is_dark run fill -14 63 -66 38 34 -66 black_concrete replace white_stained_glass
execute if predicate game:modifiers/hardcore/on if predicate rr_swap:blue_team_is_dark unless predicate game:match_components/red_for_blue run fill -14 63 -65 38 34 -65 black_stained_glass replace cyan_stained_glass
execute if predicate game:modifiers/hardcore/on if predicate rr_swap:blue_team_is_dark if predicate game:match_components/red_for_blue run fill -14 63 -65 38 34 -65 black_stained_glass replace pink_stained_glass

execute if predicate game:modifiers/hardcore/on if predicate rr_swap:yellow_team_is_dark run fill -14 63 66 38 34 66 black_concrete replace white_stained_glass
execute if predicate game:modifiers/hardcore/on if predicate rr_swap:yellow_team_is_dark run fill -14 63 -66 38 34 -66 white_concrete replace white_stained_glass
execute if predicate game:modifiers/hardcore/on if predicate rr_swap:yellow_team_is_dark unless predicate game:match_components/red_for_blue run fill -14 63 -65 38 34 -65 white_stained_glass replace cyan_stained_glass
execute if predicate game:modifiers/hardcore/on if predicate rr_swap:yellow_team_is_dark if predicate game:match_components/red_for_blue run fill -14 63 -65 38 34 -65 white_stained_glass replace pink_stained_glass
execute if predicate game:modifiers/hardcore/on if predicate rr_swap:yellow_team_is_dark unless predicate game:match_components/red_for_blue run fill -14 63 -64 38 34 -64 light_blue_stained_glass replace blue_stained_glass
execute if predicate game:modifiers/hardcore/on if predicate rr_swap:yellow_team_is_dark if predicate game:match_components/red_for_blue run fill -14 63 -64 38 34 -64 pink_stained_glass replace red_stained_glass

#Bossbar prep
bossbar set rr_swap:swap_progress players none
bossbar set rr_swap:swap_progress value 0
scoreboard players set SwapPlatform swapside 0
scoreboard players set BossbarA swapside 0
scoreboard players set BossbarB swapside 0
scoreboard players set QuickSwap swapside 0
