#Cancel Yellow
function game:cancelyellow

#Items
function game:gearblue
function game:saberblue

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Start Game
execute unless entity @s[tag=GameEnd] as @a[team=Blue] run tag @e[tag=Selection,tag=!GameStarted] add Countdown