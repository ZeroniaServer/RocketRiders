#Items
execute as @a[tag=JoinBlue] run function game:givegear
function game:saberblue

execute as @a[tag=JoinYellow] run function game:givegear
function game:saberyellow

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Forfeit calculate
execute as @s[scores={count=600}] as @a[team=Blue] run function rr_duel:forfeit/calculate
execute as @s[scores={count=600}] as @a[team=Yellow] run function rr_duel:forfeit/calculate

#Bossbar/Scoreboard
tag @s[scores={count=1..}] add bossbarOverride
execute as @s[scores={count=600}] run team join Blue Blue:
execute as @s[scores={count=600}] run team join Yellow Yellow:
execute as @s[scores={count=600}] run bossbar set rr:startgame name ["",{"text":"A 1v1 Duel match is currently in progress!","color":"dark_red"}]
execute as @s[scores={count=600}] run bossbar set rr:startgame color red
execute as @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted