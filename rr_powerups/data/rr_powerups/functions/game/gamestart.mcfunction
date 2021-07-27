#Items
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinBlue] run function game:givegear
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinBlue] run function servermode:givegear
execute as @a[tag=JoinBlue] run function game:saberblue

execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinYellow] run function game:givegear
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinYellow] run function servermode:givegear
execute as @a[tag=JoinYellow] run function game:saberyellow

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Countdown
execute if entity @s[tag=EditedSettings] if entity @a[team=Blue] if entity @a[team=Yellow] run tag @s[tag=!GameStarted] add Countdown
execute if entity @s[tag=EditedSettings] unless entity @a[team=Blue] run function game:restartcountdown
execute if entity @s[tag=EditedSettings] unless entity @a[team=Yellow] run function game:restartcountdown
scoreboard players reset @s[scores={count=1..}] powerupcount
scoreboard players set @s[scores={count=1..}] PowerupDisplay 45
execute if entity @s[scores={count=1..}] run scoreboard players set @e[type=marker,tag=captureMiddle] captureYellow 0
execute if entity @s[scores={count=1..}] run scoreboard players set @e[type=marker,tag=captureMiddle] captureBlue 0
execute if entity @s[scores={count=1..}] run scoreboard players set @e[type=marker,tag=captureMiddle] capturePoint 0
execute if entity @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted