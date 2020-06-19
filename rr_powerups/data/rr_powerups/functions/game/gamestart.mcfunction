#Items
execute as @a[tag=JoinBlue] run function game:givegear
function game:saberblue

execute as @a[tag=JoinYellow] run function game:givegear
function game:saberyellow

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Start Game
execute as @s[scores={count=1}] at @e[tag=captureMiddle] run fill 6 -1 6 -6 -1 -6 air
scoreboard players reset @s[scores={count=1..}] powerupcount
scoreboard players set @s[scores={count=1..}] PowerupDisplay 45
execute as @s[scores={count=1..}] run scoreboard players set @e[tag=captureMiddle] captureYellow 0
execute as @s[scores={count=1..}] run scoreboard players set @e[tag=captureMiddle] captureBlue 0
execute as @s[scores={count=1..}] run scoreboard players set @e[tag=captureMiddle] capturePoint 0
execute as @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted