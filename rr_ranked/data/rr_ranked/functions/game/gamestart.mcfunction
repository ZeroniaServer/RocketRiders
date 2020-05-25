#Items
function game:gearblue
function game:saberblue

function game:gearyellow
function game:saberyellow

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Start Game
scoreboard players set @s[scores={count=1..}] RandomItem -2
scoreboard players operation @s[scores={count=1..}] RandomItem += @s[scores={count=1..}] MaxItemTime

tag @a[team=Blue] add InRanked
tag @a[team=Yellow] add InRanked

execute as @a[team=Blue] run function rr_ranked:forfeit/calculate
execute as @a[team=Yellow] run function rr_ranked:forfeit/calculate