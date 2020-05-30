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

scoreboard objectives setdisplay sidebar RoundsWon

execute as @a[team=Blue] run function rr_ranked:forfeit/calculate
execute as @a[team=Yellow] run function rr_ranked:forfeit/calculate