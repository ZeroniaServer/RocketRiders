#Cancel Yellow
function game:cancelyellow

#Items
execute as @a[tag=JoinBlue] run function game:givegear
function game:saberblue

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Bossbar
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 0 run bossbar set rr:startgame name ["",{"text":"Awaiting ","color":"white"},{"text":"Blue ","color":"blue"},{"text":"players.","color":"white"}]
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 0 run bossbar set rr:startgame value 0
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 0 run bossbar set rr:startgame color white
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 1 run bossbar set rr:startgame name ["",{"text":"Awaiting more ","color":"white"},{"text":"Blue ","color":"blue"},{"text":"players.","color":"white"}]
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 1 run bossbar set rr:startgame value 15
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 1 run bossbar set rr:startgame color blue

#Countdown
execute as @s[tag=EditedSettings] if score @s bluesCount matches 2.. run tag @s[tag=!GameStarted] add Countdown
execute as @s[tag=EditedSettings] if score @s bluesCount matches 0..1 run function game:restartcountdown
execute as @s[scores={count=600},tag=!GameEnd] run team modify Blue friendlyFire true
execute as @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted