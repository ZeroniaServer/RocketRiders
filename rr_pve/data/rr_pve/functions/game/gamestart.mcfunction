#Items
function game:gearblue
function game:saberblue

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Start Game
execute unless entity @s[tag=GameEnd] as @a[team=Blue] run tag @e[tag=Selection,tag=!GameStarted] add Countdown
scoreboard players set @s[scores={count=1..}] waveTimer 0