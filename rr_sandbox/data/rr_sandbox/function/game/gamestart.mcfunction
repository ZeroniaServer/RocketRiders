#Tag Removal
tag @a[x=0] remove JoinBlue
tag @a[x=0] remove JoinYellow

#Bossbar
execute if predicate game:phase/staging if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] unless entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run bossbar set rr:startgame name ["",{"text":"Awaiting players...","color":"white"}]
execute if predicate game:phase/staging if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] unless entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run bossbar set rr:startgame value 0
execute if predicate game:phase/staging if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] unless entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run bossbar set rr:startgame color white

#Countdown
execute if predicate game:phase/staging if entity @s[tag=EditedSettings] if entity @a[x=0,predicate=custom:team/blue] run tag @s add Countdown
execute if predicate game:phase/staging if entity @s[tag=EditedSettings] if entity @a[x=0,predicate=custom:team/yellow] run tag @s add Countdown
execute if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run function game:restartcountdown

execute unless predicate game:phase/match/over if score @s count matches 600 as @a[x=0,predicate=custom:team/blue] run function rr_sandbox:items/givenomicon
execute unless predicate game:phase/match/over if score @s count matches 600 as @a[x=0,predicate=custom:team/yellow] run function rr_sandbox:items/givenomicon
execute unless predicate game:phase/match/over if score @s count matches 600 run function game:start_match
