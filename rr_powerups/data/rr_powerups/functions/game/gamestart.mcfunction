#Items
execute as @a[tag=JoinBlue] run function game:givegear
function game:saberblue

execute as @a[tag=JoinYellow] run function game:givegear
function game:saberyellow

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Countdown
execute as @s[tag=EditedSettings] if entity @a[team=Blue] if entity @a[team=Yellow] run tag @s[tag=!GameStarted] add Countdown
execute as @s[tag=EditedSettings] unless entity @a[team=Blue] run function game:restartcountdown
execute as @s[tag=EditedSettings] unless entity @a[team=Yellow] run function game:restartcountdown
scoreboard players reset @s[scores={count=1..}] powerupcount
scoreboard players set @s[scores={count=1..}] PowerupDisplay 45
execute as @s[scores={count=1..}] run scoreboard players set @e[tag=captureMiddle,type=area_effect_cloud] captureYellow 0
execute as @s[scores={count=1..}] run scoreboard players set @e[tag=captureMiddle,type=area_effect_cloud] captureBlue 0
execute as @s[scores={count=1..}] run scoreboard players set @e[tag=captureMiddle,type=area_effect_cloud] capturePoint 0
execute as @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted