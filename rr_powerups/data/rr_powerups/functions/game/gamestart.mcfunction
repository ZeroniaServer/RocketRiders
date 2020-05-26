#Items
function game:gearblue
function game:saberblue

function game:gearyellow
function game:saberyellow

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Start Game
execute as @s[scores={count=1}] at @e[tag=captureMiddle] run fill 6 -1 6 -6 -1 -6 air
scoreboard players set @s[scores={count=1..}] RandomItem -3
scoreboard players operation @s[scores={count=1..}] RandomItem += @s[scores={count=1..}] MaxItemTime
scoreboard players reset @s[scores={count=1..}] powerupcount
scoreboard players set @s[scores={count=1..}] PowerupDisplay 45
execute as @s[scores={count=1..}] run scoreboard players set @e[tag=captureMiddle] captureYellow 0
execute as @s[scores={count=1..}] run scoreboard players set @e[tag=captureMiddle] captureBlue 0
execute as @s[scores={count=1..}] run scoreboard players set @e[tag=captureMiddle] capturePoint 0