#Set kit to previous upon joining
execute as @a[x=0,tag=JoinBlue] run function rr_crusade:items/kit/upon_join
execute as @a[x=0,tag=JoinYellow] run function rr_crusade:items/kit/upon_join

#Give first item to anyone who joins within 1st second
execute if predicate game:phase/match/play if score $game_duration global matches 3..20 run function rr_crusade:items/givefirst

#Tag Removal
tag @a[x=0] remove JoinBlue
tag @a[x=0] remove JoinYellow

#Countdown
execute if predicate rr:wait_for_sufficient_players if predicate game:phase/staging if entity @s[tag=EditedSettings] if entity @a[x=0,predicate=custom:team/blue] if entity @a[x=0,predicate=custom:team/yellow] run tag @s add Countdown
execute if predicate rr:wait_for_sufficient_players if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[x=0,predicate=custom:team/blue] run function game:restartcountdown
execute if predicate rr:wait_for_sufficient_players if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[x=0,predicate=custom:team/yellow] run function game:restartcountdown

execute unless predicate rr:wait_for_sufficient_players if predicate game:phase/staging if entity @s[tag=EditedSettings] if entity @a[x=0,predicate=custom:team/blue] run tag @s add Countdown
execute unless predicate rr:wait_for_sufficient_players if predicate game:phase/staging if entity @s[tag=EditedSettings] if entity @a[x=0,predicate=custom:team/yellow] run tag @s add Countdown
execute unless predicate rr:wait_for_sufficient_players if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run function game:restartcountdown

#Hotfix for being able to cast spells in queue
execute if score @s count matches 600 run summon marker 33 63 -66 {Tags:["airDetectBlue"]}
execute if score @s count matches 600 run summon marker 33 63 66 {Tags:["airDetectYellow"]}
execute unless predicate game:phase/match/over if score @s count matches 600 run function game:start_match
#Hotfix for spell wands from the lobby not being usable
execute if score @s count matches 600 as @a[x=0,predicate=rr_crusade:kit/mage] run function custom:update_inventory/spell_wand
