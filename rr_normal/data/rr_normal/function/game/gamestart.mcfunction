#Items
execute as @a[x=0,tag=JoinBlue] run function custom:update_armor
execute as @a[x=0,tag=JoinYellow] run function custom:update_armor

#Give first item to anyone who joins within 1st second
execute if predicate game:match_in_play if score $game_duration global matches 3..20 run function items:givefirst

#Tag Removal
tag @a[x=0] remove JoinBlue
tag @a[x=0] remove JoinYellow

#Countdown
execute if predicate rr:wait_for_sufficient_players unless predicate game:match_in_play if entity @s[tag=EditedSettings] if entity @a[x=0,predicate=custom:team/blue] if entity @a[x=0,predicate=custom:team/yellow] run tag @s add Countdown
execute if predicate rr:wait_for_sufficient_players if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[x=0,predicate=custom:team/blue] run function game:restartcountdown
execute if predicate rr:wait_for_sufficient_players if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[x=0,predicate=custom:team/yellow] run function game:restartcountdown

execute unless predicate rr:wait_for_sufficient_players unless predicate game:match_in_play if entity @s[tag=EditedSettings] if entity @a[x=0,predicate=custom:team/blue] run tag @s add Countdown
execute unless predicate rr:wait_for_sufficient_players unless predicate game:match_in_play if entity @s[tag=EditedSettings] if entity @a[x=0,predicate=custom:team/yellow] run tag @s add Countdown
execute unless predicate rr:wait_for_sufficient_players if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run function game:restartcountdown

execute unless predicate game:match_over if score @s count matches 600 run scoreboard players set $match_in_play global 1