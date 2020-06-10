#Items
function game:gearblue
function game:saberblue

function game:gearyellow
function game:saberyellow

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Start Game
tag @a[team=Blue] add InRanked
tag @a[team=Yellow] add InRanked

execute as @a[team=Blue] run function rr_ranked:forfeit/calculate
execute as @a[team=Yellow] run function rr_ranked:forfeit/calculate

#Bossbar
tag @s[scores={count=1..}] add bossbarOverride
execute as @s[scores={count=600}] run bossbar set rr:startgame name ["",{"text":"A Ranked 1v1 match is currently in progress!","color":"dark_red"}]
execute as @s[scores={count=600}] run bossbar set rr:startgame color red
execute as @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted