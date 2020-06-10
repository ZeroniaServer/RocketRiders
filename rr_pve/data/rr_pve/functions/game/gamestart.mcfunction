#Cancel Yellow
function game:cancelyellow

#Items
function game:gearblue
function game:saberblue

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Start Game
execute unless entity @s[tag=GameEnd] if entity @a[team=Blue] run tag @s[tag=!GameStarted] add Countdown
execute as @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted