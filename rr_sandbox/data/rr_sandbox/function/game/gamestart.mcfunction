#Tag Removal
tag @a[x=0] remove JoinBlue
tag @a[x=0] remove JoinYellow

#Bossbar
execute if predicate game:phase/staging/queue/waiting unless entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run bossbar set rr:startgame name ["",{"text":"Awaiting players...","color":"white"}]
execute if predicate game:phase/staging/queue/waiting unless entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run bossbar set rr:startgame value 0
execute if predicate game:phase/staging/queue/waiting unless entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run bossbar set rr:startgame color white

#Countdown
execute if predicate game:phase/staging/queue/waiting if entity @a[x=0,predicate=custom:team/any_playing_team] run function game:set_phase/staging.queue.countdown
execute if predicate game:phase/staging/queue/countdown unless entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run function game:restartcountdown

execute if predicate game:phase/staging/queue/countdown if score @s count matches 600 run function game:start_match
