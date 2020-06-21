#Items
execute as @a[tag=JoinBlue] run function game:givegear
function game:saberblue

execute as @a[tag=JoinYellow] run function game:givegear
function game:saberyellow

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Start Game
execute as @s[tag=EditedSettings] if entity @a[team=Blue] if entity @a[team=Yellow] run tag @s[tag=!GameStarted] add Countdown
execute as @s[tag=EditedSettings] unless entity @a[team=Blue] run function game:restartcountdown
execute as @s[tag=EditedSettings] unless entity @a[team=Yellow] run function game:restartcountdown
execute as @s[scores={count=600},tag=!GameEnd] run scoreboard players set QuickSwap swapside 0
execute as @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted