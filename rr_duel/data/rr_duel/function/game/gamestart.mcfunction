#Items
execute as @a[x=0,tag=JoinBlue] run function custom:update_armor
execute as @a[x=0,tag=JoinYellow] run function custom:update_armor

#Tag Removal
tag @a[x=0] remove JoinBlue
tag @a[x=0] remove JoinYellow

#Bossbar
execute if predicate game:phase/staging if predicate game:phase/staging/queue/waiting if entity @a[limit=1,x=0,predicate=custom:team/blue] unless entity @a[limit=1,x=0,predicate=custom:team/yellow] run bossbar set rr:startgame name ["",{"text":"Awaiting ","color":"white"},{"text":"Yellow ","color":"gold"},{"text":"player...","color":"white"}]
execute if predicate game:phase/staging if predicate game:phase/staging/queue/waiting if entity @a[limit=1,x=0,predicate=custom:team/blue] unless entity @a[limit=1,x=0,predicate=custom:team/yellow] run bossbar set rr:startgame color blue
execute if predicate game:phase/staging if predicate game:phase/staging/queue/waiting if entity @a[limit=1,x=0,predicate=custom:team/blue] unless entity @a[limit=1,x=0,predicate=custom:team/yellow] run bossbar set rr:startgame value 15
execute if predicate game:phase/staging if predicate game:phase/staging/queue/waiting if entity @a[limit=1,x=0,predicate=custom:team/yellow] unless entity @a[limit=1,x=0,predicate=custom:team/blue] run bossbar set rr:startgame name ["",{"text":"Awaiting ","color":"white"},{"text":"Blue ","color":"blue"},{"text":"player...","color":"white"}]
execute if predicate game:phase/staging if predicate game:phase/staging/queue/waiting if entity @a[limit=1,x=0,predicate=custom:team/yellow] unless entity @a[limit=1,x=0,predicate=custom:team/blue] run bossbar set rr:startgame color yellow
execute if predicate game:phase/staging if predicate game:phase/staging/queue/waiting if entity @a[limit=1,x=0,predicate=custom:team/yellow] unless entity @a[limit=1,x=0,predicate=custom:team/blue] run bossbar set rr:startgame value 15
execute if predicate game:phase/staging if predicate game:phase/staging/queue/waiting unless entity @a[limit=1,x=0,predicate=custom:team/blue] unless entity @a[limit=1,x=0,predicate=custom:team/yellow] run bossbar set rr:startgame name ["",{"text":"Awaiting ","color":"white"},{"text":"Yellow ","color":"gold"},{"text":"and ","color":"white"},{"text":"Blue ","color":"blue"},{"text":"players...","color":"white"}]
execute if predicate game:phase/staging if predicate game:phase/staging/queue/waiting unless entity @a[limit=1,x=0,predicate=custom:team/blue] unless entity @a[limit=1,x=0,predicate=custom:team/yellow] run bossbar set rr:startgame value 0
execute if predicate game:phase/staging if predicate game:phase/staging/queue/waiting unless entity @a[limit=1,x=0,predicate=custom:team/blue] unless entity @a[limit=1,x=0,predicate=custom:team/yellow] run bossbar set rr:startgame color white
execute if predicate game:phase/staging if predicate game:phase/staging/queue/waiting run bossbar set rr:startgame max 30

#Countdown
execute if predicate game:phase/staging/queue/countdown if score @s count matches 1.. run tag @s add bossbarOverride
execute if predicate game:phase/staging/queue/countdown if score @s count matches ..399 run scoreboard players set @s count 400
execute if predicate game:phase/staging/queue/countdown if score @s count matches 400 run bossbar set rr:startgame name ["",{"text":"The match is starting in ","color":"green"},{"text":"10","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if predicate game:phase/staging/queue/countdown if score @s count matches 400 run bossbar set rr:startgame value 10
execute if predicate game:phase/staging/queue/countdown if score @s count matches 400 run bossbar set rr:startgame max 10
execute if predicate game:phase/staging/queue/waiting if entity @a[x=0,predicate=custom:team/blue] if entity @a[x=0,predicate=custom:team/yellow] run function game:set_phase/staging.queue.countdown
execute if predicate game:phase/staging/queue/countdown unless entity @a[x=0,predicate=custom:team/blue] run function game:restartcountdown
execute if predicate game:phase/staging/queue/countdown unless entity @a[x=0,predicate=custom:team/yellow] run function game:restartcountdown
execute if predicate game:phase/staging/queue/countdown if score @s count matches 600 run function game:start_match
