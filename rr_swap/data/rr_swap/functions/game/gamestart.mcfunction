#Items
execute as @a[tag=JoinBlue] run function rr_swap:baseswap/gear
function game:saberblue

execute as @a[tag=JoinYellow] run function rr_swap:baseswap/gear
function game:saberyellow

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Countdown
execute as @s[tag=EditedSettings] if entity @a[team=Blue] if entity @a[team=Yellow] run tag @s[tag=!GameStarted] add Countdown
execute as @s[tag=EditedSettings] unless entity @a[team=Blue] run function game:restartcountdown
execute as @s[tag=EditedSettings] unless entity @a[team=Yellow] run function game:restartcountdown
execute as @s[scores={count=600},tag=!GameEnd] run scoreboard players set QuickSwap swapside 0
execute as @s[scores={count=600},tag=!GameEnd] run scoreboard players set SwapPlatformSec swapside 60
execute as @s[scores={count=600},tag=!GameEnd] run scoreboard players set SwapPlatformTick swapside 0
execute as @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted