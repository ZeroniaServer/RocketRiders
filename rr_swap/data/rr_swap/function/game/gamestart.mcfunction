#Items
execute as @a[x=0,tag=JoinBlue] run function custom:update_armor
execute as @a[x=0,tag=JoinYellow] run function custom:update_armor

#Spawnpoints
execute if predicate game:game_started run spawnpoint @a[x=0,team=Blue] 12 64 -66 0
execute if predicate game:game_started run spawnpoint @a[x=0,team=Yellow] 12 64 66 -180

#Give first item to anyone who joins within 1st second
execute if predicate game:game_started if score $game_duration global matches 3..20 if score SwapSide swapside matches 1 run function rr_swap:items/givefirstdarkblue
execute if predicate game:game_started if score $game_duration global matches 3..20 if score SwapSide swapside matches 0 run function rr_swap:items/givefirstlightblue

#Tag Removal
tag @a[x=0] remove JoinBlue
tag @a[x=0] remove JoinYellow

#Countdown
execute if predicate rr:wait_for_sufficient_players unless predicate game:game_started if entity @s[tag=EditedSettings] if entity @a[x=0,team=Blue] if entity @a[x=0,team=Yellow] run tag @s add Countdown
execute if predicate rr:wait_for_sufficient_players if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[x=0,team=Blue] run function game:restartcountdown
execute if predicate rr:wait_for_sufficient_players if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[x=0,team=Yellow] run function game:restartcountdown

execute unless predicate rr:wait_for_sufficient_players unless predicate game:game_started if entity @s[tag=EditedSettings] if entity @a[x=0,team=Blue] run tag @s add Countdown
execute unless predicate rr:wait_for_sufficient_players unless predicate game:game_started if entity @s[tag=EditedSettings] if entity @a[x=0,team=Yellow] run tag @s add Countdown
execute unless predicate rr:wait_for_sufficient_players if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[x=0,team=Blue] unless entity @a[x=0,team=Yellow] run function game:restartcountdown

execute unless predicate game:game_ended if score @s count matches 600 run scoreboard players set QuickSwap swapside 0
execute unless predicate game:game_ended if score @s count matches 600 run scoreboard players set SwapPlatformSec swapside 60
execute unless predicate game:game_ended if score @s count matches 600 run scoreboard players set SwapPlatformTick swapside 0
execute unless predicate game:game_ended if score @s count matches 600 run function rr_swap:items/tetrisreset
execute unless predicate game:game_ended if score @s count matches 600 run scoreboard players set $game_started global 1