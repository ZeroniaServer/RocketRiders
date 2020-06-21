#Items
execute as @a[tag=JoinBlue] run function game:givegear
function game:saberblue

execute as @a[tag=JoinYellow] run function game:givegear
function game:saberyellow

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Countdown
tag @s[scores={count=1..}] add bossbarOverride
scoreboard players set @s[scores={count=1}] count 400
execute as @s[scores={count=400}] run bossbar set rr:startgame name ["",{"text":"The game is starting in ","color":"green"},{"text":"10","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute as @s[scores={count=400}] run bossbar set rr:startgame value 10
execute as @s[tag=EditedSettings] if entity @a[team=Blue] if entity @a[team=Yellow] run tag @s[tag=!GameStarted] add Countdown
execute as @s[tag=EditedSettings] unless entity @a[team=Blue] run function game:restartcountdown
execute as @s[tag=EditedSettings] unless entity @a[team=Yellow] run function game:restartcountdown
execute as @s[scores={count=600}] as @a[team=Blue] run function rr_duel:forfeit/calculate
execute as @s[scores={count=600}] as @a[team=Yellow] run function rr_duel:forfeit/calculate
execute as @s[scores={count=600}] run team join Blue Blue:
execute as @s[scores={count=600}] run team join Yellow Yellow:
execute as @s[scores={count=600}] run bossbar set rr:startgame name ["",{"text":"A 1v1 Duel match is currently in progress!","color":"dark_red"}]
execute as @s[scores={count=600}] run bossbar set rr:startgame color red
execute as @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted