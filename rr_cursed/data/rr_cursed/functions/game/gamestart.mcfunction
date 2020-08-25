#Items
execute as @a[tag=JoinBlue] run function game:givegear
function game:saberblue

execute as @a[tag=JoinYellow] run function game:givegear
function game:saberyellow

#Custom Spawns
execute as @s[tag=!GameStarted] run tp @a[tag=JoinYellow] -95 202 60 0 0
execute as @s[tag=GameStarted] run tp @a[tag=JoinYellow] 12 64 -66 0 0
execute as @s[tag=!GameStarted] run tp @a[tag=JoinBlue] -95 202 96 180 0
execute as @s[tag=GameStarted] run tp @a[tag=JoinBlue] 12 64 66 180 0
execute as @a[tag=JoinBlue] at @s run playsound entity.enderman.teleport player @s ~ ~ ~
execute as @a[tag=JoinYellow] at @s run playsound entity.enderman.teleport player @s ~ ~ ~
execute as @s[tag=Countdown,scores={count=599..}] run tp @a[team=Blue] 12 64 66 -180 0
execute as @s[tag=Countdown,scores={count=599..}] run tp @a[team=Yellow] 12 64 -66 0 0

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Countdown
execute as @s[tag=EditedSettings] if entity @a[team=Blue] if entity @a[team=Yellow] run tag @s[tag=!GameStarted] add Countdown
execute as @s[tag=EditedSettings] unless entity @a[team=Blue] run function game:restartcountdown
execute as @s[tag=EditedSettings] unless entity @a[team=Yellow] run function game:restartcountdown
execute as @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted