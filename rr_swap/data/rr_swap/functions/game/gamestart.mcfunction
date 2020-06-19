#Items
execute as @a[tag=JoinBlue] run function game:givegear
function game:saberblue

execute as @a[tag=JoinYellow] run function game:givegear
function game:saberyellow

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Start Game
execute as @s[scores={count=600},tag=!GameEnd] run scoreboard players set QuickSwap swapside 0
execute as @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted